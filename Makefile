include Makefile.version

envout:
	@echo "VERSION=$(VERSION)"
	@echo "BUILDARG_VERSION=$(BUILDARG_VERSION)"
	@echo "IMAGENAME=$(IMAGENAME)"
	@echo "BUILDARG_PLATFORM=$(BUILDARG_PLATFORM)"

build:
	docker buildx build $(BUILDARG_VERSION) $(BUILDARG_PLATFORM) -t $(IMAGENAME):latest .
	docker buildx build $(BUILDARG_VERSION) --load -t $(IMAGENAME):latest .

install:
	sudo docker-compose up -d