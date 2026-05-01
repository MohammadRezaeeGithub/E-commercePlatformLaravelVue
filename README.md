# E-Commerce Platform (Laravel + Vue + Docker)

A full-stack e-commerce platform built with Laravel (backend) and Vue.js (admin panel), fully containerized using Docker.

---

## Project Structure

```
.
├── dockerfiles/
│   ├── entrypoint.sh
│   ├── frontend.dockerfile
│   ├── nginx.dockerfile
│   └── php.dockerfile
│
├── env/
│   └── mysql.env
│
├── nginx/
│   └── nginx.conf
│
├── src/
│   ├── backend/
│   └── frontend/
│
├── docker-compose.yaml
└── README.md
```

---

## Tech Stack

- Backend: Laravel (PHP 8.x)
- Frontend (Admin Panel): Vue 3 + Vite
- Web Server: Nginx
- Database: MySQL 8
- Containerization: Docker & Docker Compose
- Payment: Stripe (test mode)

---

## Architecture

The project is divided into two main parts:

- **Backend (Laravel)**
  Handles API, authentication, business logic, and database.

- **Frontend (Vue.js Admin Panel)**
  Runs separately using Vite (port 5173).

- **Customer-facing UI**
  Served directly by Laravel (Blade templates).

---

## Prerequisites

Make sure you have installed:

- Docker
- Docker Compose

---

## Installation & Setup

### 1. Clone the repository

```bash
git clone <your-repo-url>
cd <project-folder>
```

---

### 2. Setup Laravel environment

```bash
cp src/backend/.env.example src/backend/.env
```

---

### 3. Build and start containers

```bash
docker compose up -d --build
```

---

### 4. Run migrations and seed database

```bash
docker compose exec backend php artisan migrate:fresh --seed --force
```

---

## Access URLs

| Service               | URL                   |
| --------------------- | --------------------- |
| Laravel (Frontend UI) | http://localhost:8000 |
| Vue Admin Panel       | http://localhost:5173 |
| MySQL                 | localhost:3306        |

---

## Default Credentials

Email: [admin@example.com](mailto:admin@example.com)
Password: admin123

---

## Payment (Stripe)

- Implemented using Stripe (test mode)
- No real transactions are processed

---

## Common Commands

```bash
# Stop containers
docker compose down

# Rebuild everything
docker compose down -v
docker compose up -d --build

# Access backend container
docker compose exec backend sh
```

---

## Author

Mohammad Rezaee
