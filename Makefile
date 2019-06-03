
.PHONY: build

build:
	sh build.sh $@

push: build
	sh build.sh push $@
