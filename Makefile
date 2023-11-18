dev-run:
	docker-compose -f docker-compose.override.yml up --build

test:
	docker-compose -f docker-compose.yml up --build --abort-on-container-exit --exit-code-from app app
