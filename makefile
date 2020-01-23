BIN = $(shell npm bin)
REFS_GEN = $(BIN)/liq-refs-gen
TSV_FILTER = $(BIN)/liq-standards-filter-abs
TSV2MD = $(BIN)/liq-tsv2md
ASSET_DIRS = $(shell find node_modules/@liquid-labs -path "*/policy-*/policy/*" -type d)

default: all

build:
	mkdir -p $@

build/change_control/standards/policy-refs.yaml : $(ASSET_DIRS) $(REFS_GEN) | build
	rm -f "$@"
	mkdir -p $(dir $@)
	$(REFS_GEN) "$@" '@liquid-labs/policy-devops' 'change_control/standards' $(ASSET_DIRS)

build/change_control/standards/Change\ Control\ Standards\ -\ items.tsv : node_modules/@liquid-labs/policy-devops/policy/change_control/standards/Change\ Control\ Standards\ -\ items.tsv settings.sh $(TSV_FILTER) | build
	rm -f "$@"
	$(TSV_FILTER) --settings=settings.sh "$<" "$@"

build/change_control/standards/Change\ Control\ Standards\ -\ items.tmpl : build/change_control/standards/Change\ Control\ Standards\ -\ items.tsv $(TSV2MD) | build
	rm -f "$@"
	$(TSV2MD) "$<" "$@"

policy/change_control/standards/Change\ Control\ Standards.md : node_modules/@liquid-labs/policy-devops/policy/change_control/standards/Change\ Control\ Standards.md build/change_control/standards/Change\ Control\ Standards\ -\ items.tmpl build/change_control/standards/policy-refs.yaml
	mkdir -p $(dir $@)
	cat build/change_control/standards/Change\ Control\ Standards\ -\ items.tmpl "$<" | ./gucci --vars-file build/change_control/standards/policy-refs.yaml > "$@" || rm "$@"

all: policy/change_control/standards/Change\ Control\ Standards.md

clean:
	rm -rf build/* policy/*
