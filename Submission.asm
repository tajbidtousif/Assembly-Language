.model small
.stack 100h
.data

m db "Enter the first value : $ " 
m2 db "Enter the second value : $ " 
m3 db "The Result is : $ "
.code
    main proc
        mov ax, @data
        mov ds,ax

        mov ah,9
        lea dx,m
        int 21h
        
        mov ah,1
        int 21h
        mov bl,al 
        
        mov ah,2
        int 21h
        mov dl,010
        int 21h
        mov dl,013
        int 21h
        
         mov ah,9
        lea dx,m2
        int 21h
        
        mov ah,1
        int 21h
        mov bh,al
        
        
        mov ah,2
        int 21h
        mov dl,010
        int 21h
        mov dl,013
        int 21h 
        
        mov ah,9
        lea dx,m3
        int 21h
        
        sub bl,bh
        mov ah,2
        ;add bl,48
        mov dl,bl
        int 21h
       
        
       
        exit  :
        mov ah,4ch
        int 21h
        main endp
    end main