; Emu8086 program to calculate the 5th Fibonacci number and display it
org 100h            ; COM file format for Emu8086

.model small
.stack 100h
.data
    ; No data variables needed for this program
.code
main proc
    mov ax, 1h      ; First Fibonacci number (F(1) = 1)
    mov bx, 1h      ; Second Fibonacci number (F(2) = 1)
    mov dx, 1h      ; Current Fibonacci number
    mov cx, 5h      ; Counter for 5th Fibonacci number

repeat:
    mov ax, dx      ; AX = DX (store current Fibonacci number)
    add dx, bx      ; DX = DX + BX (next Fibonacci number)
    mov bx, ax      ; BX = AX (previous Fibonacci number)
    sub cx, 1h      ; Decrement counter
    cmp cx, 0h      ; Check if counter is 0
    jne repeat      ; If not zero, repeat loop

    ; DX contains the 5th Fibonacci number (5)
    ; Convert result in DX to ASCII for display
    mov dl, dh      ; Move low byte of DX (DL) to DL for printing
    add dl, 30h     ; Convert digit to ASCII ('5' = 35h)
    mov ah, 2       ; DOS function to print a single character
    int 21h         ; Print the character in DL

    ; Terminate the program
    mov ah, 4Ch     ; DOS function to exit program
    int 21h         ; Call DOS interrupt to exit

main endp
end main