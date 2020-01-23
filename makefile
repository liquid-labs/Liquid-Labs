BIN = $(shell npm bin)
REFS_GEN = $(BIN)/liq-refs-gen
TSV_FILTER = $(BIN)/liq-standards-filter-abs
TSV2MD = $(BIN)/liq-tsv2md
ASSET_DIRS = $(shell find node_modules/@liquid-labs/policy-devops/tmpl -type d)

build:
	mkdir -p $@

# build/Change\ Control\ Policy\ -\ items.tmpl : node_modules/@liquid-labs/policy-devops/tmpl/policy/Change\ Control\ Policy\ -\ items.tsv build/policy-refs.yaml | build
#	npx liq-tsv2md "$<" "$@"

build/policy-refs.yaml : $(ASSET_DIRS) | build
	rm -f "$@"
	$(REFS_GEN) "$@" $^

build/policy/Change\ Control\ Standards\ -\ items.tsv : node_modules/@liquid-labs/policy-devops/tmpl/policy/Change\ Control\ Standards\ -\ items.tsv build/policy-refs.yaml settings.sh $(TSV_FILTER) | build
	rm -f "$@"
	$(TSV_FILTER) --settings=settings.sh "$<" "$@"

build/policy/Change\ Control\ Standards\ -\ items.tmpl : build/policy/Change\ Control\ Standards\ -\ items.tsv $(TSV2MD) | build
	rm -f "$@"
	$(TSV2MD) "$<" "$@"

policy/policy/Change\ Control\ Standards.md : node_modules/@liquid-labs/policy-devops/tmpl/policy/Change\ Control\ Standards.md build/policy/Change\ Control\ Standards\ -\ items.tmpl build/policy-refs.yaml
	mkdir -p $(dir $@)
	cat build/policy/Change\ Control\ Standards\ -\ items.tmpl "$<" | ./gucci --vars-file build/policy-refs.yaml > "$@" || rm "$@"

all: build/policy-refs.yaml policy/policy/Change\ Control\ Standards.md

clean:
	rm -rf build/* policy/*
