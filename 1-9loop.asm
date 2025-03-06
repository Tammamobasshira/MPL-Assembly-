.model small
.stack 100h
.data

a db 'loop concept  $'

.code      

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov cx,10
    mov ah,2
    mov dl,0 
    add dl ,48
    
    
    level1:
    int 21h
    inc dl
    loop level1
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main