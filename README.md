# 💎 Premium User Management MIS
🚀 **A professional, high-performance User Management System built with Advanced Java.**

---

[![Live Demo](https://img.shields.io/badge/Live%20Demo-Visit%20Site-7c3aed?style=for-the-badge&logo=render&logoColor=white)](https://premium-user-management-mis.onrender.com)

## 🚀 Overview
**Premium User Management MIS** is a full-stack Java web application designed to manage user records with a focus on **UI/UX excellence** and **secure backend architecture**.

Instead of a basic table, users interact with a **Glassmorphism-styled dashboard** that is responsive and production-ready.

---

## ✨ Features
- 🌑 **Premium Dark UI** – Sleek, modern design with glassmorphism effects
- ⚡ **Full CRUD Operations** – Create, View, Update, and Delete users seamlessly
- 🔐 **Secure Architecture** – Zero hardcoded credentials; uses Environment Variables
- 🐳 **Dockerized** – Multi-stage Docker build for professional cloud deployment
- 📊 **Dynamic Data Handling** – Real-time database updates using JDBC
- 📱 **Mobile Responsive** – Fully optimized for all screen sizes

---

## 🛠️ Tech Stack
| Layer | Technology |
| :--- | :--- |
| **Backend** | Java (Servlets & JSP) |
| **Frontend** | HTML5, CSS3 (Vanilla), JavaScript |
| **Database** | MySQL |
| **Server** | Apache Tomcat 9.0+ |
| **Deployment** | Docker, Render |

---

## 🔗 Live Links
🌐 **Website Link:** [https://premium-user-management-mis.onrender.com](https://premium-user-management-mis.onrender.com)

---

## 📂 Project Structure
```text
User-MIS/
│
├── src/main/java/abc/
│   ├── User.java          (POJO Class)
│   └── UserDao.java       (Database Logic)
│
├── src/main/webapp/
│   ├── index.jsp          (Home Page)
│   ├── viewusers.jsp      (User List Dashboard)
│   ├── adduserform.jsp    (Registration Page)
│   ├── editform.jsp       (Update Page)
│   ├── style.css          (Global Premium Styles)
│   └── WEB-INF/web.xml    (Servlet Mapping)
│
└── Dockerfile             (Multi-stage Build Config)
```

---

## ⚙️ Local Setup (Simple Steps)

1. **Clone the project**
2. **Setup MySQL Table**:
   ```sql
   CREATE TABLE register (
     id INT PRIMARY KEY,
     name VARCHAR(100),
     password VARCHAR(100),
     email VARCHAR(100),
     country VARCHAR(100)
   );
   ```
3. **Configure Environment Variables**:
   Set `DB_HOST`, `DB_PORT`, `DB_NAME`, `DB_USER`, and `DB_PASS` on your machine.
4. **Deploy**:
   Run on **Apache Tomcat 9.0** via your IDE.

---

## 💡 How It Works
1. **User enters data** on the premium Glassmorphism form.
2. **Servlet processes input** and communicates with `UserDao`.
3. **UserDao uses Environment Variables** to connect securely to MySQL.
4. **Data is stored** and the dashboard updates instantly.

---

## 🚀 Future Improvements
- 📊 **User Analytics** - Visual charts for user distribution.
- 🔐 **JWT Authentication** - For advanced security.
- 📧 **Email Notifications** - Automated welcome emails.

---

<p align="center">
  If you like this project, give it a ⭐ on GitHub!
</p>
