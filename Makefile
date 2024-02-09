.DEFAULT_GOAL:=help

build:
	@\
	docker image build -t resume:debug .

run-local:
	@\
	docker run \
		--rm \
		--name resume-local \
		--volume .:/home/app \
		--network host \
		resume:debug --livereload
