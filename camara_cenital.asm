.ascii "0.01"

.word   1
.word @main_block_end - @main_block
.ascii "CNTL"
@main_block:
main:
	
	la      	at, NUM_CAM ;Comprobar numero de cámara
    lb      	at, 0x0(at)
	
	beq     	at, zero, @cam_0 ; si la cámara es 0 va a @cam_0, si no lo es retorna
    nop
	
	lwc1	f2,0x8(v0)
	j		yaw_hook+8 ; vuelves al código normal
	nop

@cam_0:
	lwc1	f2,0x8(v0)
	li      at, 0x459F ; pones la cámara arriba
	sw		at, 0x6(v0)
	li      at, DISTAN ; eliges la distancia
	sw		at, 0xa(v0)
	j		yaw_hook+8
	nop

@main_block_end:

.word 2
.word  yaw_hook
.halfword main - @main_block
.byte 8
.byte 0

.word -1

.close