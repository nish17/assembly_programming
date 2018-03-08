dosseg
.model small
.stack 100h
.data
msg1 db 'equal$'
msg3 db '\n$'
msg2 db 'not equal$'
.code

main proc

mov ah,1
int 21h
mov bl,al

mov ah,1
int 21h

cmp al,bl
je L1
lea dx,msg2
mov ah,09h
int 21h

mov ah,4ch
int 21h
L1:
lea dx,msg1
mov ah,09h
int 21h

mov ah,4ch
int 21h
main endp
end main
