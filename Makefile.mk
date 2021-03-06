# the compiler: gcc for C program, define as g++ for C++
CC = gcc

# compiler flags:
#  -g    adds debugging information to the executable file
#  -Wall turns on most, but not all, compiler warnings
CFLAGS  = -g -Wall

# the build target executable:
TARGET = asmtohex
DIR = src/

all: $(TARGET)

$(TARGET): $(DIR)$(TARGET).c
	$(CC) $(CFLAGS) -o $(TARGET) src/asmtohex.c src/asmtohexcore.c src/asmtohexhelper.c include/asmtohex.h

clean:
	$(RM) $(TARGET)
