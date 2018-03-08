;program to multiply two integers
dosseg
.model small
.stack 100h
.data
.code
main proc
        mov bl, 11
        mov cl, 5
        mul bl, cl
        add bl, 48

        mov dl, bl
        mov ah,48
        int 21h
main endp
end main
