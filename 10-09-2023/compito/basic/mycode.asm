;Leggi 5 caratteri dalla tastiera
;e visualizzali sullo schermo
;a partire dall'ultimo
;fino al primo (in ordine inverso)

;Inizio il programma all' indirizzo 100h
org 100h

;Imposto il registro BX come puntatore della memoria
mov bx,200h  

;Leggo un carattere da tastiera
mov ah,1                       
int 21h                        
;Il carattere va nel registro AL,pero' dovro' leggere altri caratteri,
;quindi devo salvarlo in memoria,senno' verra' sovrascritto

;Qua mi viene comodo il mio puntatore
mov [bx],al ; --> le parentesi indicano "il contenuto della cella di memoria"
;Ora incremento il puntatore per leggere il prossimo carattere   
inc bx 

;Vogliamo leggere 5 caratteri, copiamo e incolliamo!
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
;Qui non e' necessario, io lo faccio cosi stampa uno spazio
;e distanzia l'input dall'output
inc bx

;Ora in memoria abbiamo:
;200h = carattere
;201h = carattere
;202h = carattere
;203h = carattere     
;204h = carattere       

;Ora vogliamo stampare in ordine inverso
;per farlo, sfrutteremo il puntatore  

;Per stampare un carattere, dobbiamo metterlo nel registro DL
mov dl,[bx]
;Stampiamo a schermo il carattere
mov ah,2
int 21h  
;Dobbiamo invertire l'ordine, quindi decrementiamo il puntatore
dec bx

;Vogliamo stampare 5 caratteri, copiamo e incolliamo!     
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
dec bx     

;6 volte perche' avevo messo lo spazio!
mov dl,[bx]
mov ah,2
int 21h
dec bx

;Termino il programma e torno al controllo del sistema operativo
ret