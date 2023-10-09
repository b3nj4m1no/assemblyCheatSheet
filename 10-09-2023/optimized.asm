;Gasparetti

;esercizio: leggere il nome da tastiera, 
;salvarlo in celle di memoria successive,
;e andare a stamparlo

org 100h 

;copio il valore 200h nel registro BX (creo un puntatore)
mov bx,200h

;imposto il contatore del ciclo a 7 (7 sono il numero di lettere del mio nome)
mov cx,7
;inizio il loop per leggere il nome      
leggiNome: 
;leggo un carattere 
mov ah,1
int 21h  
;sposto il carattere in una cella di memoria (parto da 200h)
mov [bx],al 
;incremento il registro bx (in modo che il prossimo carattere vada alla cella 201h)
inc bx
;termino il ciclo
loop leggiNome 

;ripristino il puntatore a 200h (dove ho la prima lettera del nome)
mov bx,200h

;funzione builtin per andare a capo (0Ah: new line, 0Dh: carriage return)
mov dl,0Ah
mov ah,2
int 21h 
mov dl,0Dh
mov ah,2
int 21h

;imposto il contatore del ciclo a 7 (7 sono il numero di lettere del mio nome)
mov cx,7 
;inizio il loop per stampare il nome
stampaNome:
;preparo il registro DL con il carattere (parto dal primo)
mov dl,[bx] 
;stampo il carattere
mov ah,2
int 21h
;incremento il puntatore (cosi ad ogni iterazione stampo il carattere successivo) 
inc bx 
;termino il loop
loop stampaNome
 
;terminare il programma e torno al controllo del sistema operativo
ret