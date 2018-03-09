print macro p1
lea dx,p1
mov ah,09h
int 21h
call enterk
endm

.model small
.stack 100h
.data
str1 db 'hello$'
str2 db 'stay hungry, stay foolish$'
str3 db 'never give up$'
.code
main proc
mov ax,@data
mov ds,ax
print str1
print str2
print str3

mov ah,4ch
int 21h
main endp
enterk proc

mov dx,10
mov ah,2
int 21h

mov dx,13
mov ah,2
int 21h

ret
enterk endp
end main
