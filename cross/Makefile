HW = pc

include mk/hw/$(HW).mk

CWD = $(CURDIR)

TC = $(CWD)/$(TARGET)
GZ = $(CWD)/gz
TMP = $(CWD)/tmp
SRC = $(CWD)/src

DIRS = $(BIN) $(GZ) $(TMP) $(SRC) $(TC)

.PHONY: all
all:
	echo "make [dirs|gz]"

.PHONY: dirs
dirs:
	mkdir -p $(DIRS)
	
WGET = wget -NP gz

include mk/packages.mk

.PHONY: gz
gz:
	$(WGET) http://ftp.gnu.org/gnu/binutils/$(BINUTILS).tar.bz2
