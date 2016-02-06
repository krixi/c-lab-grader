
ifndef DEST
DEST=~/www/csci-112-labs/
endif

TARGETS=lab% program%

.PHONY: clean check-env

$(TARGETS): check-env
	mkdir -p $(DEST); \
	cd labs; \
	tar -czvf $@.tar.gz $@; \
	cd ..; \
	mv labs/$@.tar.gz $(DEST)

check-env:
ifndef DEST
	$(error "You must define the DEST environment variable")
endif


clean:
	rm -rf lab*_results/
	rm -rf .lab*/
	rm -rf program*_results/
	rm -rf .program*/

