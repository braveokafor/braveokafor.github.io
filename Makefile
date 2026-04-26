.PHONY: help server build clean submodules deploy

help:
	@echo "Available commands:"
	@echo "  make server     - Start local dev server with live reload"
	@echo "  make build     - Build production site"
	@echo "  make clean     - Remove built files"
	@echo "  make submodules - Initialize git submodules"
	@echo "  make deploy    - Build and deploy to GitHub Pages"

server:
	hugo server -D -w

build:
	hugo --gc --minify

clean:
	rm -rf public/

submodules:
	git submodule update --init --recursive

deploy: submodules build