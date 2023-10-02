;Gasparetti

org 100h        ;inizio il programma all indirizzo 100h

mov bx,200h     ;sono pronto per caricare il carattere all' indirizzo 200h
mov ah,1        ;leggo il carattere
int 21h
mov [199h],bx   ;lo copio nell' indirizzo precedente
mov [201h],bx   ;lo copio nell' indirizzo successivo

ret             ;termino il programma e torno al controllo del sistema operativo