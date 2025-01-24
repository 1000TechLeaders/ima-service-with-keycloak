# Makefile pour la gestion du projet Keycloak

SERVICE_NAME=keycloak

.PHONY: help build run stop clean

.DEFAULT_GOAL := help

build:
	docker build -t iam-service:latest .

run:
	docker compose up

stop:
	docker compose down

clean: stop
	docker compose down -v --rmi local