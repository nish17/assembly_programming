dosseg
.model small
.stack 100h
.data
.code
main proc

mov ah,1
int 21h
mov cx,7
L1:
add al,1
mov dl,al
mov ah,2
int 21h
loop L1



mov ah,4ch
int 21h

main endp
end main

