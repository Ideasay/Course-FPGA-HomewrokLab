ldi acc,#ffh
stacc port
start: ldi acc,#c0h
stacc port
call dly_500ms
ldi acc,#f9h
stacc port
call dly_500ms
ldi acc,#a4h
stacc port
call dly_500ms
ldi acc,#b0h
stacc port
call dly_500ms
ldi acc,#99h
stacc port
call dly_500ms
ldi acc,#92h
stacc port
call dly_500ms
ldi acc,#82h
stacc port
call dly_500ms
ldi acc,#f8h
stacc port
call dly_500ms
ldi acc,#80h
stacc port
call dly_500ms
ldi acc,#90h
stacc port
call dly_500ms
jmp start
dly_500ms: push acc
ldi acc,#32h
dly_500ms_0: call dly_10ms
subacci #01h
jne dly_500ms_0
pop acc
ret
dly_10ms: push acc
ldi acc,#c8h	
dly_10ms_0: push acc
ldi acc,#29h
dly_50us: subacci #01h	
cmpacci #00h	
jne dly_50us
pop acc
subacci #01h
jne dly_10ms_0
pop acc
ret
END 
