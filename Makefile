check-network:
	(docker network ls | awk '{ print $2 }' | grep -q prestiti_default) || docker network create --subnet "172.25.0.1/24" -d bridge zolletta_default

start:
	docker-compose start

stop:
	docker-compose stop

shell:
	docker exec -it  zolletta-slack-url-keeper-php /bin/bash

recreate:
	docker-compose up --force-recreate --no-start

composer-install:
	docker-compose run composer install

composer-update:
	docker-compose run composer update

composer-dump-autoload:
	docker-compose run composer dump-autoload
