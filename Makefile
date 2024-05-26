.PHONY: run
run:
	docker run --rm --privileged -v "${PWD}":/config -it ghcr.io/esphome/esphome run catomator.yaml
