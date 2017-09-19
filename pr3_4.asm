.MODEL SMALL
.STACK 100H
.DATA
IN_MSG  DB  'Enter an upper case letter: $'
OUT_MSG DB  0DH, 0AH, 'The upper and lower case letters: '
UCHAR   DB  ?, ' '
LCHAR   DB  ?, '$'

.CODE
MAIN    PROC
        MOV     AX, @DATA
        MOV     DS, AX
        LEA     DX, IN_MSG
        MOV     AH, 9   ; 문자열 출력
        INT     21H

        MOV     AH, 1   ; 입력 받기
        INT     21H

        MOV     UCHAR, AL   ; 대문자 저장
        ADD     AL, 20H
        MOV     LCHAR, AL   ; 소문자 저장
        LEA     DX, OUT_MSG
        MOV     AH, 9   ; 문자열 출력
        INT     21H

        MOV     AH, 4CH
        INT     21H
MAIN    ENDP
        END     MAIN