;Write an assembly language program to calculate the factorial of an interger number
   

   
.model small
.stack 100h
.data 

.code
main proc
    
    mov cx,2
    mov ax,1
    
    top:
    mul cx
    loop top
    
    mov dx,ax
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h

