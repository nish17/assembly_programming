dosseg
.model small
.stack 100h
.data
str1 db 100 dup('$')
str2 db 'input string is:$'
.code

main proc

mov ax,@data
mov ds,ax
mov si, offset str1
L1:
mov ah,1
int 21h
cmp al,13
je pe1
mov [si],al
inc si
jmp L1

pe1:
lea dx,str2
mov ah,09h
int 21h

mov dx,10
mov ah,2
int 21h

lea dx,str1
mov ah,09h
int 21h

mov ah,4ch
int 21h
main endp
end main
