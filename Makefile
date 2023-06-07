REPO = $(PWD)
IMAGE = quay.io/vpavlin0/sv4git:latest

RUN_CMD = docker run -it --rm -v $(REPO):/opt/sv4git/repo:z -u $(shell id -u) $(IMAGE)

release-notes:
	$(RUN_CMD) release-notes

changelog:
	$(RUN_CMD) changelog