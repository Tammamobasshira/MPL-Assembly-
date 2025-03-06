;write an assemply program to lower case to upper case
.model small
.stack 100h
.data

a db 'lower form $'
b db 'Upper form $'
.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9  ;print to string display
    lea dx,a ;Load effective address
    int 21h  ;use to call function
    
    mov ah,1  ;use to input value
    int 21h
    mov bl,al
    
    mov ah,2  ;use to display output
    mov dl,10 ;use display newline
    int 21h 
    mov dl,13
    int 21h
    
    mov ah,9
    lea dx,b    ;use to second variable string store to dx
    int 21h    
    
    mov ah,2  
    sub bl,32  ;sbtraction lower aschii value to upper case aschii valu like a(97-32=65)
    mov dl,bl 
    int 21h 
    
    exit:
    mov ah,4ch
    int 21h
    
    main endp
end main
    
    
    
    