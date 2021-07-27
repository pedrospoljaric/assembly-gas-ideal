.data
	pressao: .ascii "Insira P: "
	n: .ascii "Insira n: "
	temperatura: .ascii "Insira T: "
	constante: .float 0.082
	resultado: .ascii "Volume = "
.text
	li $v0, 4
	la $a0, pressao
	syscall
	li $v0 6
	syscall
	mov.s $f1, $f0
	li $v0, 4
	la $a0, n
	syscall
	li $v0 6
	syscall
	mov.s $f2 $f0
	li $v0, 4
	la $a0, temperatura
	syscall
	li $v0 6
	syscall
	mov.s $f3 $f0
	l.s $f4, constante
	
	mul.s $f12, $f2, $f3
	mul.s $f12, $f12, $f4
	div.s $f12, $f12, $f1
	
	li $v0, 4
	la $a0, resultado
	syscall
	
	li $v0, 2
	syscall