; Emu8086 program to subtract two BCD numbers (25h - 12h) and display the result
org 100h            ; COM file format for Emu8086

.model small
.stack 100h
.data
    ; No data variables needed for this program
.code
main proc
    mov al, 25h     ; First BCD number (25 in decimal)
    mov bl, 12h     ; Second BCD number (12 in decimal)
    sub al, bl      ; Subtract BL from AL (AL = 25h - 12h = 13h)
    das             ; Adjust for BCD subtraction

    ; Convert BCD result in AL to ASCII for display (13h to '13')
    mov ah, al      ; Save result in AH
    mov cl, 4       ; Shift count to get high nibble
    shr al, cl      ; Get high nibble (1)
    add al, 30h     ; Convert to ASCII ('1' = 31h)
    mov dl, al      ; Move to DL for printing
    mov ah, 2       ; DOS function to print a single character
    int 21h         ; Print high digit ('1')

    mov al, ah      ; Restore result
    and al, 0Fh     ; Get low nibble (3)
    add al, 30h     ; Convert to ASCII ('3' = 33h)
    mov dl, al      ; Move to DL for printing
    mov ah, 2       ; DOS function to print a single character
    int 21h         ; Print low digit ('3')

    ; Terminate the program
    mov ah, 4Ch     ; DOS function to exit program
    int 21h         ; Call DOS interrupt to exit

main endp
end main