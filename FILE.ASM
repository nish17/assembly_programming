dosseg
.model small
.stack 100h
.data
.code
main proc
        ;mov dl, 'n'
        mov ah, 1
        ;mov ah,2
        int 21h

        mov dl,10
        mov ah,2
        int 21h
        mov dl,13
        mov ah,2
        int 21h

        mov dl,al
        mov ah,2
        int 21h



        ;mov dl, 'i'
        ;mov ah, 2
        ;int 21h

        ;mov dl, 's'
        ;mov ah, 2
        ;int 21h

        ;mov dl, 'h'
        ;mov ah, 2
        ;int 21h

        mov ah,4ch
        int 21h
main endp
end main
