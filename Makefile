
args = `arg="$(filter-out $@,$(MAKECMDGOALS))" && echo $${arg:-${1}}`


build:
	bash build create $(args)

push:
	bash build push  $(args)


.PHONY: build
