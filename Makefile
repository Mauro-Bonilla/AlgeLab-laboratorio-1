.PHONY: setup clean rebuild

setup:
	@mkdir -p .devcontainer
	@cp Dockerfile .devcontainer/Dockerfile
	@cp devcontainer.json .devcontainer/devcontainer.json

clean:
	@docker system prune -af

rebuild: clean setup
	@docker build --no-cache -t fastdev .