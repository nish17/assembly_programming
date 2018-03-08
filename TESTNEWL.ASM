dosseg
.model small
.stack 100h
.data
msg1 db '\n $'
.code
main proc
mov ax,@data
mov ds,ax

lea dx,msg1
mov ah,09h
int 21h

mov ah,4ch
int 21h
main endp
end main
