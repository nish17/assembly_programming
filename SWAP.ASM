dosseg
.model small
.stack 100h
.data
msg1 db 'enter value 1: $'
msg2 db 'enter value 2: $'
msg3 db 'after swapping$'
msg4 db 'value1: $'
msg5 db 'value2: $'

.code
main proc

mov ax,@data
mov ds,ax

lea dx,msg1
mov ah,09h
int 21h
mov ah,1
int 21h
push ax

mov dx,10
mov ah,2
int 21h

lea dx,msg2
mov ah,09h
int 21h
mov ah,1
int 21h
push ax

mov dx,10
mov ah,2
int 21h

lea dx,msg3
mov ah,09h
int 21h

mov dx,10
mov ah,2
int 21h

lea dx,msg4
mov ah,09h
int 21h
pop ax
mov dx,ax
mov ah,2
int 21h

mov dx,10
mov ah,2
int 21h

lea dx,msg5
mov ah,09h
int 21h
pop ax
mov dx,ax
mov ah,2
int 21h


mov ah,4ch
int 21h
main endp
end main

