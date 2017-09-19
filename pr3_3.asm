.MODEL SMALL
.STACK 100H
.CODE
MAIN    PROC
        MOV     AH, 2   ; 출력하기
        MOV     DL, '?'
        INT     21H

        MOV     AH, 1   ; 입력 받기
        INT     21H

        MOV     BL, AL
        INT     21H

        MOV     BH, AL
        INT     21H

        MOV     CL, AL
        MOV     AH, 2
        MOV     DL, 0DH ; 개행하기
        INT     21H

        MOV     DL, 0AH
        INT     21H

        MOV     DL, CL
        INT     21H

        MOV     DL, BH
        INT     21H

        MOV     DL, BL
        INT     21H

        MOV     AH, 4CH
        INT     21H
MAIN    ENDP
        END     MAIN