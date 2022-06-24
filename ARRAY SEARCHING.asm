include irvine32.inc
.data
array dword 1,2,3,4,5,6,7,8,11,9
msg1 byte "Enter number for search : ",0
msg2 byte "value found",0
msg3 byte "value not found",0
.code 
Main proc
		mov edx,offset msg1
		call writestring
		
		
		Call readint
		Mov ecx,lengthof array
		
	L1:
		Mov esi, offset array
		Cmp eax,[esi]
		Je found
		add esi,type array
		
	Loop L1
	Jmp nfound
		
found:
		mov edx,offset msg2
		call writestring
		call crlf
Call quit
nfound:
		mov edx,offset msg3
		call writestring
		call crlf
Call quit
Quit:
Main endp
End main