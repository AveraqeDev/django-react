DOCKER_RUN=docker-compose run app sh -c
DJANGO_RUN=python manage.py

install:
	docker-compose build

format:
	$(DOCKER_RUN) black .

lint:
	$(DOCKER_RUN) flake8 .

test:
	$(DOCKER_RUN) black . && flake8 && $(DJANGO_RUN) test

client-dev:
	$(DOCKER_RUN) npm run dev

client-build:
	$(DOCKER_RUN) npm run build

migrate:
	$(DOCKER_RUN) $(DJANGO_RUN) migrate $(ARGS)

makemigrations:
	$(DOCKER_RUN) $(DJANGO_RUN) makemigrations $(ARGS)

.PHONY: install format lint test client-dev client-build migrate makemigrations
