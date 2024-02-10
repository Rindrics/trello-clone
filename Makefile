build: deps
	docker-compose build

create-db:
	docker-compose run web rake db:create

deps:
	docker-compose run web bundle install

up:
	docker-compose up

down:
	docker-compose down

migrate:
	docker-compose run web bin/rails db:migrate RAILS_ENV=development

