EXTERN MessageBoxA: proc
EXTERN GetForegroundWindow: proc

.data
    message		BYTE  "Hello World!", 13, 10, 0
	caption		BYTE  "x64 Assembly", 13, 10, 0

.code
main proc
	push rbp				; save frame pointer
	mov rbp, rsp			; fix stack pointer
	sub rsp, 8 * (4 + 2)	; allocate shadow register area + 2 QWORDs for stack alignment

	call GetForegroundWindow ; get window handle
	mov rcx, rax
	
	; WINUSERAPI int WINAPI MessageBoxA(
	; RCX =>  _In_opt_ HWND hWnd,
	; RDX =>  _In_opt_ LPCSTR lpText,
	; R8  =>  _In_opt_ LPCSTR lpCaption,
	; R9  =>  _In_ UINT uType);
	mov rdx, offset message
	mov r8, offset caption
	mov r9, 0 ; MB_OK
	and rsp, not 8			; align stack to 16 bytes prior to API call
	call MessageBoxA
	
	; restore stack pointer
	mov rsp, rbp
	pop rbp
	ret
main endp

end