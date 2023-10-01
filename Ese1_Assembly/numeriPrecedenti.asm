;Gasparetti

;Scrivere un programma in Assembly 
;che preso in input un carattere 
;numerico da tastiera (composto da una cifra) 
;stampi tutti i numeri inferiori a quello.

org 100h  

mov ah,1    ;prendo in input un carattere
int 21h
mov cl,al   
sub cl,30h  ;levo 30h per far diventare il numero compreso tra 0 e 9
inizio:     ;inizio il loop
mov dl,al  
mov ah,2    ;porto in output il valore presente nel registro al
int 21h  
dec al  ;decremento il contatore
loop inizio ;termino il loop

ret ;termino il programma




