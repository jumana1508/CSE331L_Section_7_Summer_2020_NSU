
.MODEL SMALL
.STACK 100H
.DATA
 PROMPT DB 'Enter the digit : $'
 MSG DB 'The entered digit is : $'
.CODE
 MAIN PROC
 MOV AX, @DATA 
 MOV DS, AX
 LEA DX, PROMPT 
 MOV AH, 9
 INT 21H
 MOV AH, 1 
 INT 21H
 MOV BL, AL 
 MOV AH, 2 
 MOV DL, 0DH
 INT 21H
 MOV DL, 0AH 
 INT 21H
 LEA DX, MSG 
 MOV AH, 9
 INT 21H                                                                                                            ; jump to label @NEGATIVE if digit<0
 JZ @ZERO 
 JG @POSITIVE 
 JG@NEGATIVE: 


 MOV DL, 'N'
 JMP @DISPLAY 
 @ZERO: l
 MOV DL, 'Z'
 JMP @DISPLAY 
 @POSITIVE: 
 MOV DL, 'P'
 JMP @DISPLAY 

 @DISPLAY: 
 MOV AH, 2 
 INT 21H
 MOV AH, 4CH 
 INT 21H
 MAIN ENDP
END MAIN




