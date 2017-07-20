#变量为目录
BIN = ./bin
SRC = ./src
INC = ./include
OBJ = ./obj

#源文件*.c和目标文件*.o
SOURCE = $(wildcard $(SRC)/*.c)
#OBJECT = $(patsubst %.c, $(OBJ)/%.o, $(notdir $(SOURCE)))
OBJECT = $(OBJ)/A.o $(OBJ)/test.o
#目标文件
TARGET = A
BIN_TARGET = $(BIN)/$(TARGET)

CC = gcc
CFLAGS = -g -Wall -I$(INC)

#用所有中间文件生成目的文件，规则中可以用 $^替换掉 ${OBJECT}
$(BIN_TARGET):$(OBJECT)
	$(CC) -o $@ $(OBJECT)

#生成各个中间文件
$(OBJ)/%.o:$(SRC)/%.c
	$(CC) $(CFLAGS) -o $@ -c $<

.PHONY : clean
clean:
	-rm $(BIN_TARGET) $(OBJECT)
test:
	./(BIN_TARGET)