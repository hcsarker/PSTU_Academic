; Emu8086 program to calculate factorial of 5 and display the result
org 100h            ; COM file format for Emu8086

.model small
.stack 100h
.data
    ; No data variables needed for this program
.code
main proc
    mov ax, 1       ; Initialize AX to 1 (for factorial)
    mov cx, 9       ; Number to calculate factorial (5)

count:
    mul cx          ; AX = AX * CX
    loop count      ; Decrease CX and loop back to count if CX != 0

    ; AX now contains 5! = 120
    ; Convert the result in AX to ASCII and print
    mov bx, 10      ; Divisor for extracting digits
    mov cx, 0       ; Counter for digits

divide:
    xor dx, dx      ; Clear DX for division
    div bx          ; Divide AX by 10, quotient in AX, remainder in DX
    push dx         ; Push remainder (digit) to stack
    inc cx          ; Increment digit counter
    cmp ax, 0       ; Check if quotient is 0
    jne divide      ; If not zero, continue dividing

print:
    pop dx          ; Pop digit from stack
    add dl, 30h     ; Convert digit to ASCII ('0' = 30h)
    mov ah, 2       ; DOS function to print a single character
    int 21h         ; Print the character in DL
    loop print      ; Continue until all digits are printed

    ; Terminate the program
    mov ah, 4Ch     ; DOS function to exit program
    int 21h         ; Call DOS interrupt to exit

main endp
end main