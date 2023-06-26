IMAGE_NAME=obsidian_backup
GIT_REPO=backup_repo

all:
	docker run --mount type=bind,source="$(shell pwd)"/$(GIT_REPO),target=/app/backup_repo --env-file .env $(IMAGE_NAME)
build:
	docker build . -t $(IMAGE_NAME)
