.model small
.stack 100h
.data

    msg1 DB 'enter a lower case letter : $'
    msg2 DB 'The Upper of this letter is : $'
    
.code
main proc
    
    mov AX,@DATA
    mov DS,AX
    
    ;print msg1
    lea DX,msg1
    mov ah,09h
    int 21h
    
    ;take input
    mov ah,1
    int 21h
    mov BL,AL
    
    ;print new line
    mov ah,2
    mov DL,0AH
    int 21h
    mov DL,0DH
    int 21h
    
    ;print msg 2 
    lea DX,msg2
    mov ah,09h
    int 21h
    
    ;print output
    mov ah,2
    SUB BL,32
    mov DL,BL
    int 21h
    
    mov ah,4ch
    int 21h
    end main
main endp
    
