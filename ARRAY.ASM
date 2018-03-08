dosseg
.model small
.stack 100h
.data
ar1 db 3 dup('1')
.code
main proc
mov ax,@data
mov ds,ax
mov cx,3
mov si,offset ar1
mov dx,[si]
L1:
mov ah,2
int 21h
inc si

loop L1

mov ah,4ch
int 21h

;main proc
main endp
end main
