SRC_DIR = src
BIN_DIR = bin

CC = gcc
CFLAGS = -Wall -Wextra -Wshadow -pedantic -std=c11

.PHONY: all
all: $(BIN_DIR)/a $(BIN_DIR)/b

$(BIN_DIR)/a: $(SRC_DIR)/a.c
	$(CC) $^ $(CFLAGS) -o $@

$(BIN_DIR)/b: $(SRC_DIR)/b.c
	$(CC) $^ $(CFLAGS) -o $@

.PHONY: clean
clean:
	rm $(BIN_DIR)/* -rf
