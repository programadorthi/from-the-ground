print_string:
  pusha
  
string_loop:
  mov al, [bx]
  cmp al, 0x00
  jne print_char
  popa
  ret
  
print_char:
  mov ah, 0x0e
  int 0x10
  add bx, 0x01
  jmp string_loop
