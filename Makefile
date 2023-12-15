install:
	@make build
	@make up
	docker compose exec backend bundle install
	docker compose exec backend bin/rails db:create
	docker compose exec backend bin/rails db:migrate

up:
	docker compose up -d

build:
	docker compose build

remake:
	@make destroy
	@make install

stop:
	docker compose stop

down:
	docker compose down --remove-orphans

down-v:
	docker compose down --remove-orphans --volumes

restart:
	@make down
	@make up

destroy:
	docker compose down --rmi all --volumes --remove-orphans

ps:
	docker compose ps

logs:
	docker compose logs

logs-watch:
	docker compose logs --follow

backend:
	docker compose exec backend bash

migrate:
	docker compose exec backend bin/rails db:migrate

rollback:
	docker compose exec backend bin/rails db:rollback

fresh:
	docker compose exec backend bin/rails db:drop db:create db:migrate

seed:
	docker compose exec backend bin/rails db:seed

console:
	docker compose exec backend bin/rails console

test:
	docker compose exec backend bin/rails test

routes:
	docker compose exec backend bin/rails routes
