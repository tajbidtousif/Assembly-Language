.model small
.stack 100h
.data
msg1 db "Tousif $"

.code
 main proc 
    mov ax,@data
    mov ds,ax 
    
    mov ah,1
    int 21h
    mov bl,al
    sub bl,48 
    
    mov cx,0 
    mov cl,bl
     
    
    mov ah,9
    lea dx,msg1
    
    top:
    int 21h
    loop top
    