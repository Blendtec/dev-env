#!/bin/bash


git submodule update --init --recursive 
if [ ! -d "www" ]; then
	git clone git@github.com:Blendtec/residential.git www
	cp -R configs/blendtec/. www/app/Config/
	mkdir -p www/app/tmp/{cache/{models,persistent,views},logs,sessions,tests}
	chmod -R 777 www/app/tmp
	cd www
	git submodule update --init --recursive
fi
