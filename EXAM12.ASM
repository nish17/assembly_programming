dosseg
.model small
.stack 100h
.data
var1 db 'nimesh$'
.code

main proc
;mov ax,@data
;mov ds,ax

mov cx,10
mov dx,57

L1:
mov ah,2
int 21h
dec dx

loop L1

mov ax,@data
mov ds,ax
lea dx,var1
mov ah,09h
int 21h
mov ah,4ch
int 21h
main endp
end main

