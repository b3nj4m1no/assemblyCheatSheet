;SECONDO

;Scrivere un programma Assembly che,
;preso in input un numero, 
;stampi tanti asterischi quanto vale quel numero

org 100h    ;inizio il programma all indirizzo 100h

mov ah,1    ;leggo un numero da tastiera
int 21h     
sub al,30h  ;piccolo trick, spiego nel commento finale
mov cl,al   ;imposto le interazioni da fare pari al numero inserito dall' utente   
add al,30h
inizio:     ;inizio il loop
mov dl,al  ;inserisco nel registro l' asterisco, cosi posso stamparlo
mov ah,2    ;procedo a stampare a schermo
int 21h  
dec al
loop inizio ;termino il loop

ret         ;termino il programma e torno al controllo del sistema operativo

;spiegazione del trick

;un numero viene salvato in memoria in codice ascii, quindi 1 = 31h
;io vado a sottrarre 30h, in modo che mi rimanga il numero puro e posso usarlo per impostare il contatore