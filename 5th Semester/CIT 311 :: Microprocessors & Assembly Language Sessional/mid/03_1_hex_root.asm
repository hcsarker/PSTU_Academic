; Emu8086 program to calculate the integer square root of 4 and display it
org 100h            ; COM file format for Emu8086

.model small
.stack 100h
.data
    ; No data variables needed for this program
.code
main proc
    mov ax, 4h      ; Number to find square root of (4)
    mov bx, 1h      ; Initial guess

next_guess:
    mov dx, 0h      ; Clear DX for division
    push ax         ; Save original number (4)
    div bx          ; AX = number / guess (quotient), DX = remainder
    pop ax          ; Restore original number
    cmp ax, bx      ; Compare quotient with guess
    je done         ; If equal, square root is found
    inc bx          ; Increment guess
    cmp bx, ax      ; Check if guess exceeds number
    jle next_guess  ; Continue if guess <= number, else exit to avoid infinite loop

done:
    mov ax, bx      ; Move result (square root) to AX

    ; Display the result (AX should be 2)
    mov dl, al      ; Move lower byte of AX (AL) to DL for printing
    add dl, 30h     ; Convert digit to ASCII ('2' = 32h)
    mov ah, 2       ; DOS function to print a single character
    int 21h         ; Print the character in DL

    ; Terminate the program
    mov ah, 4Ch     ; DOS function to exit program
    int 21h         ; Call DOS interrupt to exit

main endp
end main
