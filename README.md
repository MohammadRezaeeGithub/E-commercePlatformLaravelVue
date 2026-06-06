<div align="center">

# E-Commerce Platform — Laravel & Vue.js

**A full-stack e-commerce platform with a Laravel REST API backend, a Vue.js 3 admin dashboard, and a Blade-powered storefront — fully containerized with Docker.**

[![PHP](https://img.shields.io/badge/PHP-8.x-777BB4?style=flat-square&logo=php&logoColor=white)](https://php.net)
[![Laravel](https://img.shields.io/badge/Laravel-11.x-FF2D20?style=flat-square&logo=laravel&logoColor=white)](https://laravel.com)
[![Vue.js](https://img.shields.io/badge/Vue.js-3.x-42B883?style=flat-square&logo=vue.js&logoColor=white)](https://vuejs.org)
[![Vite](https://img.shields.io/badge/Vite-5.x-646CFF?style=flat-square&logo=vite&logoColor=white)](https://vitejs.dev)
[![Tailwind CSS](https://img.shields.io/badge/Tailwind-3.x-38BDF8?style=flat-square&logo=tailwindcss&logoColor=white)](https://tailwindcss.com)
[![Stripe](https://img.shields.io/badge/Stripe-Payment-635BFF?style=flat-square&logo=stripe&logoColor=white)](https://stripe.com)
[![MySQL](https://img.shields.io/badge/MySQL-8.0-4479A1?style=flat-square&logo=mysql&logoColor=white)](https://mysql.com)
[![Docker](https://img.shields.io/badge/Docker-Compose-2496ED?style=flat-square&logo=docker&logoColor=white)](https://docker.com)

[Features](#-features) · [Architecture](#-architecture) · [Getting Started](#-getting-started) · [Screenshots](#-screenshots)

</div>

---

## About The Project

A complete e-commerce platform built to practice full-stack development and software architecture. The project is split into two distinct applications:

- **Storefront** — a server-side rendered Laravel + Blade application for customers
- **Admin Dashboard** — a Vue.js 3 SPA (Single Page Application) for store management

Both share the same Laravel REST API backend and are orchestrated together with Docker Compose.

---

## Features

### Storefront (Laravel + Blade)
- Product listing with **search** and **sort** (Last Modified, etc.)
- Add to cart with live **cart badge** counter
- Cart management — update quantity, remove items
- User **authentication** (register / login / logout)
- **My Account** — profile details, billing & shipping address, password update
- **My Orders** — order history with status tracking
- Checkout with **Stripe** payment integration

### Admin Dashboard (Vue.js 3 SPA)
- **Dashboard** — key metrics: active customers, active products, paid orders, total income
- **Products** — full CRUD management
- **Categories** — organize product catalog
- **Orders** — view and manage customer orders
- **Customers** — customer list and details
- **Users** — user management
- **Reports** — sales reporting with date period filtering

---

## Architecture

The project is structured as two separate applications inside a single repository:

```
E-commercePlatformLaravelVue/
├── dockerfiles/
│   ├── php.dockerfile          # PHP-FPM container
│   ├── nginx.dockerfile        # Nginx web server
│   ├── frontend.dockerfile     # Vue.js build container
│   └── entrypoint.sh
├── env/
│   └── mysql.env
├── nginx/
│   └── nginx.conf
├── src/
│   ├── backend/                # Laravel REST API + Blade storefront
│   └── frontend/               # Vue.js 3 Admin SPA
│       ├── public/
│       └── src/
│           ├── assets/
│           ├── components/
│           ├── filters/
│           ├── router/         # Vue Router
│           ├── store/          # Vuex state management
│           ├── views/
│           ├── App.vue
│           ├── axios.js        # Axios HTTP client config
│           ├── constants.js
│           └── main.js
├── docker-compose.yaml
└── README.md
```

### Docker Infrastructure

| Container | Role |
|---|---|
| `backend` | PHP-FPM — Laravel application |
| `server` | Nginx — serves both backend and frontend |
| `db` | MySQL 8 database |
| `frontend` | Node.js — Vite build for Vue.js SPA |
| `composer` | Composer dependency installer |

### Frontend Tech Stack

| Technology | Purpose |
|---|---|
| Vue.js 3 | Admin SPA framework |
| Composition API | Component logic |
| Vite | Build tool & dev server |
| Vue Router | Client-side routing |
| Axios | HTTP requests to Laravel API |
| Tailwind CSS | Utility-first styling |
| PostCSS | CSS processing |

---

## Getting Started

### Prerequisites

- [Docker](https://www.docker.com/get-started) and Docker Compose installed

### Installation

**1. Clone the repository**

```bash
git clone https://github.com/MohammadRezaeeGithub/E-commercePlatformLaravelVue.git
cd E-commercePlatformLaravelVue
```

**2. Set up environment variables**

```bash
cp src/backend/.env.example src/backend/.env
```

**3. Build and start all containers**

```bash
docker compose up -d --build
```

**4. Run migrations and seed the database**

```bash
docker compose exec backend php artisan migrate:fresh --seed --force
```

**5. Access the application**

| Interface | URL |
|---|---|
| Storefront | http://localhost:8000 |
| Admin Dashboard | http://localhost:5173 |

> **No local PHP, Node.js, or Composer needed** — everything runs inside Docker.

### Demo Credentials
 
| Role | Email | Password |
|---|---|---|
| 🖥️ Admin | admin@example.com | admin123 |


### Stripe Setup

To enable payments, add your Stripe keys to `src/backend/.env`:

```env
STRIPE_KEY=pk_test_...
STRIPE_SECRET=sk_test_...
```

---


## 🛣 Roadmap

- [x] Product catalog with search & sort
- [x] Shopping cart with session storage
- [x] User authentication (register / login)
- [x] Stripe payment integration
- [x] Admin dashboard (Vue.js 3 SPA)
- [x] Order management
- [x] Email notifications on order confirmation
- [x] Product image upload


<div align="center">

Built to practice full-stack development with Laravel, Vue.js 3, and Docker.

</div>
