# Project name (generate executable with this name)
TARGETS = hello
# Compilator
CC = clang

# Compiling flags
CFLAGS=-Wall -Wextra

# Directories
SRCDIR = ./src
INCDIR = ./include
BINDIR = ./bin

MKDIR = @mkdir -p $(BINDIR)
SOURCES = $(SRCDIR)/hello_world.c 
BINARIES = $(SOURCES:$(SRCDIR)/%.c=%)

all: $(TARGETS)

$(BINARIES): $(SOURCES) 
	$(MKDIR)
	$(CC) $(CFLAGS) -I$(INCDIR) $< -o $(BINDIR)/$@

clean:
	rm -rf $(BINDIR)

.PHONY: all clean
