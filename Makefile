# プログラム名とオブジェクトファイル名
LM = output.bin
PROGRAM = output.elf
OBJS = init.o startup.o

# 定義済みマクロの再定義
CROSS = arm-linux-gnueabi-
AS = $(CROSS)as
CC = $(CROSS)gcc
OBJ_COPY = $(CROSS)objcopy
#CFLAGS = -mcpu=arm926ej-s
CFLAGS = -marm
LD = $(CROSS)ld
LDFLAGS = -T linker.ld

# サフィックスルール適用対象の拡張子の定義
.SUFFIXES: .c .o

# プライマリターゲット
$(LM): $(PROGRAM)
	$(OBJ_COPY) -O binary $(PROGRAM) $(LM)

$(PROGRAM): $(OBJS)
	$(LD) $(LDFLAGS) -o $(PROGRAM) $^

# サフィックスルール
.c.o:
	$(CC) $(CFLAGS) -c $<

#.s.o:
#    $(AS) $(CFLAGS) $<

# ファイル削除用ターゲット
.PHONY: clean
clean:
	$(RM) $(LM) $(PROGRAM) $(OBJS)
