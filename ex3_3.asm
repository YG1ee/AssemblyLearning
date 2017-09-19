.MODEL SMALL
.STACK 100H
.DATA
ERR_MSG DB      'ERROR! START AGAIN!$'
.CODE
MAIN    PROC
        MOV     AX, @DATA
        MOV     DS, AX
        MOV     AH, 9
        LEA     DX, ERR_MSG
        INT     21H

        MOV     AH, 4CH
        INT     21H
MAIN    ENDP
        END    MAIN