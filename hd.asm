.psp

.relativeinclude on

yaw_hook equ 0x88E68FC ; de aquí es donde saltas al código
NUM_CAM equ 0x09F4E1E4 ; aquí guarda el numero de la cámara

.createfile "camara_cenital_HD.bin", 0

.include "camara_cenital.asm"
