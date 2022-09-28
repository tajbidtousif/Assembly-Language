
.MODEL SMALL
.STACK 100H
.DATA

MSG1 DB "FISRT VALUE: $"
MSG2 DB "SECOND VALUE: $" 
MSG3 DB "RESULT VALUE: $" 

.CODE

MAIN PROC  
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 9
    LEA DX, MSG1
    INT 21H 
    
    MOV AH, 1
    INT 21H
    MOV BL, AL
    
    MOV AH, 2
    MOV DL, 010
    INT 21H
    MOV DL, 013
    INT 21H
    
    MOV AH, 9
    LEA DX, MSG2
    INT 21H 
    
    MOV AH, 1
    INT 21H
    MOV BH, AL 
    
    MOV AH, 2 
    INT 21H
    MOV DL, 010
    INT 21H
    MOV DL, 013
    INT 21H 
    
     MOV AH, 9
    LEA DX, MSG3
    INT 21H
    
    ADD BL, BH
    MOV AH, 2
    SUB BL, 48
    MOV DL, BL
    INT 21H
    
    
      
    
    