.include "macros.inc"

.section .text, "ax"

.global __dt__15CGenDescriptionFv
__dt__15CGenDescriptionFv:
/* 80366E38 00363D98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80366E3C 00363D9C  7C 08 02 A6 */	mflr r0
/* 80366E40 00363DA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80366E44 00363DA4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80366E48 00363DA8  7C 9F 23 78 */	mr r31, r4
/* 80366E4C 00363DAC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80366E50 00363DB0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80366E54 00363DB4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80366E58 00363DB8  93 81 00 10 */	stw r28, 0x10(r1)
/* 80366E5C 00363DBC  41 82 01 94 */	beq lbl_80366FF0
/* 80366E60 00363DC0  3C 60 80 3E */	lis r3, lbl_803D8418@ha
/* 80366E64 00363DC4  3B 80 00 00 */	li r28, 0
/* 80366E68 00363DC8  3B A3 84 18 */	addi r29, r3, lbl_803D8418@l
lbl_80366E6C:
/* 80366E6C 00363DCC  80 9D 00 00 */	lwz r4, 0(r29)
/* 80366E70 00363DD0  7F C3 F3 78 */	mr r3, r30
/* 80366E74 00363DD4  48 00 03 C1 */	bl element_from_desc__FP15CGenDescriptioni
/* 80366E78 00363DD8  80 63 00 00 */	lwz r3, 0(r3)
/* 80366E7C 00363DDC  28 03 00 00 */	cmplwi r3, 0
/* 80366E80 00363DE0  41 82 00 18 */	beq lbl_80366E98
/* 80366E84 00363DE4  81 83 00 00 */	lwz r12, 0(r3)
/* 80366E88 00363DE8  38 80 00 01 */	li r4, 1
/* 80366E8C 00363DEC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80366E90 00363DF0  7D 89 03 A6 */	mtctr r12
/* 80366E94 00363DF4  4E 80 04 21 */	bctrl
lbl_80366E98:
/* 80366E98 00363DF8  3B 9C 00 01 */	addi r28, r28, 1
/* 80366E9C 00363DFC  3B BD 00 04 */	addi r29, r29, 4
/* 80366EA0 00363E00  2C 1C 00 32 */	cmpwi r28, 0x32
/* 80366EA4 00363E04  41 80 FF C8 */	blt lbl_80366E6C
/* 80366EA8 00363E08  34 1E 00 D8 */	addic. r0, r30, 0xd8
/* 80366EAC 00363E0C  41 82 00 24 */	beq lbl_80366ED0
/* 80366EB0 00363E10  88 1E 00 E0 */	lbz r0, 0xe0(r30)
/* 80366EB4 00363E14  28 00 00 00 */	cmplwi r0, 0
/* 80366EB8 00363E18  41 82 00 10 */	beq lbl_80366EC8
/* 80366EBC 00363E1C  38 7E 00 D8 */	addi r3, r30, 0xd8
/* 80366EC0 00363E20  38 80 FF FF */	li r4, -1
/* 80366EC4 00363E24  4B FD 9F 7D */	bl __dt__6CTokenFv
lbl_80366EC8:
/* 80366EC8 00363E28  38 00 00 00 */	li r0, 0
/* 80366ECC 00363E2C  98 1E 00 E0 */	stb r0, 0xe0(r30)
lbl_80366ED0:
/* 80366ED0 00363E30  34 1E 00 C0 */	addic. r0, r30, 0xc0
/* 80366ED4 00363E34  41 82 00 30 */	beq lbl_80366F04
/* 80366ED8 00363E38  88 1E 00 CC */	lbz r0, 0xcc(r30)
/* 80366EDC 00363E3C  28 00 00 00 */	cmplwi r0, 0
/* 80366EE0 00363E40  41 82 00 1C */	beq lbl_80366EFC
/* 80366EE4 00363E44  34 7E 00 C0 */	addic. r3, r30, 0xc0
/* 80366EE8 00363E48  41 82 00 14 */	beq lbl_80366EFC
/* 80366EEC 00363E4C  28 03 00 00 */	cmplwi r3, 0
/* 80366EF0 00363E50  41 82 00 0C */	beq lbl_80366EFC
/* 80366EF4 00363E54  38 80 00 00 */	li r4, 0
/* 80366EF8 00363E58  4B FD 9F 49 */	bl __dt__6CTokenFv
lbl_80366EFC:
/* 80366EFC 00363E5C  38 00 00 00 */	li r0, 0
/* 80366F00 00363E60  98 1E 00 CC */	stb r0, 0xcc(r30)
lbl_80366F04:
/* 80366F04 00363E64  38 7E 00 BC */	addi r3, r30, 0xbc
/* 80366F08 00363E68  38 80 FF FF */	li r4, -1
/* 80366F0C 00363E6C  48 00 01 09 */	bl "__dt__Q24rstl38single_ptr<24CSpawnSystemKeyframeData>Fv"
/* 80366F10 00363E70  34 1E 00 A4 */	addic. r0, r30, 0xa4
/* 80366F14 00363E74  41 82 00 30 */	beq lbl_80366F44
/* 80366F18 00363E78  88 1E 00 B0 */	lbz r0, 0xb0(r30)
/* 80366F1C 00363E7C  28 00 00 00 */	cmplwi r0, 0
/* 80366F20 00363E80  41 82 00 1C */	beq lbl_80366F3C
/* 80366F24 00363E84  34 7E 00 A4 */	addic. r3, r30, 0xa4
/* 80366F28 00363E88  41 82 00 14 */	beq lbl_80366F3C
/* 80366F2C 00363E8C  28 03 00 00 */	cmplwi r3, 0
/* 80366F30 00363E90  41 82 00 0C */	beq lbl_80366F3C
/* 80366F34 00363E94  38 80 00 00 */	li r4, 0
/* 80366F38 00363E98  4B FD 9F 09 */	bl __dt__6CTokenFv
lbl_80366F3C:
/* 80366F3C 00363E9C  38 00 00 00 */	li r0, 0
/* 80366F40 00363EA0  98 1E 00 B0 */	stb r0, 0xb0(r30)
lbl_80366F44:
/* 80366F44 00363EA4  34 1E 00 90 */	addic. r0, r30, 0x90
/* 80366F48 00363EA8  41 82 00 30 */	beq lbl_80366F78
/* 80366F4C 00363EAC  88 1E 00 9C */	lbz r0, 0x9c(r30)
/* 80366F50 00363EB0  28 00 00 00 */	cmplwi r0, 0
/* 80366F54 00363EB4  41 82 00 1C */	beq lbl_80366F70
/* 80366F58 00363EB8  34 7E 00 90 */	addic. r3, r30, 0x90
/* 80366F5C 00363EBC  41 82 00 14 */	beq lbl_80366F70
/* 80366F60 00363EC0  28 03 00 00 */	cmplwi r3, 0
/* 80366F64 00363EC4  41 82 00 0C */	beq lbl_80366F70
/* 80366F68 00363EC8  38 80 00 00 */	li r4, 0
/* 80366F6C 00363ECC  4B FD 9E D5 */	bl __dt__6CTokenFv
lbl_80366F70:
/* 80366F70 00363ED0  38 00 00 00 */	li r0, 0
/* 80366F74 00363ED4  98 1E 00 9C */	stb r0, 0x9c(r30)
lbl_80366F78:
/* 80366F78 00363ED8  34 1E 00 78 */	addic. r0, r30, 0x78
/* 80366F7C 00363EDC  41 82 00 30 */	beq lbl_80366FAC
/* 80366F80 00363EE0  88 1E 00 84 */	lbz r0, 0x84(r30)
/* 80366F84 00363EE4  28 00 00 00 */	cmplwi r0, 0
/* 80366F88 00363EE8  41 82 00 1C */	beq lbl_80366FA4
/* 80366F8C 00363EEC  34 7E 00 78 */	addic. r3, r30, 0x78
/* 80366F90 00363EF0  41 82 00 14 */	beq lbl_80366FA4
/* 80366F94 00363EF4  28 03 00 00 */	cmplwi r3, 0
/* 80366F98 00363EF8  41 82 00 0C */	beq lbl_80366FA4
/* 80366F9C 00363EFC  38 80 00 00 */	li r4, 0
/* 80366FA0 00363F00  4B FD 9E A1 */	bl __dt__6CTokenFv
lbl_80366FA4:
/* 80366FA4 00363F04  38 00 00 00 */	li r0, 0
/* 80366FA8 00363F08  98 1E 00 84 */	stb r0, 0x84(r30)
lbl_80366FAC:
/* 80366FAC 00363F0C  34 1E 00 48 */	addic. r0, r30, 0x48
/* 80366FB0 00363F10  41 82 00 30 */	beq lbl_80366FE0
/* 80366FB4 00363F14  88 1E 00 54 */	lbz r0, 0x54(r30)
/* 80366FB8 00363F18  28 00 00 00 */	cmplwi r0, 0
/* 80366FBC 00363F1C  41 82 00 1C */	beq lbl_80366FD8
/* 80366FC0 00363F20  34 7E 00 48 */	addic. r3, r30, 0x48
/* 80366FC4 00363F24  41 82 00 14 */	beq lbl_80366FD8
/* 80366FC8 00363F28  28 03 00 00 */	cmplwi r3, 0
/* 80366FCC 00363F2C  41 82 00 0C */	beq lbl_80366FD8
/* 80366FD0 00363F30  38 80 00 00 */	li r4, 0
/* 80366FD4 00363F34  4B FD 9E 6D */	bl __dt__6CTokenFv
lbl_80366FD8:
/* 80366FD8 00363F38  38 00 00 00 */	li r0, 0
/* 80366FDC 00363F3C  98 1E 00 54 */	stb r0, 0x54(r30)
lbl_80366FE0:
/* 80366FE0 00363F40  7F E0 07 35 */	extsh. r0, r31
/* 80366FE4 00363F44  40 81 00 0C */	ble lbl_80366FF0
/* 80366FE8 00363F48  7F C3 F3 78 */	mr r3, r30
/* 80366FEC 00363F4C  4B FA E9 45 */	bl Free__7CMemoryFPCv
lbl_80366FF0:
/* 80366FF0 00363F50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80366FF4 00363F54  7F C3 F3 78 */	mr r3, r30
/* 80366FF8 00363F58  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80366FFC 00363F5C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80367000 00363F60  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80367004 00363F64  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80367008 00363F68  7C 08 03 A6 */	mtlr r0
/* 8036700C 00363F6C  38 21 00 20 */	addi r1, r1, 0x20
/* 80367010 00363F70  4E 80 00 20 */	blr

.global "__dt__Q24rstl38single_ptr<24CSpawnSystemKeyframeData>Fv"
"__dt__Q24rstl38single_ptr<24CSpawnSystemKeyframeData>Fv":
/* 80367014 00363F74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80367018 00363F78  7C 08 02 A6 */	mflr r0
/* 8036701C 00363F7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80367020 00363F80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80367024 00363F84  7C 9F 23 78 */	mr r31, r4
/* 80367028 00363F88  93 C1 00 08 */	stw r30, 8(r1)
/* 8036702C 00363F8C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80367030 00363F90  41 82 00 20 */	beq lbl_80367050
/* 80367034 00363F94  80 7E 00 00 */	lwz r3, 0(r30)
/* 80367038 00363F98  38 80 00 01 */	li r4, 1
/* 8036703C 00363F9C  4B FC 2A 51 */	bl sub_80329a8c
/* 80367040 00363FA0  7F E0 07 35 */	extsh. r0, r31
/* 80367044 00363FA4  40 81 00 0C */	ble lbl_80367050
/* 80367048 00363FA8  7F C3 F3 78 */	mr r3, r30
/* 8036704C 00363FAC  4B FA E8 E5 */	bl Free__7CMemoryFPCv
lbl_80367050:
/* 80367050 00363FB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80367054 00363FB4  7F C3 F3 78 */	mr r3, r30
/* 80367058 00363FB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8036705C 00363FBC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80367060 00363FC0  7C 08 03 A6 */	mtlr r0
/* 80367064 00363FC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80367068 00363FC8  4E 80 00 20 */	blr

.global __ct__15CGenDescriptionFv
__ct__15CGenDescriptionFv:
/* 8036706C 00363FCC  38 A0 00 00 */	li r5, 0
/* 80367070 00363FD0  38 80 00 01 */	li r4, 1
/* 80367074 00363FD4  90 A3 00 00 */	stw r5, 0(r3)
/* 80367078 00363FD8  90 A3 00 04 */	stw r5, 4(r3)
/* 8036707C 00363FDC  90 A3 00 08 */	stw r5, 8(r3)
/* 80367080 00363FE0  90 A3 00 0C */	stw r5, 0xc(r3)
/* 80367084 00363FE4  90 A3 00 10 */	stw r5, 0x10(r3)
/* 80367088 00363FE8  90 A3 00 14 */	stw r5, 0x14(r3)
/* 8036708C 00363FEC  90 A3 00 18 */	stw r5, 0x18(r3)
/* 80367090 00363FF0  90 A3 00 1C */	stw r5, 0x1c(r3)
/* 80367094 00363FF4  90 A3 00 20 */	stw r5, 0x20(r3)
/* 80367098 00363FF8  90 A3 00 24 */	stw r5, 0x24(r3)
/* 8036709C 00363FFC  90 A3 00 28 */	stw r5, 0x28(r3)
/* 803670A0 00364000  90 A3 00 2C */	stw r5, 0x2c(r3)
/* 803670A4 00364004  88 03 00 30 */	lbz r0, 0x30(r3)
/* 803670A8 00364008  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 803670AC 0036400C  98 03 00 30 */	stb r0, 0x30(r3)
/* 803670B0 00364010  88 03 00 30 */	lbz r0, 0x30(r3)
/* 803670B4 00364014  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 803670B8 00364018  98 03 00 30 */	stb r0, 0x30(r3)
/* 803670BC 0036401C  88 03 00 30 */	lbz r0, 0x30(r3)
/* 803670C0 00364020  50 A0 2E B4 */	rlwimi r0, r5, 5, 0x1a, 0x1a
/* 803670C4 00364024  98 03 00 30 */	stb r0, 0x30(r3)
/* 803670C8 00364028  88 03 00 30 */	lbz r0, 0x30(r3)
/* 803670CC 0036402C  50 A0 26 F6 */	rlwimi r0, r5, 4, 0x1b, 0x1b
/* 803670D0 00364030  98 03 00 30 */	stb r0, 0x30(r3)
/* 803670D4 00364034  88 03 00 30 */	lbz r0, 0x30(r3)
/* 803670D8 00364038  50 A0 1F 38 */	rlwimi r0, r5, 3, 0x1c, 0x1c
/* 803670DC 0036403C  98 03 00 30 */	stb r0, 0x30(r3)
/* 803670E0 00364040  88 03 00 30 */	lbz r0, 0x30(r3)
/* 803670E4 00364044  50 A0 17 7A */	rlwimi r0, r5, 2, 0x1d, 0x1d
/* 803670E8 00364048  98 03 00 30 */	stb r0, 0x30(r3)
/* 803670EC 0036404C  88 03 00 30 */	lbz r0, 0x30(r3)
/* 803670F0 00364050  50 A0 0F BC */	rlwimi r0, r5, 1, 0x1e, 0x1e
/* 803670F4 00364054  98 03 00 30 */	stb r0, 0x30(r3)
/* 803670F8 00364058  88 03 00 30 */	lbz r0, 0x30(r3)
/* 803670FC 0036405C  50 A0 07 FE */	rlwimi r0, r5, 0, 0x1f, 0x1f
/* 80367100 00364060  98 03 00 30 */	stb r0, 0x30(r3)
/* 80367104 00364064  88 03 00 31 */	lbz r0, 0x31(r3)
/* 80367108 00364068  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 8036710C 0036406C  98 03 00 31 */	stb r0, 0x31(r3)
/* 80367110 00364070  88 03 00 31 */	lbz r0, 0x31(r3)
/* 80367114 00364074  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 80367118 00364078  98 03 00 31 */	stb r0, 0x31(r3)
/* 8036711C 0036407C  88 03 00 31 */	lbz r0, 0x31(r3)
/* 80367120 00364080  50 A0 2E B4 */	rlwimi r0, r5, 5, 0x1a, 0x1a
/* 80367124 00364084  98 03 00 31 */	stb r0, 0x31(r3)
/* 80367128 00364088  88 03 00 31 */	lbz r0, 0x31(r3)
/* 8036712C 0036408C  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 80367130 00364090  98 03 00 31 */	stb r0, 0x31(r3)
/* 80367134 00364094  88 03 00 31 */	lbz r0, 0x31(r3)
/* 80367138 00364098  50 A0 1F 38 */	rlwimi r0, r5, 3, 0x1c, 0x1c
/* 8036713C 0036409C  98 03 00 31 */	stb r0, 0x31(r3)
/* 80367140 003640A0  88 03 00 31 */	lbz r0, 0x31(r3)
/* 80367144 003640A4  50 A0 17 7A */	rlwimi r0, r5, 2, 0x1d, 0x1d
/* 80367148 003640A8  98 03 00 31 */	stb r0, 0x31(r3)
/* 8036714C 003640AC  88 03 00 31 */	lbz r0, 0x31(r3)
/* 80367150 003640B0  50 A0 0F BC */	rlwimi r0, r5, 1, 0x1e, 0x1e
/* 80367154 003640B4  98 03 00 31 */	stb r0, 0x31(r3)
/* 80367158 003640B8  88 03 00 31 */	lbz r0, 0x31(r3)
/* 8036715C 003640BC  50 A0 07 FE */	rlwimi r0, r5, 0, 0x1f, 0x1f
/* 80367160 003640C0  98 03 00 31 */	stb r0, 0x31(r3)
/* 80367164 003640C4  88 03 00 32 */	lbz r0, 0x32(r3)
/* 80367168 003640C8  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 8036716C 003640CC  98 03 00 32 */	stb r0, 0x32(r3)
/* 80367170 003640D0  88 03 00 32 */	lbz r0, 0x32(r3)
/* 80367174 003640D4  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 80367178 003640D8  98 03 00 32 */	stb r0, 0x32(r3)
/* 8036717C 003640DC  90 A3 00 34 */	stw r5, 0x34(r3)
/* 80367180 003640E0  90 A3 00 38 */	stw r5, 0x38(r3)
/* 80367184 003640E4  90 A3 00 3C */	stw r5, 0x3c(r3)
/* 80367188 003640E8  90 A3 00 40 */	stw r5, 0x40(r3)
/* 8036718C 003640EC  90 A3 00 44 */	stw r5, 0x44(r3)
/* 80367190 003640F0  98 A3 00 54 */	stb r5, 0x54(r3)
/* 80367194 003640F4  90 A3 00 58 */	stw r5, 0x58(r3)
/* 80367198 003640F8  90 A3 00 5C */	stw r5, 0x5c(r3)
/* 8036719C 003640FC  90 A3 00 60 */	stw r5, 0x60(r3)
/* 803671A0 00364100  90 A3 00 64 */	stw r5, 0x64(r3)
/* 803671A4 00364104  90 A3 00 68 */	stw r5, 0x68(r3)
/* 803671A8 00364108  90 A3 00 6C */	stw r5, 0x6c(r3)
/* 803671AC 0036410C  90 A3 00 70 */	stw r5, 0x70(r3)
/* 803671B0 00364110  90 A3 00 74 */	stw r5, 0x74(r3)
/* 803671B4 00364114  98 A3 00 84 */	stb r5, 0x84(r3)
/* 803671B8 00364118  90 A3 00 88 */	stw r5, 0x88(r3)
/* 803671BC 0036411C  90 A3 00 8C */	stw r5, 0x8c(r3)
/* 803671C0 00364120  98 A3 00 9C */	stb r5, 0x9c(r3)
/* 803671C4 00364124  90 A3 00 A0 */	stw r5, 0xa0(r3)
/* 803671C8 00364128  98 A3 00 B0 */	stb r5, 0xb0(r3)
/* 803671CC 0036412C  90 A3 00 B4 */	stw r5, 0xb4(r3)
/* 803671D0 00364130  90 A3 00 B8 */	stw r5, 0xb8(r3)
/* 803671D4 00364134  90 A3 00 BC */	stw r5, 0xbc(r3)
/* 803671D8 00364138  98 A3 00 CC */	stb r5, 0xcc(r3)
/* 803671DC 0036413C  90 A3 00 D0 */	stw r5, 0xd0(r3)
/* 803671E0 00364140  90 A3 00 D4 */	stw r5, 0xd4(r3)
/* 803671E4 00364144  98 A3 00 E0 */	stb r5, 0xe0(r3)
/* 803671E8 00364148  90 A3 00 E4 */	stw r5, 0xe4(r3)
/* 803671EC 0036414C  90 A3 00 E8 */	stw r5, 0xe8(r3)
/* 803671F0 00364150  90 A3 00 EC */	stw r5, 0xec(r3)
/* 803671F4 00364154  90 A3 00 F0 */	stw r5, 0xf0(r3)
/* 803671F8 00364158  90 A3 00 F4 */	stw r5, 0xf4(r3)
/* 803671FC 0036415C  90 A3 00 F8 */	stw r5, 0xf8(r3)
/* 80367200 00364160  90 A3 00 FC */	stw r5, 0xfc(r3)
/* 80367204 00364164  90 A3 01 00 */	stw r5, 0x100(r3)
/* 80367208 00364168  90 A3 01 04 */	stw r5, 0x104(r3)
/* 8036720C 0036416C  90 A3 01 08 */	stw r5, 0x108(r3)
/* 80367210 00364170  90 A3 01 0C */	stw r5, 0x10c(r3)
/* 80367214 00364174  90 A3 01 10 */	stw r5, 0x110(r3)
/* 80367218 00364178  90 A3 01 14 */	stw r5, 0x114(r3)
/* 8036721C 0036417C  90 A3 01 18 */	stw r5, 0x118(r3)
/* 80367220 00364180  90 A3 01 1C */	stw r5, 0x11c(r3)
/* 80367224 00364184  90 A3 01 20 */	stw r5, 0x120(r3)
/* 80367228 00364188  90 A3 01 24 */	stw r5, 0x124(r3)
/* 8036722C 0036418C  90 A3 01 28 */	stw r5, 0x128(r3)
/* 80367230 00364190  4E 80 00 20 */	blr

.global element_from_desc__FP15CGenDescriptioni
element_from_desc__FP15CGenDescriptioni:
/* 80367234 00364194  7C 63 22 14 */	add r3, r3, r4
/* 80367238 00364198  4E 80 00 20 */	blr

.section .rodata
.global lbl_803D8418
lbl_803D8418:
	# ROM: 0x3D5418
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000008
	.4byte 0x0000000C
	.4byte 0x00000010
	.4byte 0x00000014
	.4byte 0x00000018
	.4byte 0x0000001C
	.4byte 0x00000020
	.4byte 0x00000024
	.4byte 0x00000028
	.4byte 0x0000002C
	.4byte 0x00000034
	.4byte 0x00000038
	.4byte 0x0000003C
	.4byte 0x00000040
	.4byte 0x00000044
	.4byte 0x00000058
	.4byte 0x0000005C
	.4byte 0x00000060
	.4byte 0x00000064
	.4byte 0x00000068
	.4byte 0x0000006C
	.4byte 0x00000070
	.4byte 0x00000074
	.4byte 0x00000088
	.4byte 0x0000008C
	.4byte 0x000000A0
	.4byte 0x000000B4
	.4byte 0x000000B8
	.4byte 0x000000D0
	.4byte 0x000000D4
	.4byte 0x000000E4
	.4byte 0x000000E8
	.4byte 0x000000EC
	.4byte 0x000000F0
	.4byte 0x000000F4
	.4byte 0x000000F8
	.4byte 0x000000FC
	.4byte 0x00000100
	.4byte 0x00000104
	.4byte 0x00000108
	.4byte 0x0000010C
	.4byte 0x00000110
	.4byte 0x00000114
	.4byte 0x00000118
	.4byte 0x0000011C
	.4byte 0x00000120
	.4byte 0x00000124
	.4byte 0x00000128

