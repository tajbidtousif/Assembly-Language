.model small
.stack 100h
.data
mes db 9
mes1 db ?

.code

mian proc
    mov ax,@data
    mov ds,ax
    
    mov ah,2
    add mes,48
    mov dl,mes
    int 21h
        
    mov ah,1
    int 21h 
    mov mes1,al 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl,mes1
    int 21h   
exit
    mov ah,4ch
    int 21h
    main endp
end main
