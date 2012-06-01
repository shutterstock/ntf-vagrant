build:
	./scripts/setup

daemon:
	node ./ntfd/example/tests.js

server:
	./ntfserver/bin/ntfserver

clean:
	vagrant destroy -f
	rm -fr ntf ntfd ntfserver puppet/modules

.PHONY: build daemon server clean
