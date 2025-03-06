;write an assemply language program to display all lower case charecter.   
.model small
.stack

.code

main proc
    mov cx,26 ;
    mov dx,97 ;
    
    test:
        mov ah,2
        int 21h 
        inc dx 
        loop test
        
 main endp  
end main
        