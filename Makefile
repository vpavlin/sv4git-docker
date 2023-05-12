REPO = $(PWD)

release-notes:
	docker run -it --rm -v $(REPO):/opt/sv4git/repo:z -u $(shell id -u) sv4git release-notes