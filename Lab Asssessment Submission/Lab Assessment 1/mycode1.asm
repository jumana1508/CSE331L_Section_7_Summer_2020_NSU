
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h ;#include<stdio.h>

MOV AX, K
MOV AX, K1
MOV AX, K2
MOV AX, K3

ADD AX,AX,AX,AX;AX=AX+AX+AX=AX

K EQU 1
K1 EQU 2
K2 EQU 2
K3 EQU 1

ret




