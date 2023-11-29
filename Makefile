DOCKER_USERNAME=damirpilacis
DOCKER_PASSWORD=dckr_pat_c-TFitXqAzYeFJ-i5-uUbbJ_gow


dev-run:
	docker-compose -f docker-compose.override.yml up app  

test: 
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app app

image-build: 
	docker-compose -f docker-compose.yml build app

image-push: image-build
	docker login -u $(DOCKER_USERNAME) -p $(DOCKER_PASSWORD)
	docker-compose -f docker-compose.yml push app	

