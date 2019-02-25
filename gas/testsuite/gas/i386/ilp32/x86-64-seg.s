.include "../x86-64-avx-gather.s"

	.text
	.att_syntax
	movl	%fs:0, %eax
	movl	%gs:(%rip), %eax
	movl	%gs:(%rax), %eax
	vgatherqps	%xmm12,foo(,%ymm15,1),%xmm11
	vgatherqps	%xmm12,foo+1(,%ymm15,1),%xmm11
	vgatherqps	%xmm12,0xc(,%ymm15,1),%xmm11
	vgatherdps	%ymm12,foo(,%ymm15,1),%ymm11
	vgatherdps	%ymm12,foo+1(,%ymm15,1),%ymm11
	vgatherdps	%ymm12,%fs:(,%ymm15,1),%ymm11
	vgatherdps	%ymm12,0xc(%eax,%ymm15,1),%ymm11
	vgatherdps	%ymm12,%fs:0xc(%rax,%ymm15,1),%ymm11
