MODULES := hello_world/ netitf/
#MODULES :=  $(wildcard */.)
TOPTARGETS := all clean

all: $(MODULES)

$(TOPTARGETS): $(MODULES)
$(MODULES):
	$(MAKE) -C $@ $(MAKECMDGOALS)

.PHONY: $(TOPTARGETS) $(MODULES)
