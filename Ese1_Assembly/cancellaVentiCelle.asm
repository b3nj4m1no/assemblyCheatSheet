;Gasparetti

;A partire dalla cella di memoria 150h
;scrivere un programma che cancella le 
;successive 20 celle

org 150h    ;inizio il programma all indirizzo 150h  

mov cx,20   ;imposto le interazioni da fare a 20
inizio:     ;inizio il loop
mov [bx],0h ;l' azione nel loop č cancellare una cella impostando il suo valore a 0
loop inizio ;termino il loop 

ret         ;termino il programma e torno al controllo del sistema operativo




