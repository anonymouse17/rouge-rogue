SOURCES = $(wildcard ./simmadome/src/*) $(wildcard ./simmadome/public/*)
OUTPUTS = $(wildcard ./simmadome/build/*)

.PHONY: run frontend

run: $(OUTPUTS)
	python3 rougerogue.py

frontend:
	(cd simmadome && npm run build)

$(OUTPUTS): $(SOURCES)
	(cd simmadome && npm run build)