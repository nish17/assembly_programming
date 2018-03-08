dosseg
.model small
.stack 100h
.data
var1 db 'assembly$'
var2 db ?
.code
main proc

mov ax,@data
mov ds,ax

lea dx,var1
mov ah,09h
int 21h

mov ah,4ch
int 21h

main endp
end main
