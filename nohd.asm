.psp

.relativeinclude on

yaw_hook equ 0x88E4F18 ; de aquí es donde saltas al código
NUM_CAM equ 0x09B477A4 ; aquí guarda el numero de la cámara

.createfile "camara_cenital.bin", 0

.include "camara_cenital.asm"
