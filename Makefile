IMG_ESPHOME?="ghcr.io/esphome/esphome"
FILE_ESPHOME_CONFIG?="catomator.yaml"

CMD_ESPHOME=docker run --rm -v "${PWD}":/config -it $(IMG_ESPHOME)
CMD_ESPHOME_PRIVILEGED=docker run --privileged --rm -v "${PWD}":/config -it $(IMG_ESPHOME)

.PHONY: run
compile:
	$(CMD_ESPHOME) compile $(FILE_ESPHOME_CONFIG)

.PHONY: run
run:
	$(CMD_ESPHOME_PRIVILEGED) run $(FILE_ESPHOME_CONFIG)

.PHONY: 
config:
	$(CMD_ESPHOME) config $(FILE_ESPHOME_CONFIG)