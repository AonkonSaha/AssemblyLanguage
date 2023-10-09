   .model small
   .stack 100h
   .data 
   a db 'Enter 1st number:$'
   b db 'Enter 2nd number:$'
   c db 'Result:  $'
   .code       
   main proc 
    mov ax,@data
    mov ds,ax 
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al 
    sub bl,48 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al 
    sub bh,48
    
   
    
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    
    mov ah,9
    lea dx,c
    int 21h 
    
    mov al,bl
    mul bh
    
    mov ah,2 
    add al,48
    mov dl,al
    int 21h
         
         exit:
         mov ah,4ch
         int 21h
    
     
 
    main endp
   end main
   