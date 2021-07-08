;
; A simple program with conditional codes
;
  mov bx, 44
  
  cmp bx, 4
  jle less_than_or_equals_four
  cmp bx, 40
  jl less_than_fourty
  jmp whatelse
  
  jmp $
  
less_than_or_equals_four:
  mov al, 'A'
  jmp print
  
less_than_fourty:
  mov al, 'B'
  jmp print
  
whatelse:
  mov al, 'C'
  jmp print
  
print:
  mov ah, 0x0e
  int 0x10
  
; Padding and magic number.

  times 510-($-$$) db 0
  dw 0xaa55
