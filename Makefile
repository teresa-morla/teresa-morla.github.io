# Makefile for managing a Jekyll site with Docker

# Variables
IMAGE_NAME := teresa-morla-folch
CONTAINER_NAME := teresa-morla-folch
HOST_PORT := 4000
CONTAINER_PORT := 4000

# Export variables
export IMAGE_NAME CONTAINER_NAME HOST_PORT CONTAINER_PORT

# Build the Docker image
build:
	docker build -t $(IMAGE_NAME) .

# Run the Docker container with a health check
run:
	docker-compose up -d
	@echo "Waiting for Jekyll server to start..."
	@until curl -s http://localhost:$(HOST_PORT) > /dev/null; do \
	    echo -n "."; \
	    sleep 1; \
	done
	@echo "\nJekyll server is up and running!"


# Stop the Docker container
stop:
	docker stop $(CONTAINER_NAME)
	docker rm $(CONTAINER_NAME)


# Start an interactive shell inside the Docker container
shell:
	docker exec -it $(CONTAINER_NAME) /bin/bash
