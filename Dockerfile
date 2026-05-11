# Stage 1: Build the Java classes
FROM openjdk:21-slim AS build

WORKDIR /app

# Copy the source code and libraries
COPY src/main/java /app/src
COPY src/main/webapp/WEB-INF/lib /app/lib

# Note: We'll download the servlet-api and mysql connector for compilation
ADD https://repo1.maven.org/maven2/javax/servlet/javax.servlet-api/3.1.0/javax.servlet-api-3.1.0.jar /app/lib/
ADD https://repo1.maven.org/maven2/com/mysql/mysql-connector-j/8.0.33/mysql-connector-j-8.0.33.jar /app/lib/

# Compile the Java files
RUN mkdir -p /app/build/classes
RUN javac -d /app/build/classes -cp "/app/lib/*" /app/src/abc/*.java

# Stage 2: Deploy to Tomcat
FROM tomcat:9.0-jdk21-temurin-jammy

# Remove default Tomcat apps
RUN rm -rf /usr/local/tomcat/webapps/ROOT \
    && rm -rf /usr/local/tomcat/webapps/docs \
    && rm -rf /usr/local/tomcat/webapps/examples

# Copy the webapp static files
COPY src/main/webapp /usr/local/tomcat/webapps/ROOT

# Copy the compiled classes from the build stage
COPY --from=build /app/build/classes /usr/local/tomcat/webapps/ROOT/WEB-INF/classes

# Add necessary libraries to Tomcat's lib folder
ADD https://repo1.maven.org/maven2/com/mysql/mysql-connector-j/8.0.33/mysql-connector-j-8.0.33.jar /usr/local/tomcat/lib/
ADD https://repo1.maven.org/maven2/javax/servlet/jstl/1.2/jstl-1.2.jar /usr/local/tomcat/lib/

# Set defaults (these will be overridden by your Render Environment Variables)
ENV DB_HOST=localhost
ENV DB_PORT=3306
ENV DB_NAME=
ENV DB_USER=
ENV DB_PASS=

EXPOSE 8080

CMD ["catalina.sh", "run"]
