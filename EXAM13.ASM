dosseg
.model small
.stack 100h
.data
var1 db 'nimesh$'
var2 db 'solanki$'

.code
main proc

mov ax,@data
mov ds,ax
lea dx,var1
mov ah, 09h
int 21h

mov dl,32
mov ah,2
int 21h

lea dx,var2
mov ah, 09h
int 21h

mov ah,4ch
int 21h

main endp
end main
