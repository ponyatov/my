HW = pc

include mk/hw/$(HW).mk

CWD = $(CURDIR)

TC = $(CWD)/TARGET
GZ = $(CWD)/gz
TMP = $(CWD)/tmp
SRC = $(CWD)/src

DIRS = $(BIN) $(GZ) $(TMP) $(SRC)

.PHONY: all
all:
	echo "make [dirs|gz]"

.PHONY: dirs
dirs:
	mkdir -p $(DIRS)
