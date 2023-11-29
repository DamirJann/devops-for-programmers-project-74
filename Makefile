dev-run:
	docker-compose -f docker-compose.override.yml up app  

ci: 
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app app

image-build: 
	docker-compose -f docker-compose.yml build app

image-push: image-build
	docker login -u $(DOCKER_USERNAME) -p $(DOCKER_PASSWORD)
	docker-compose -f docker-compose.yml push app	

