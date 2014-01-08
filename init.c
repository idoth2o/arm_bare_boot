volatile unsigned char * const UART0_PTR = (unsigned char *)0x0101f1000;
void display(const char *string){
    while(*string != '\0'){
        *UART0_PTR = *string;
        string++;
    }
}
void halt(){
	asm(" MCR p15, 0, r1, c7, c0, 4 \n");
}
int my_init(){
    display("Hello World!\n");
	halt();
}
