dosseg
.model small
.stack 100h
.data
str1 db 'Hello$'
str2 db 'I am Nimesh Solanki$'
str3 db 'Stay away!$'
.code

main proc
mov ax,@data
mov ds,ax

lea dx,str1
;mov ah,09h
;int 21h
call enterk

lea dx,str2
;mov ah,09h
;int 21h
call enterk

lea dx,str3
;mov ah,09h
;int 21h
call enterk
mov ah,4ch
int 21h
main endp

enterk proc
mov ah,09h
int 21h
mov dx,10
mov ah,2
int 21h

mov dx,13
mov ah,2
int 21

ret
enterk endp
end main
