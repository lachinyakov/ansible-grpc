composer:
	@echo docker imega/composer

	docker run --rm \
		-v $(CURDIR):/data \
		imega/composer \
		update --ignore-platform-reqs

test:
	docker pull php
	docker run --rm \
	-w /data \
	-v $(CURDIR):/data \
	/data/vendor/bin/phpunit tests/

build_test:
	vagrant up --provision --provider=lxc
.PHONY:composer build_test
