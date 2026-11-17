# Seven Beans — Café Website

A full-stack café website: React + Vite frontend, Express + MongoDB backend, with Firebase auth, table/food booking, and an admin dashboard.

## What I built

- **Frontend** (`7B/`) — React 19 + Vite dev server on `http://localhost:5173`
  - Landing page, home, booking, dashboard, admin dashboard
  - Firebase authentication (login / signup / reset password)
  - React Router for client-side navigation
  - AOS animations, Lucide icons, html2canvas
- **Backend** (`7B/server/`) — Express on `http://localhost:5000`
  - REST API: `/api/bookings`, `/api/settings`, `/api/auth`, `/api/admin`
  - MongoDB via Mongoose (Booking, Settings models)
  - Firebase Admin, SendGrid/Nodemailer emails, CORS, rate limiting, Helmet
- **Launcher** — `start.bat` at the repo root: double-click to start backend + frontend together

## Quick start

1. Clone the repo:
   ```bash
   git clone <your-repo-url>
   cd CAFE-SEVEN-BEANS
   ```
2. Install dependencies:
   ```bash
   cd 7B/server && npm install
   cd ../7B && npm install
   ```
3. Copy `backend/.env` (or `7B/server/.env.example`) to `7B/server/.env` and fill in `MONGO_URI`, `PORT`, Firebase, and email credentials.
4. Double-click **`start.bat`** — it opens two windows:
   - Backend: `http://localhost:5000`
   - Frontend: `http://localhost:5173`

## Project structure

```
CAFE-SEVEN-BEANS/
├── start.bat              # one-click launcher
├── 7B/                    # Vite frontend (port 5173)
│   ├── src/               # React components & pages
│   └── server/            # Express backend (port 5000)
│       ├── config/        # DB connection
│       ├── models/        # Mongoose schemas
│       └── routes/        # API routes
└── backend/, frontend/    # archived earlier builds (untouched)
```

## Tech stack

React · Vite · Express · MongoDB · Mongoose · Firebase · SendGrid/Nodemailer
