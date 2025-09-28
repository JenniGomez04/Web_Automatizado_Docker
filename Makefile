.PHONY: up down restart logs status

up:
	./run.sh

down:
	docker-compose down

restart: down up

logs:
	docker logs -f mi_web

status:
	docker ps | grep mi_web || echo "Contenedor no está corriendo"

clean:
	docker-compose down
	docker system prune -f
