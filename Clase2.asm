ORG 100H


SECTION .text

XOR AX,AX ; Limpia el registro AX y colocarle un dato 0
XOR BX,BX ; Limpia el registro BX y colocarle un dato 0
XOR CX,CX ; Limpia el registro CX y colocarle un dato 0
XOR DX,DX ; Limpia el registro DX y colocarle un dato 0


MOV CL, 0DDh ; Carga el valor DDh en el registro CL
MOV DS:[0150h],CL
MOV BX, 0100h
MOV AL,DS:[BX+50h] ; Carga el valor de la dirección de memoria 0100h+50h en AL

;MOV SI, 05h ; Carga el valor 05h en el registro SI
;MOV BX, 0200h ; Carga el valor 0200h en el registro BX
;MOV cL, 0FFh; Carga el valor 0FFh en el registro AL
;MOV[0205h],CL;Almacena el valor de AL en la dirección de memoria 0200h
;MOV AL, [BX+SI]


  ; MOV BX,0AADDh ; Carga el valor AADDh en el registro BX
  ; MOV[0200h],BX; Almacena el valor de BL en la dirección de memoria 0200h
 ;  MOV AX, [0200h] ; Carga el valor de la dirección de memoria 0200h en AX
;   MOV AX, 2345h ; Carga el valor 2345h en AX
 ;  MOV AL, "A" ; Almacena el valor A en AL


INT 20H ; Termina el programa

