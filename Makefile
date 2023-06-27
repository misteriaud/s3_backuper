IMAGE_NAME=s3_backuper
GIT_REPO=backup_repo

all:
	docker run --mount type=bind,source="$(shell pwd)"/$(GIT_REPO),target=/app/backup_repo \
	--mount type=bind,source=${SSH_AUTH_SOCK},target=/ssh-agent \
	--env-file .env $(IMAGE_NAME)

build:
	# pip3 freeze > requirements.txt
	docker build . -t $(IMAGE_NAME)
