REPO = $(PWD)
IMAGE = quay.io/vpavlin0/sv4git:latest

release-notes:
	docker run -it --rm -v $(REPO):/opt/sv4git/repo:z -u $(shell id -u) $(IMAGE) release-notes