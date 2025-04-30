ORG 100H

SECTION .text

XOR AX,AX ; Limpia el registro AX y colocarle un dato 0
XOR BX,BX ; Limpia el registro BX y colocarle un dato 0
XOR CX,CX ; Limpia el registro CX y colocarle un dato 0
XOR DX,DX ; Limpia el registro DX y colocarle un dato 0


;suma con acarreo ADC Instruccion: ADC DESTINO, FUENTE
; ADC suma el contenido de la fuente y el acarreo al destino


; EN ESTO NO SE GENERA ACARREO

;MOV AH,05d ; Carga el valor 05d en el registro AH
;MOV BL, 03d ; Carga el valor 03d en el registro BL
;ADD Ah,BL ; Suma el contenido de AH y BL y almacena el resultado en AH

; ACA SI HAY ACARREO, PARA ACTIVAR LA BANDERA 

;56------> 0011 1000
;200-----> 1100 1000
;256-----> 0001 0000 0000 ------> Hay 8 bits y los que quiero son 12 entonces me activa un acarreo
;la bandera que esta en 0 se pone en 1

;Si por ejemplo: tenemos c8 eso es 200 y se pone 201 porque en la operacion previa hubo un acarreo
; En este caso tomo el acarreo al principio

;MOV AH, 56d;Carga el valor 56d en el registro AH
;MOV BL, 200d;Carga el valor 200d en el registro BL
;ADD AH,BL;Suma el contenido de AH y BL y almacena el resultado en AH
;En este caso no hay acarreo
;ADC AH, BL; Acarreo en 1

;SOLO SE MODIFICA SIEMPRE QUELA LA BANDERA SE ACTIVE

;En esta caso tengo dos acarreo, me lee el primero, que ah queda en 0000 y luego lo sobre escribe y
; me queda en c9 que serian los 201 por el acarreo
; en este caso tomo el acarreo al final

;MOV AH, 56d;Carga el valor 56d en el registro AH
;MOV BL, 200d;Carga el valor 200d en el registro BL
;ADC AH,BL;Ocupando acarreo, el resultado es 201d
;ADC AH, BL;Sobreescribiendo acarreo el resultado es 202d


; INSTRUCCION DE RESTA SUB: SUB DESTINO, FUENTE
; Resta el contenido de la fuente al destino y almacena el resultado en el destino
;MOV AL,05d
;MOV BL,03d
;SUB BL,AL ; Resta el contenido de BL a AL y almacena el resultado en AL
;MOV[0300d],AL


;INSTRUCCION DE RESTA CON PRESTAMO SBB: SBB DESTINO, FUENTE
;DESTINO = DESTINO - FUENTE - CARRY


;MULTIPLICACION MUL: MUL FUENTE
;MOV AL,255d
;MOV BL,02d
;MUL BL ; Multiplica el contenido de AL por BL y almacena el resultado en AX


; VER DESPUES
MOV AX, 32768d
MOV BX,02d
MUL BX ; Multiplica el contenido de AX por BX y almacena el resultado en DX:AX


;AFECTANDO EL REGISTRO DX: MOV OPERANDO 

;MULTIPLICACION CON SIGNO IMUL: IMUL OPERANDO (IMUL BL)



INT 20H ; Termina el programa
