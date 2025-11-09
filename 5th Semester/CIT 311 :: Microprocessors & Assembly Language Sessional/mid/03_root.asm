; Emu8086 program to calculate the integer square root of 16 and display it
org 100h            ; COM file format for Emu8086

.model small
.stack 100h
.data
    ; No data variables needed for this program
.code
main proc
    mov ax, 16h     ; Number to find square root of (16)
    mov cx, 0h      ; Result (square root)
    mov bx, 1h      ; Initial guess

next_guess:
    mov dx, 0h      ; Clear DX for division
    mov ax, 16h     ; Reload number (16) into AX
    div bx          ; AX = number / guess (quotient), DX = remainder
    add ax, bx      ; AX = guess + (number / guess)
    shr ax, 1       ; AX = (guess + (number / guess)) / 2 (new guess)
    cmp ax, cx      ; Compare new guess with previous result
    je done         ; If equal, square root is found
    mov cx, ax      ; Update result (previous guess)
    inc bx          ; Increment guess
    cmp bx, ax      ; Check if guess exceeds new guess
    jle next_guess  ; Continue if BX <= AX, else exit to avoid infinite loop

done:
    mov ax, cx      ; Move final result (square root) to AX

    ; Display the result (AX should be 4)
    mov dl, al      ; Move lower byte of AX (AL) to DL for printing
    add dl, 30h     ; Convert digit to ASCII ('4' = 34h)
    mov ah, 2       ; DOS function to print a single character
    int 21h         ; Print the character in DL

    ; Terminate the program
    mov ah, 4Ch     ; DOS function to exit program
    int 21h         ; Call DOS interrupt to exit

main endp
end main