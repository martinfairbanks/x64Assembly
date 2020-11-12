.code
getAssemblyValue proc
	mov rax, 83
	ret
getAssemblyValue endp

getAssemblyMultiplication proc
	xor rax, rax	; zero rax
	mov ax,5
	mov bx,5
	mul bx			; multiplicate bx with ax, result in ax	
	ret
getAssemblyMultiplication endp

end