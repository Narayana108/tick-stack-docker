SHELL := /bin/bash

all: build

bash:
	@bash scripts/ssh-or-conf_gen.sh influxdb

pull:
	@bash scripts/pull.sh

build:
	@bash scripts/build.sh
