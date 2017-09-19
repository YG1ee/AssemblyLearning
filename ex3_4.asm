.MODEL SMALL
.STACK 100H
.DATA
In_MSG  DB  'Input Character: $'
Out_MSG DB  0DH, 0AH, 'Output Character: '
CharData DB ?, '$'

.CODE
MAIN    PROC
        MOV     AX, @DATA
        MOV     DS, AX
        MOV     AH, 9
        LEA     DX, In_MSG
        INT     21H

        MOV     AH, 1
        INT     21H

        MOV     CharData, SMALL
        MOV     AH, 9
        LEA     DX, Out_MSG
        INT     21H

        MOV     AH, 4CH
        INT     21H
MAIN    ENDP
        END     MAIN