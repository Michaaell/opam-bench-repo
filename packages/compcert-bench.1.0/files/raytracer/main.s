# File generated by CompCert 2.4
# Command line: -stdlib /home/michael/.opam/4.02.1/lib/compcert/ -fstruct-return -dasm -lcompcert -I /home/michael/.opam/4.02.1/share/compcert-bench/raytracer /home/michael/.opam/4.02.1/share/compcert-bench/raytracer/memory.c /home/michael/.opam/4.02.1/share/compcert-bench/raytracer/gmllexer.c /home/michael/.opam/4.02.1/share/compcert-bench/raytracer/gmlparser.c /home/michael/.opam/4.02.1/share/compcert-bench/raytracer/eval.c /home/michael/.opam/4.02.1/share/compcert-bench/raytracer/arrays.c /home/michael/.opam/4.02.1/share/compcert-bench/raytracer/vector.c /home/michael/.opam/4.02.1/share/compcert-bench/raytracer/matrix.c /home/michael/.opam/4.02.1/share/compcert-bench/raytracer/object.c /home/michael/.opam/4.02.1/share/compcert-bench/raytracer/intersect.c /home/michael/.opam/4.02.1/share/compcert-bench/raytracer/surface.c /home/michael/.opam/4.02.1/share/compcert-bench/raytracer/light.c /home/michael/.opam/4.02.1/share/compcert-bench/raytracer/simplify.c /home/michael/.opam/4.02.1/share/compcert-bench/raytracer/render.c /home/michael/.opam/4.02.1/share/compcert-bench/raytracer/main.c -lm
	.text
	.align	16
	.globl main
main:
	.cfi_startproc
	subl	$12, %esp
	.cfi_adjust_cfa_offset	12
	leal	16(%esp), %edx
	movl	%edx, 4(%esp)
	call	arena_init
	call	init_lexer
	call	parse_program
	movl	%eax, 0(%esp)
	call	execute_program
	xorl	%eax, %eax
	addl	$12, %esp
	ret
	.cfi_endproc
	.type	main, @function
	.size	main, . - main
