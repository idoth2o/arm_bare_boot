.global _Start
_Start:
LDR sp, = sp_top
BL my_init
B .
