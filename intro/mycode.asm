;Gasparetti

;CheatSheet for Assembly x80-86

;iniziare il programma dalla cella di memoria 100h
org 100h

;prendere un carattere da tastiera
mov ah,1
int 21h

;copiare il carattere preso nel registro bl
mov bl,al

;copiare il carattere preso in memoria
mov [200h],al

;in caso fosse un numero, viene codificato in ASCII, quindi 1=31h
;trick abbastanza furbo, 
;levare 30h al registro per ottenere veramente il numero
sub al,30h
mov [201h],al

;incrementare il valore presente nella cella di memoria 201h
inc [201h]

;stampare a schermo un carattere
mov dl, 'M' ;spostiamo in dl (data register) il carattere che vogliamo stampare
mov ah,2    ;stampiamo
int 21h

mov bl,31h ;imposto come valore del registro BL 31h (il numero 1 codificato in ASCII)

mov cx,10 ;imposto il contatore del loop a 10 iterazioni
stampaNumeri: ;inizio il loop
 mov dl,bl ;copio il contenuto di BL in DL (preparo DL per andare a stampare)
 mov ah,2 ;stampo il carattere
 int 21h
 inc bl ;ad ogni iterazione incremento BL
 ;questo loop stamperà 123456789
loop stampaNumeri ;termino il loop
 
;terminare il programma e torno al controllo del sistema operativo
ret 
