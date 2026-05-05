# Use Tomcat 9 with JDK 17
FROM tomcat:9.0-jdk17-openjdk-slim

# Maintainer Info
LABEL maintainer="User MIS"

# Remove default Tomcat apps to keep it clean
RUN rm -rf /usr/local/tomcat/webapps/ROOT
RUN rm -rf /usr/local/tomcat/webapps/docs
RUN rm -rf /usr/local/tomcat/webapps/examples

# Copy the web application content
# We deploy it as the ROOT application so it's accessible at /
COPY src/main/webapp /usr/local/tomcat/webapps/ROOT

# Copy compiled Java classes
COPY build/classes /usr/local/tomcat/webapps/ROOT/WEB-INF/classes

# Download and add MySQL Connector and JSTL (to ensure they are present in production)
ADD https://repo1.maven.org/maven2/com/mysql/mysql-connector-j/8.0.33/mysql-connector-j-8.0.33.jar /usr/local/tomcat/lib/
ADD https://repo1.maven.org/maven2/javax/servlet/jstl/1.2/jstl-1.2.jar /usr/local/tomcat/lib/

# Set Environment Variables for Database (to be overridden by the hosting provider)
ENV DB_HOST=localhost
ENV DB_PORT=3306
ENV DB_NAME=test
ENV DB_USER=root
ENV DB_PASS=aryan

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
