.Phony: start

start: docker-image
	@docker/docker-run.sh ghci 

docker-image:
	@docker/build-docker-image.sh