;write an assemply language program to display all alphabatic charecter.   
.model small
.stack

.code

main proc
    mov cx,26 
    mov dx,65   ;ascii code A=65 AND  Z=90
    
    test:
        mov ah,2
        int 21h 
        inc dx 
        loop test
        
 main endp  
end main
        