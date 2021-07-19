.PHONY: gcloud, godev, laravel-alpine, php-builder, r-base

gcloud:
	docker build -t kylegferg/gcloud -f ./gcloud/Dockerfile ./gcloud

godev:
	docker build -t kylegferg/godev -f ./godev/Dockerfile ./godev

laravel-alpine:
	docker build -t kylegferg/laravel-alpine -f ./laravel-alpine/Dockerfile ./laravel-alpine

php-builder:
	docker build -t kylegferg/phpbuilder -f ./php-builder/Dockerfile ./php-builder

r-base:
	docker build -t kylegferg/r-base -f ./r-base/Dockerfile ./r-base