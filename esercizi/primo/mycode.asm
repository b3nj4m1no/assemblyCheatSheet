;Scrivere un programma che
;carichi nella cella di memoria 
;di indirizzo 200h un numero e, successivamente
;lo copi nella cella di memoria precedente e in quella successiva.   

org 100h

;Uso BX come puntatore della memoria
mov bx,200h                             
;Uso CX come registro contenente 
;il numero da caricare nella cella di memoria
mov cx,5

;Copio 5 dentro la cella di memoria 200h
mov [bx],cx

;Incremento il contatore
inc bx                  
;Copio 5 dentro la cella di memoria 201h
mov [bx],cx

;Decremento di due il contatore
sub bx,2                       
;Copio 5 dentro la cella di memoria 199h
mov [bx],cx

ret