install:
	cd backend && pip install -r requirements.txt
	cd frontend && npm install

backend:
	cd backend && uvicorn app.main:app --reload

frontend:
	cd frontend && npm run dev

migrate:
	cd backend && alembic upgrade head

test:
	cd backend && pytest -q

docker-up:
	docker compose up --build

docker-down:
	docker compose down
