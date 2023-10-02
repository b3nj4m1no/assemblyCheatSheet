;Gasparetti 

;Scrivere un programma assembly che 
;stampi sullo schermo i numeri da zero a nove. 

org 100h    ;inizio il programma all indirizzo 100h

mov bl,30h  ;carico in bl il numero 0
mov cx,0ah  ;imposto il contatore a 10
inizio:     ;inizio il loop
mov dl,bl   ;copio il contenuto di bl in dl per stamparlo a schermo
mov ah,2    ;stampo a schermo
int 21h 
inc bl      ;incremento bl
loop inizio ;termino il loop

ret         ;termino il programma e torno al controllo del sistema operativo