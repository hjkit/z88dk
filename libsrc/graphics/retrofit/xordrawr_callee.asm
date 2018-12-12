;
;       Z88 Graphics Functions - Small C+ stubs
;
;       Written around the Interlogic Standard Library
;
;       Stubs Written by D Morris - 30/9/98
;
;       Wide resolution (int type parameters) version by Stefano Bodrato
;

;
;	$Id: xordrawr_callee.asm $
;

;
; CALLER LINKAGE FOR FUNCTION POINTERS
; ----- void  xordrawr(int x2, int y2)


SECTION smc_clib

PUBLIC     xordrawr_callee
PUBLIC    _xordrawr_callee

	EXTERN    xordrawr

.xordrawr_callee
._xordrawr_callee
	pop af	; ret addr
	pop	bc
	pop	de
	push af	; ret addr
	push de
	push bc
	
	call xordrawr
	pop bc
	pop bc
	ret