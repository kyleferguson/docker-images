.PHONY: r-base

r-base:
	docker build -t kylegferg/r-base -f ./r-base/Dockerfile ./r-base