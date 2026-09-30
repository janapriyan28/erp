run th# Inventory ERP

Full-stack Inventory ERP built with FastAPI, PostgreSQL, SQLAlchemy, Alembic, Next.js, TypeScript and Tailwind-style CSS utilities.

## Modules
- Item master
- Warehouse master
- Stock In
- Stock Out
- Current stock
- Low-stock alerts
- CSV export
- REST API with Swagger/OpenAPI
- PostgreSQL persistence
- Docker Compose
- Pytest backend tests

## Quick start with Docker

```bash
cp .env.example .env
docker compose up --build
```

Frontend: http://localhost:3000  
Backend API: http://localhost:8000  
Swagger: http://localhost:8000/docs

## Local development

### Backend
```bash
cd backend
python -m venv .venv
# Windows: .venv\Scripts\activate
# Linux/macOS: source .venv/bin/activate
pip install -r requirements.txt
alembic upgrade head
uvicorn app.main:app --reload
```

### Frontend
```bash
cd frontend
npm install
npm run dev
```

Set `NEXT_PUBLIC_API_URL=http://localhost:8000/api` in `frontend/.env.local`.
