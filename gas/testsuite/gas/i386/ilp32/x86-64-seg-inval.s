	.text
	.allow_index_reg
_start:
	movl	%fs:(%eax), %eax
	movl	%fs:(,%eax,1), %eax
	movl	%gs:(,%eiz,1), %eax
	movl	%gs:(%eip), %eax
