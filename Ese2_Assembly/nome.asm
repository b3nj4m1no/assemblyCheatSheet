;Gasparetti 

;Scrivere un programma che
;letto il tuo nome, lo salva
;in memoria in celle successive

org 100h    ;inizio il programma all indirizzo 100h
mov cx,7    ;imposto le iterazione di fare a 7 (numero di lettere del mio nome)
mov bx,200h ;bho
inizio:     ;inizio il loop
mov ah,1    ;mov ah,1 ed int 21h insieme leggono da tastiera
int 21h
mov [bx],al ;qui salvo il registro in cui ho il carattere in una cella di memoria
inc bx      ;qui incremento il registro in modo che il prossimo carattere lo salvi nella cella successiva
loop inizio ;termino il loop

ret         ;termino il programma e torno al controllo del sistema operativo