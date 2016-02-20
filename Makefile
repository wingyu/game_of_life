PROJECT	= game-of-life
TAG = 1.0
.PHONY: build, run, test

build:
	docker build --rm -t $(PROJECT):$(TAG) .

run:
	docker run --rm -it $(PROJECT):$(TAG)

test:
	docker run --rm -t $(PROJECT):$(TAG) rspec spec
