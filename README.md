# OpenCart 2.3 in Docker

This repository contains a setup for **quickly deploying OpenCart 2.3** in Docker.  
Perfect for **local testing** or **development**.

---

## 📋 Requirements

- [Docker](https://www.docker.com/) installed on your system
- [Docker Compose](https://docs.docker.com/compose/) installed

---

## 🚀 Installation & Launch

### Clone the repository
```bash
git clone git@github.com:legobpc/opencart-2-docker-kit.git
cd opencart-2-docker-kit
```

### Start the containers
```bash
docker-compose up -d --build
```

### 🛠 OpenCart Installation
During the OpenCart installation wizard, Step 3 (Database configuration), use:

```bash
Hostname: opencart-2-docker-kit-db-1
Password: root

Admin:
 Username: admin
 Password: admin
 Email: admin@example.com
```

### 🌐 Access OpenCart

```bash
Frontend: http://localhost:8080
Admin Panel: http://localhost:8080/admin

Admin login credentials:
  Username: admin
  Password: admin
```

### 📂 Project structure
```bash
opencart2-docker/
│── docker-compose.yml   # Container configuration
│── Dockerfile           # Web server with OpenCart configuration
│── data/                # Database volume
│── html/                # OpenCart files
└── README.md            # This file
```

### 🛠 Notes
You can change the ports in docker-compose.yml if 8080 is already in use.

A Docker volume is used to persist database data between restarts.