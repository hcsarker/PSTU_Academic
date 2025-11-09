 ; Emu8086 program to multiply two 16-bit numbers (1234h * 0020h) and display the result
org 100h            ; COM file format for Emu8086

.model small
.stack 100h
.data
    ; No data variables needed for this program
.code
main proc
    mov ax, 1234h   ; First 16-bit number (4660 in decimal)
    mov bx, 0020h   ; Second 16-bit number (32 in decimal)
    mul bx          ; Multiply AX by BX, result in DX:AX (DX = high 16 bits, AX = low 16 bits)

    ; Convert 32-bit result in DX:AX to ASCII and print
    mov bx, 10      ; Divisor for decimal conversion
    mov cx, 0       ; Digit counter
convert_loop:
    mov dx, 0       ; Clear DX for division
    div bx          ; Divide DX:AX by 10, quotient in AX, remainder in DX
    push dx         ; Push remainder (digit) to stack
    inc cx          ; Increment digit counter
    cmp ax, 0       ; Check if quotient is 0
    jne convert_loop ; Continue if not zero

print_loop:
    pop dx          ; Pop digit from stack
    add dl, 30h     ; Convert digit to ASCII ('0' = 30h)
    mov ah, 2       ; DOS function to print a single character
    int 21h         ; Print the character in DL
    loop print_loop ; Continue until all digits are printed

    ; Terminate the program
    mov ah, 4Ch     ; DOS function to exit program
    int 21h         ; Call DOS interrupt to exit

main endp
end main