dosseg
.model small
.stack 100h
.data
arr1 db 6 dup('ir')
.code
main proc
mov ax,@data
mov ds,ax

mov si, offset arr1
mov cx,6
mov dx,[si]
L1:

mov ah,2
int 21h
inc si

loop L1
mov ah,4ch
int 21h
main endp
end main
