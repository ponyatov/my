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
	echo "make [dirs|gz|binutils|postclean]"
	
.PHONY: postclean
postclean:
	rm -rf $(SRC) $(TMP)

.PHONY: dirs
dirs:
	mkdir -p $(DIRS)
	
WGET = wget -NP gz

include mk/packages.mk

.PHONY: gz
gz:
	$(WGET) http://ftp.gnu.org/gnu/binutils/$(BINUTILS).tar.bz2
	
# rules for src unpacking
$(SRC)/%/README: $(GZ)/%.tar.bz2
	cd $(SRC) && bzcat $< | tar x && touch $@

MAKE = make -j4
CFG = configure --disable-nls --disable-werror --prefix=$(TC)

CFG_BINUTILS = --target=$(TARGET)
.PHONY: binutils
binutils: $(SRC)/$(BINUTILS)/README
	rm -rf $(TMP)/$(BINUTILS) && mkdir $(TMP)/$(BINUTILS) &&\
	cd $(TMP)/$(BINUTILS) && $(SRC)/$(BINUTILS)/$(CFG) $(CFG_BINUTILS) && make
#	make && make install-strip