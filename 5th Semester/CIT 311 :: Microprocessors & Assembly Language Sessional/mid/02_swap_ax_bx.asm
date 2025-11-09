
; Emu8086 program to swap AX and BX values and display them
org 100h            ; COM file format for Emu8086

.model small
.stack 100h
.data
    ; No data variables needed for this program
.code
main proc
    mov ax, 1h      ; Initialize AX to 1
    mov bx, 2h      ; Initialize BX to 2
    
    xchg ax, bx     ; Swap AX and BX (now AX = 2, BX = 1)

    ; Display AX value (2)
    mov dl, al      ; Move lower byte of AX (AL) to DL for printing
    add dl, 30h     ; Convert digit to ASCII ('2' = 32h)
    mov ah, 2       ; DOS function to print a single character
    int 21h         ; Print the character in DL

    ; Print a space for separation
    mov dl, ' '     ; ASCII code for space
    mov ah, 2
    int 21h

    ; Display BX value (1)
    mov dl, bl      ; Move lower byte of BX (BL) to DL for printing
    add dl, 30h     ; Convert digit to ASCII ('1' = 31h)
    mov ah, 2
    int 21h

    ; Terminate the program
    mov ah, 4Ch     ; DOS function to exit program
    int 21h         ; Call DOS interrupt to exit

main endp
end main