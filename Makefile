build:
	./scripts/setup

ntfd:
	node ./ntfd/example/tests.js

ntfserver:
	./ntfserver/bin/ntfserver

clean:
	vagrant destroy -f
	rm -fr ntf ntfd ntfserver puppet/modules

.PHONY: build ntfd ntfserver clean
