.model small
.stack 100h
.data
m db "I'm Tousif$"

.code

main proc
      mov ax,@data
      mov ds,ax
      
      mov ah,9
      mov al,m
      int 21h    
      
      exit
    mov ah,4ch
    int 21h
    main endp
end main
