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

MAKE = make -j4
CFG = configure --prefix=$(TC)

CFG_BINUTILS = --target=$(TARGET)
.PHONY: binutils
binutils: $(SRC)/$(BINUTILS)/README
	rm -rf $(TMP)/$(BINUTILS) && mkdir $(TMP)/$(BINUTILS) &&\
	cd $(TMP)/$(BINUTILS) && echo $(SRC)/$(BINUTILS)/$(CFG) $(CFG_BINUTILS)