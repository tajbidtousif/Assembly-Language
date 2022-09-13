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
