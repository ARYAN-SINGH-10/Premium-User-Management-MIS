# Premium User Management MIS 🚀

A modern, sleek, and high-performance User Management Information System built with **Advanced Java (Servlets/JSP)** and styled with premium **Vanilla CSS (Glassmorphism)**.

## ✨ Features
- **Modern UI**: Dark-themed, responsive dashboard with glassmorphism effects.
- **CRUD Operations**: Full Create, Read, Update, and Delete functionality for user records.
- **Secure Architecture**: Environment-based database configuration for safe deployment.
- **Database Integration**: Seamless connection with MySQL using JDBC.

## 🛠️ Tech Stack
- **Backend**: Java Servlets, JSP
- **Frontend**: Vanilla CSS, HTML5
- **Database**: MySQL
- **Server**: Apache Tomcat 9.0+

## 🚀 How to Run Locally

### Prerequisites
- JDK 17 or higher
- Apache Tomcat 9.0
- MySQL Server

### Steps
1. **Database Setup**:
   - Create a database named `test`.
   - Create a table named `register`:
     ```sql
     CREATE TABLE register (
       id INT PRIMARY KEY,
       name VARCHAR(100),
       password VARCHAR(100),
       email VARCHAR(100),
       country VARCHAR(100)
     );
     ```
2. **Compile**:
   - Compile the Java files in `src/main/java/abc/` and place the classes in `WEB-INF/classes`.
3. **Deploy**:
   - Copy the `src/main/webapp` folder to your Tomcat `webapps` directory and rename it to `User_MIS`.
4. **Access**:
   - Visit `http://localhost:8080/User_MIS/`.

## ☁️ Deployment

This project is deployment-ready via **Docker**. You can deploy it to platforms like **Render**, **Railway**, or **AWS** using the included `Dockerfile`.

### Environment Variables
When deploying, set the following environment variables:
- `DB_HOST`: Your database host URL
- `DB_PORT`: Database port (usually 3306)
- `DB_NAME`: Database name
- `DB_USER`: Database username
- `DB_PASS`: Database password

---
Built with ❤️ for the Advanced Java Community.
