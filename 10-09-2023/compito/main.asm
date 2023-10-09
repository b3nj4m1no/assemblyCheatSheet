;Gasparetti  

;compito: 
;leggere 5 caratteri da tastiera
;memorizzarli in celle di memoria successive
;e stamparli a schermo 

;inizio il programma all indirizzo 100h
org 100h

;sposto il valore 200h nel registro BX 
;(lo usero' come puntatore della memoria)
mov bx,200h   

;leggo un carattere da tastiera
mov ah,1
int 21h

;il carattere viene salvato nel registro AL
;noi pero' vogliamo salvarlo in memoria...
mov [bx],al ;sposto il carattere in bx (quindi il contenuto della cella 200h)  
inc bx ;incremento il puntatore cosi il prossimo carattere
       ;verra' salvato nella cella di memoria successiva  

;dobbiamo leggere 5 caratteri...
;copia e incolla 4 volte    
mov ah,1
int 21h 
mov [bx],al
inc bx   

mov ah,1
int 21h 
mov [bx],al
inc bx

mov ah,1
int 21h 
mov [bx],al
inc bx

mov ah,1
int 21h 
mov [bx],al        
;qua non serve incrementare bx, non dobbiamo leggere piu' caratteri ! 

;in caso si voglia staccare input da output decommentare queste righe sotto
;inc bx  

;mov dl,[bx]
;mov ah,2
;int 21h
;dec bx 

;ora abbiamo letto da tastiera e abbiamo salvato i caratteri in memoria...
;dobbiamo stamparli al contrario !

;per poter stampare a schermo dobbiamo preparare il registro DL
;copiando il carattere che vogliamo stampare al suo interno
mov dl,[bx]
;stampo il carattere a schermo
mov ah,2
int 21h
;essendo che devo invertire l'ordine dei caratteri,
;al posto di incrementare il puntatore, lo decremento
dec bx 

;dobbiamo stampare a schermo 5 caratteri...
;copia e incolla 4 volte   

mov dl,[bx]
mov ah,2
int 21h
dec bx

mov dl,[bx]
mov ah,2
int 21h
dec bx  

mov dl,[bx]
mov ah,2
int 21h
dec bx 

mov dl,[bx]
mov ah,2
int 21h
;qua non serve decrementare bx, non dobbiamo stampare piu' caratteri !  

;termino il programma e torno al controllo del sistema operativo
ret