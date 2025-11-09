.model small
.code
.data

var1 dw 2333h
var2 dw 5456h
result dw ?

 

 main proc
     
     mov ax,@data
     mov ds,ax
     
     mov bx,var1
     mov dx,var2
     
     add bx,dx     ;bh=bh+dh
     
     mov result,bx
     mov ah,4ch
     int 21h
     
     
     
     main endp
