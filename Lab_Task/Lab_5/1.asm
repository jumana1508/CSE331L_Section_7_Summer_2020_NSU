

.MODEL SMALL
.STACK 100H


.DATA
  PROMPT_1 DB 'Enter int No. 1: $'
  PROMPT_2 DB 'Enter int No. 2: $'
  PROMPT_3 DB 'Diff is:$'

  VALUE_1 DB ?
  VALUE_2 DB ?
  
  
.CODE
  
  MAIN PROC
   
    MOV AX, @DATA
    MOV DS, AX
    
    LEA DX, PROMPT_1
    MOV AH, 9
    INT 21H
    
    MOV AH, 1
    INT 21H
    
    ADD AL, 30H
    MOV VALUE_1, AL
    
    MOV AH, 2
    MOV DL, 0DH
    INT 21H
    
    MOV DL, 0AH
    INT 21H
    
    LEA DX, PROMPT_2
    MOV AH, 9
    INT 21H
    
    MOV AH, 1
    INT 21H
    
    ADD AL, 30H
    MOV VALUE_2, AL
    
    
    MOV AH, 2
    MOV DL, 0DH
    INT 21H
    
    
    MOV DL, 0AH
    INT 21H                     
  
    
    LEA DX, PROMPT_3
    MOV AH, 9
    INT 21H
    
    
    MOV AL, VALUE_1
    SUB AL, VALUE_2
    
    SUB AL, 30H
    
    MOV AH, 2
    MOV DL,AL
    INT 21H

    
    MOV AH, 4CH
    INT 21H
    
 MAIN ENDP
END MAIN
    
    




