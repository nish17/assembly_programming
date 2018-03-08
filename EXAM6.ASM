dosseg
.model small
.stack 100h
.data
.code
main proc

mov bx,10
mov cx,20

add bx,cx
;add bx,48

mov dx,bx
mov ah,2
int 21h

mov ah,4ch
int 21h

main endp
end main
