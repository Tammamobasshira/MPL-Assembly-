;Write an assembly language program to accept string from the keyboard and
;display the string in reverse order

.model small
.stack 100h
.data
    array db 100 dup('$')
.code

main proc
   mov ax,@data
   mov ds,ax
   mov bl,0
   mov si,offset array
   
   l1:
   mov ah,1
   int 21h
   cmp al,13
   je s1
   mov [si],al
   inc si
   inc bl
   jmp l1
   
   s1:
   mov cl,bl 
   
   p1:
   
   dec si
   mov dx,[si]
   mov ah,2
   int 21h  
   
   loop p1
   
   mov ah,4ch  
   int 21h 
   
main endp
end main