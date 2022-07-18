.include "macros.inc"

.section .data

.global lbl_803ED568
lbl_803ED568:
	# ROM: 0x3EA568
	.4byte 0
	.4byte 0
	.4byte "__dt__49TObjOwnerDerivedFromIObj<21CAllFormatsAnimSource>Fv"
	.4byte 0

.section .text, "ax"

.global __dt__21CAllFormatsAnimSourceFv
__dt__21CAllFormatsAnimSourceFv:
/* 802FDF1C 002FAE7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FDF20 002FAE80  7C 08 02 A6 */	mflr r0
/* 802FDF24 002FAE84  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FDF28 002FAE88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802FDF2C 002FAE8C  7C 9F 23 78 */	mr r31, r4
/* 802FDF30 002FAE90  93 C1 00 08 */	stw r30, 8(r1)
/* 802FDF34 002FAE94  7C 7E 1B 79 */	or. r30, r3, r3
/* 802FDF38 002FAE98  41 82 00 1C */	beq lbl_802FDF54
/* 802FDF3C 002FAE9C  38 80 FF FF */	li r4, -1
/* 802FDF40 002FAEA0  48 00 05 A1 */	bl __dt__16CAnimFormatUnionFv
/* 802FDF44 002FAEA4  7F E0 07 35 */	extsh. r0, r31
/* 802FDF48 002FAEA8  40 81 00 0C */	ble lbl_802FDF54
/* 802FDF4C 002FAEAC  7F C3 F3 78 */	mr r3, r30
/* 802FDF50 002FAEB0  48 01 79 E1 */	bl Free__7CMemoryFPCv
lbl_802FDF54:
/* 802FDF54 002FAEB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FDF58 002FAEB8  7F C3 F3 78 */	mr r3, r30
/* 802FDF5C 002FAEBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802FDF60 002FAEC0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802FDF64 002FAEC4  7C 08 03 A6 */	mtlr r0
/* 802FDF68 002FAEC8  38 21 00 10 */	addi r1, r1, 0x10
/* 802FDF6C 002FAECC  4E 80 00 20 */	blr

.global "GetNewReader__21CAllFormatsAnimSourceFRC37TLockedToken<21CAllFormatsAnimSource>RC13CCharAnimTime"
"GetNewReader__21CAllFormatsAnimSourceFRC37TLockedToken<21CAllFormatsAnimSource>RC13CCharAnimTime":
/* 802FDF70 002FAED0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 802FDF74 002FAED4  7C 08 02 A6 */	mflr r0
/* 802FDF78 002FAED8  90 01 00 64 */	stw r0, 0x64(r1)
/* 802FDF7C 002FAEDC  BF 61 00 4C */	stmw r27, 0x4c(r1)
/* 802FDF80 002FAEE0  7C 7E 1B 78 */	mr r30, r3
/* 802FDF84 002FAEE4  7C 9C 23 78 */	mr r28, r4
/* 802FDF88 002FAEE8  7C BF 2B 78 */	mr r31, r5
/* 802FDF8C 002FAEEC  80 64 00 08 */	lwz r3, 8(r4)
/* 802FDF90 002FAEF0  80 03 00 00 */	lwz r0, 0(r3)
/* 802FDF94 002FAEF4  2C 00 00 01 */	cmpwi r0, 1
/* 802FDF98 002FAEF8  41 82 01 50 */	beq lbl_802FE0E8
/* 802FDF9C 002FAEFC  40 80 00 10 */	bge lbl_802FDFAC
/* 802FDFA0 002FAF00  2C 00 00 00 */	cmpwi r0, 0
/* 802FDFA4 002FAF04  40 80 00 14 */	bge lbl_802FDFB8
/* 802FDFA8 002FAF08  48 00 01 40 */	b lbl_802FE0E8
lbl_802FDFAC:
/* 802FDFAC 002FAF0C  2C 00 00 03 */	cmpwi r0, 3
/* 802FDFB0 002FAF10  40 80 01 38 */	bge lbl_802FE0E8
/* 802FDFB4 002FAF14  48 00 00 94 */	b lbl_802FE048
lbl_802FDFB8:
/* 802FDFB8 002FAF18  3C 60 80 3D */	lis r3, lbl_803D6E58@ha
/* 802FDFBC 002FAF1C  3B 60 00 00 */	li r27, 0
/* 802FDFC0 002FAF20  38 83 6E 58 */	addi r4, r3, lbl_803D6E58@l
/* 802FDFC4 002FAF24  38 A0 00 00 */	li r5, 0
/* 802FDFC8 002FAF28  38 60 00 7C */	li r3, 0x7c
/* 802FDFCC 002FAF2C  48 01 78 A1 */	bl __nw__FUlPCcPCc
/* 802FDFD0 002FAF30  7C 7D 1B 79 */	or. r29, r3, r3
/* 802FDFD4 002FAF34  41 82 00 48 */	beq lbl_802FE01C
/* 802FDFD8 002FAF38  3B 61 00 38 */	addi r27, r1, 0x38
/* 802FDFDC 002FAF3C  7F 84 E3 78 */	mr r4, r28
/* 802FDFE0 002FAF40  7F 63 DB 78 */	mr r3, r27
/* 802FDFE4 002FAF44  48 04 2E C5 */	bl __ct__6CTokenFRC6CToken
/* 802FDFE8 002FAF48  80 1C 00 08 */	lwz r0, 8(r28)
/* 802FDFEC 002FAF4C  7F 63 DB 78 */	mr r3, r27
/* 802FDFF0 002FAF50  90 01 00 40 */	stw r0, 0x40(r1)
/* 802FDFF4 002FAF54  48 04 2D 91 */	bl Lock__6CTokenFv
/* 802FDFF8 002FAF58  80 C1 00 40 */	lwz r6, 0x40(r1)
/* 802FDFFC 002FAF5C  7F 64 DB 78 */	mr r4, r27
/* 802FE000 002FAF60  7F A3 EB 78 */	mr r3, r29
/* 802FE004 002FAF64  7F E5 FB 78 */	mr r5, r31
/* 802FE008 002FAF68  38 06 00 04 */	addi r0, r6, 4
/* 802FE00C 002FAF6C  3B 60 00 01 */	li r27, 1
/* 802FE010 002FAF70  90 01 00 44 */	stw r0, 0x44(r1)
/* 802FE014 002FAF74  4B FF 15 7D */	bl "__ct__17CAnimSourceReaderFRC32TSubAnimTypeToken<11CAnimSource>RC13CCharAnimTime"
/* 802FE018 002FAF78  7C 7D 1B 78 */	mr r29, r3
lbl_802FE01C:
/* 802FE01C 002FAF7C  7C 7D 00 D0 */	neg r3, r29
/* 802FE020 002FAF80  7F 60 07 75 */	extsb. r0, r27
/* 802FE024 002FAF84  7C 60 EB 78 */	or r0, r3, r29
/* 802FE028 002FAF88  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802FE02C 002FAF8C  98 1E 00 00 */	stb r0, 0(r30)
/* 802FE030 002FAF90  93 BE 00 04 */	stw r29, 4(r30)
/* 802FE034 002FAF94  41 82 01 50 */	beq lbl_802FE184
/* 802FE038 002FAF98  38 61 00 38 */	addi r3, r1, 0x38
/* 802FE03C 002FAF9C  38 80 00 00 */	li r4, 0
/* 802FE040 002FAFA0  48 04 2E 01 */	bl __dt__6CTokenFv
/* 802FE044 002FAFA4  48 00 01 40 */	b lbl_802FE184
lbl_802FE048:
/* 802FE048 002FAFA8  3C 60 80 3D */	lis r3, lbl_803D6E58@ha
/* 802FE04C 002FAFAC  3B 60 00 00 */	li r27, 0
/* 802FE050 002FAFB0  38 83 6E 58 */	addi r4, r3, lbl_803D6E58@l
/* 802FE054 002FAFB4  38 A0 00 00 */	li r5, 0
/* 802FE058 002FAFB8  38 60 02 A4 */	li r3, 0x2a4
/* 802FE05C 002FAFBC  48 01 78 11 */	bl __nw__FUlPCcPCc
/* 802FE060 002FAFC0  7C 7D 1B 79 */	or. r29, r3, r3
/* 802FE064 002FAFC4  41 82 00 58 */	beq lbl_802FE0BC
/* 802FE068 002FAFC8  3B 61 00 28 */	addi r27, r1, 0x28
/* 802FE06C 002FAFCC  7F 84 E3 78 */	mr r4, r28
/* 802FE070 002FAFD0  7F 63 DB 78 */	mr r3, r27
/* 802FE074 002FAFD4  48 04 2E 35 */	bl __ct__6CTokenFRC6CToken
/* 802FE078 002FAFD8  80 1C 00 08 */	lwz r0, 8(r28)
/* 802FE07C 002FAFDC  7F 63 DB 78 */	mr r3, r27
/* 802FE080 002FAFE0  90 01 00 30 */	stw r0, 0x30(r1)
/* 802FE084 002FAFE4  48 04 2D 01 */	bl Lock__6CTokenFv
/* 802FE088 002FAFE8  80 A1 00 30 */	lwz r5, 0x30(r1)
/* 802FE08C 002FAFEC  7F 64 DB 78 */	mr r4, r27
/* 802FE090 002FAFF0  80 DF 00 00 */	lwz r6, 0(r31)
/* 802FE094 002FAFF4  7F A3 EB 78 */	mr r3, r29
/* 802FE098 002FAFF8  80 1F 00 04 */	lwz r0, 4(r31)
/* 802FE09C 002FAFFC  38 A5 00 04 */	addi r5, r5, 4
/* 802FE0A0 002FB000  90 A1 00 34 */	stw r5, 0x34(r1)
/* 802FE0A4 002FB004  38 A1 00 10 */	addi r5, r1, 0x10
/* 802FE0A8 002FB008  3B 60 00 01 */	li r27, 1
/* 802FE0AC 002FB00C  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802FE0B0 002FB010  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FE0B4 002FB014  4B FF C1 F5 */	bl "__ct__21CFBStreamedAnimReaderFRC43TSubAnimTypeToken<22CFBStreamedCompression>13CCharAnimTime"
/* 802FE0B8 002FB018  7C 7D 1B 78 */	mr r29, r3
lbl_802FE0BC:
/* 802FE0BC 002FB01C  7C 7D 00 D0 */	neg r3, r29
/* 802FE0C0 002FB020  7F 60 07 75 */	extsb. r0, r27
/* 802FE0C4 002FB024  7C 60 EB 78 */	or r0, r3, r29
/* 802FE0C8 002FB028  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802FE0CC 002FB02C  98 1E 00 00 */	stb r0, 0(r30)
/* 802FE0D0 002FB030  93 BE 00 04 */	stw r29, 4(r30)
/* 802FE0D4 002FB034  41 82 00 B0 */	beq lbl_802FE184
/* 802FE0D8 002FB038  38 61 00 28 */	addi r3, r1, 0x28
/* 802FE0DC 002FB03C  38 80 00 00 */	li r4, 0
/* 802FE0E0 002FB040  48 04 2D 61 */	bl __dt__6CTokenFv
/* 802FE0E4 002FB044  48 00 00 A0 */	b lbl_802FE184
lbl_802FE0E8:
/* 802FE0E8 002FB048  3C 60 80 3D */	lis r3, lbl_803D6E58@ha
/* 802FE0EC 002FB04C  3B 60 00 00 */	li r27, 0
/* 802FE0F0 002FB050  38 83 6E 58 */	addi r4, r3, lbl_803D6E58@l
/* 802FE0F4 002FB054  38 A0 00 00 */	li r5, 0
/* 802FE0F8 002FB058  38 60 02 A4 */	li r3, 0x2a4
/* 802FE0FC 002FB05C  48 01 77 71 */	bl __nw__FUlPCcPCc
/* 802FE100 002FB060  7C 7D 1B 79 */	or. r29, r3, r3
/* 802FE104 002FB064  41 82 00 58 */	beq lbl_802FE15C
/* 802FE108 002FB068  3B 61 00 18 */	addi r27, r1, 0x18
/* 802FE10C 002FB06C  7F 84 E3 78 */	mr r4, r28
/* 802FE110 002FB070  7F 63 DB 78 */	mr r3, r27
/* 802FE114 002FB074  48 04 2D 95 */	bl __ct__6CTokenFRC6CToken
/* 802FE118 002FB078  80 1C 00 08 */	lwz r0, 8(r28)
/* 802FE11C 002FB07C  7F 63 DB 78 */	mr r3, r27
/* 802FE120 002FB080  90 01 00 20 */	stw r0, 0x20(r1)
/* 802FE124 002FB084  48 04 2C 61 */	bl Lock__6CTokenFv
/* 802FE128 002FB088  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 802FE12C 002FB08C  7F 64 DB 78 */	mr r4, r27
/* 802FE130 002FB090  80 DF 00 00 */	lwz r6, 0(r31)
/* 802FE134 002FB094  7F A3 EB 78 */	mr r3, r29
/* 802FE138 002FB098  80 1F 00 04 */	lwz r0, 4(r31)
/* 802FE13C 002FB09C  38 A5 00 04 */	addi r5, r5, 4
/* 802FE140 002FB0A0  90 A1 00 24 */	stw r5, 0x24(r1)
/* 802FE144 002FB0A4  38 A1 00 08 */	addi r5, r1, 8
/* 802FE148 002FB0A8  3B 60 00 01 */	li r27, 1
/* 802FE14C 002FB0AC  90 C1 00 08 */	stw r6, 8(r1)
/* 802FE150 002FB0B0  90 01 00 0C */	stw r0, 0xc(r1)
/* 802FE154 002FB0B4  4B FF C1 55 */	bl "__ct__21CFBStreamedAnimReaderFRC43TSubAnimTypeToken<22CFBStreamedCompression>13CCharAnimTime"
/* 802FE158 002FB0B8  7C 7D 1B 78 */	mr r29, r3
lbl_802FE15C:
/* 802FE15C 002FB0BC  7C 7D 00 D0 */	neg r3, r29
/* 802FE160 002FB0C0  7F 60 07 75 */	extsb. r0, r27
/* 802FE164 002FB0C4  7C 60 EB 78 */	or r0, r3, r29
/* 802FE168 002FB0C8  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802FE16C 002FB0CC  98 1E 00 00 */	stb r0, 0(r30)
/* 802FE170 002FB0D0  93 BE 00 04 */	stw r29, 4(r30)
/* 802FE174 002FB0D4  41 82 00 10 */	beq lbl_802FE184
/* 802FE178 002FB0D8  38 61 00 18 */	addi r3, r1, 0x18
/* 802FE17C 002FB0DC  38 80 00 00 */	li r4, 0
/* 802FE180 002FB0E0  48 04 2C C1 */	bl __dt__6CTokenFv
lbl_802FE184:
/* 802FE184 002FB0E4  BB 61 00 4C */	lmw r27, 0x4c(r1)
/* 802FE188 002FB0E8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802FE18C 002FB0EC  7C 08 03 A6 */	mtlr r0
/* 802FE190 002FB0F0  38 21 00 60 */	addi r1, r1, 0x60
/* 802FE194 002FB0F4  4E 80 00 20 */	blr

.global AnimSourceFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer
AnimSourceFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer:
/* 802FE198 002FB0F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802FE19C 002FB0FC  7C 08 02 A6 */	mflr r0
/* 802FE1A0 002FB100  90 01 00 34 */	stw r0, 0x34(r1)
/* 802FE1A4 002FB104  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802FE1A8 002FB108  7C 7F 1B 78 */	mr r31, r3
/* 802FE1AC 002FB10C  38 60 00 7C */	li r3, 0x7c
/* 802FE1B0 002FB110  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802FE1B4 002FB114  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802FE1B8 002FB118  7C BD 2B 78 */	mr r29, r5
/* 802FE1BC 002FB11C  38 A0 00 00 */	li r5, 0
/* 802FE1C0 002FB120  93 81 00 20 */	stw r28, 0x20(r1)
/* 802FE1C4 002FB124  7C 9C 23 78 */	mr r28, r4
/* 802FE1C8 002FB128  80 E6 00 00 */	lwz r7, 0(r6)
/* 802FE1CC 002FB12C  3C C0 80 3D */	lis r6, lbl_803D6E58@ha
/* 802FE1D0 002FB130  38 06 6E 58 */	addi r0, r6, lbl_803D6E58@l
/* 802FE1D4 002FB134  90 E1 00 08 */	stw r7, 8(r1)
/* 802FE1D8 002FB138  7C 04 03 78 */	mr r4, r0
/* 802FE1DC 002FB13C  80 C7 00 04 */	lwz r6, 4(r7)
/* 802FE1E0 002FB140  38 06 00 01 */	addi r0, r6, 1
/* 802FE1E4 002FB144  90 07 00 04 */	stw r0, 4(r7)
/* 802FE1E8 002FB148  80 C1 00 08 */	lwz r6, 8(r1)
/* 802FE1EC 002FB14C  80 C6 00 00 */	lwz r6, 0(r6)
/* 802FE1F0 002FB150  83 C6 00 04 */	lwz r30, 4(r6)
/* 802FE1F4 002FB154  48 01 76 79 */	bl __nw__FUlPCcPCc
/* 802FE1F8 002FB158  7C 64 1B 79 */	or. r4, r3, r3
/* 802FE1FC 002FB15C  41 82 00 18 */	beq lbl_802FE214
/* 802FE200 002FB160  7F A4 EB 78 */	mr r4, r29
/* 802FE204 002FB164  7F C5 F3 78 */	mr r5, r30
/* 802FE208 002FB168  7F 86 E3 78 */	mr r6, r28
/* 802FE20C 002FB16C  48 00 02 0D */	bl __ct__21CAllFormatsAnimSourceFR12CInputStreamR12IObjectStoreRC10SObjectTag
/* 802FE210 002FB170  7C 64 1B 78 */	mr r4, r3
lbl_802FE214:
/* 802FE214 002FB174  7C 04 00 D0 */	neg r0, r4
/* 802FE218 002FB178  90 81 00 10 */	stw r4, 0x10(r1)
/* 802FE21C 002FB17C  7C 00 23 78 */	or r0, r0, r4
/* 802FE220 002FB180  38 61 00 14 */	addi r3, r1, 0x14
/* 802FE224 002FB184  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802FE228 002FB188  38 81 00 0C */	addi r4, r1, 0xc
/* 802FE22C 002FB18C  98 01 00 0C */	stb r0, 0xc(r1)
/* 802FE230 002FB190  48 00 01 21 */	bl "GetIObjObjectFor__31TToken<21CAllFormatsAnimSource>FRCQ24rstl33auto_ptr<21CAllFormatsAnimSource>"
/* 802FE234 002FB194  80 61 00 18 */	lwz r3, 0x18(r1)
/* 802FE238 002FB198  38 00 00 00 */	li r0, 0
/* 802FE23C 002FB19C  98 01 00 14 */	stb r0, 0x14(r1)
/* 802FE240 002FB1A0  7C 03 00 D0 */	neg r0, r3
/* 802FE244 002FB1A4  7C 00 1B 78 */	or r0, r0, r3
/* 802FE248 002FB1A8  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802FE24C 002FB1AC  98 1F 00 00 */	stb r0, 0(r31)
/* 802FE250 002FB1B0  90 7F 00 04 */	stw r3, 4(r31)
/* 802FE254 002FB1B4  88 01 00 14 */	lbz r0, 0x14(r1)
/* 802FE258 002FB1B8  28 00 00 00 */	cmplwi r0, 0
/* 802FE25C 002FB1BC  41 82 00 24 */	beq lbl_802FE280
/* 802FE260 002FB1C0  80 61 00 18 */	lwz r3, 0x18(r1)
/* 802FE264 002FB1C4  28 03 00 00 */	cmplwi r3, 0
/* 802FE268 002FB1C8  41 82 00 18 */	beq lbl_802FE280
/* 802FE26C 002FB1CC  81 83 00 00 */	lwz r12, 0(r3)
/* 802FE270 002FB1D0  38 80 00 01 */	li r4, 1
/* 802FE274 002FB1D4  81 8C 00 08 */	lwz r12, 8(r12)
/* 802FE278 002FB1D8  7D 89 03 A6 */	mtctr r12
/* 802FE27C 002FB1DC  4E 80 04 21 */	bctrl
lbl_802FE280:
/* 802FE280 002FB1E0  88 01 00 0C */	lbz r0, 0xc(r1)
/* 802FE284 002FB1E4  28 00 00 00 */	cmplwi r0, 0
/* 802FE288 002FB1E8  41 82 00 10 */	beq lbl_802FE298
/* 802FE28C 002FB1EC  80 61 00 10 */	lwz r3, 0x10(r1)
/* 802FE290 002FB1F0  38 80 00 01 */	li r4, 1
/* 802FE294 002FB1F4  4B FF FC 89 */	bl __dt__21CAllFormatsAnimSourceFv
lbl_802FE298:
/* 802FE298 002FB1F8  38 61 00 08 */	addi r3, r1, 8
/* 802FE29C 002FB1FC  4B D3 60 69 */	bl sub_80034304
/* 802FE2A0 002FB200  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802FE2A4 002FB204  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802FE2A8 002FB208  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802FE2AC 002FB20C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 802FE2B0 002FB210  83 81 00 20 */	lwz r28, 0x20(r1)
/* 802FE2B4 002FB214  7C 08 03 A6 */	mtlr r0
/* 802FE2B8 002FB218  38 21 00 30 */	addi r1, r1, 0x30
/* 802FE2BC 002FB21C  4E 80 00 20 */	blr

.global "__dt__49TObjOwnerDerivedFromIObj<21CAllFormatsAnimSource>Fv"
"__dt__49TObjOwnerDerivedFromIObj<21CAllFormatsAnimSource>Fv":
/* 802FE2C0 002FB220  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FE2C4 002FB224  7C 08 02 A6 */	mflr r0
/* 802FE2C8 002FB228  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FE2CC 002FB22C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802FE2D0 002FB230  7C 9F 23 78 */	mr r31, r4
/* 802FE2D4 002FB234  93 C1 00 08 */	stw r30, 8(r1)
/* 802FE2D8 002FB238  7C 7E 1B 79 */	or. r30, r3, r3
/* 802FE2DC 002FB23C  41 82 00 58 */	beq lbl_802FE334
/* 802FE2E0 002FB240  3C 60 80 3F */	lis r3, lbl_803ED568@ha
/* 802FE2E4 002FB244  38 03 D5 68 */	addi r0, r3, lbl_803ED568@l
/* 802FE2E8 002FB248  90 1E 00 00 */	stw r0, 0(r30)
/* 802FE2EC 002FB24C  80 7E 00 04 */	lwz r3, 4(r30)
/* 802FE2F0 002FB250  28 03 00 00 */	cmplwi r3, 0
/* 802FE2F4 002FB254  41 82 00 0C */	beq lbl_802FE300
/* 802FE2F8 002FB258  38 80 00 01 */	li r4, 1
/* 802FE2FC 002FB25C  4B FF FC 21 */	bl __dt__21CAllFormatsAnimSourceFv
lbl_802FE300:
/* 802FE300 002FB260  28 1E 00 00 */	cmplwi r30, 0
/* 802FE304 002FB264  41 82 00 20 */	beq lbl_802FE324
/* 802FE308 002FB268  3C 60 80 3E */	lis r3, __vt__31TObjOwnerDerivedFromIObjUntyped@ha
/* 802FE30C 002FB26C  38 03 8D 78 */	addi r0, r3, __vt__31TObjOwnerDerivedFromIObjUntyped@l
/* 802FE310 002FB270  90 1E 00 00 */	stw r0, 0(r30)
/* 802FE314 002FB274  41 82 00 10 */	beq lbl_802FE324
/* 802FE318 002FB278  3C 60 80 3E */	lis r3, __vt__4IObj@ha
/* 802FE31C 002FB27C  38 03 8D 6C */	addi r0, r3, __vt__4IObj@l
/* 802FE320 002FB280  90 1E 00 00 */	stw r0, 0(r30)
lbl_802FE324:
/* 802FE324 002FB284  7F E0 07 35 */	extsh. r0, r31
/* 802FE328 002FB288  40 81 00 0C */	ble lbl_802FE334
/* 802FE32C 002FB28C  7F C3 F3 78 */	mr r3, r30
/* 802FE330 002FB290  48 01 76 01 */	bl Free__7CMemoryFPCv
lbl_802FE334:
/* 802FE334 002FB294  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FE338 002FB298  7F C3 F3 78 */	mr r3, r30
/* 802FE33C 002FB29C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802FE340 002FB2A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802FE344 002FB2A4  7C 08 03 A6 */	mtlr r0
/* 802FE348 002FB2A8  38 21 00 10 */	addi r1, r1, 0x10
/* 802FE34C 002FB2AC  4E 80 00 20 */	blr

.global "GetIObjObjectFor__31TToken<21CAllFormatsAnimSource>FRCQ24rstl33auto_ptr<21CAllFormatsAnimSource>"
"GetIObjObjectFor__31TToken<21CAllFormatsAnimSource>FRCQ24rstl33auto_ptr<21CAllFormatsAnimSource>":
/* 802FE350 002FB2B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FE354 002FB2B4  7C 08 02 A6 */	mflr r0
/* 802FE358 002FB2B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FE35C 002FB2BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802FE360 002FB2C0  7C 7F 1B 78 */	mr r31, r3
/* 802FE364 002FB2C4  48 00 00 19 */	bl "GetNewDerivedObject__49TObjOwnerDerivedFromIObj<21CAllFormatsAnimSource>FRCQ24rstl33auto_ptr<21CAllFormatsAnimSource>"
/* 802FE368 002FB2C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FE36C 002FB2CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802FE370 002FB2D0  7C 08 03 A6 */	mtlr r0
/* 802FE374 002FB2D4  38 21 00 10 */	addi r1, r1, 0x10
/* 802FE378 002FB2D8  4E 80 00 20 */	blr

.global "GetNewDerivedObject__49TObjOwnerDerivedFromIObj<21CAllFormatsAnimSource>FRCQ24rstl33auto_ptr<21CAllFormatsAnimSource>"
"GetNewDerivedObject__49TObjOwnerDerivedFromIObj<21CAllFormatsAnimSource>FRCQ24rstl33auto_ptr<21CAllFormatsAnimSource>":
/* 802FE37C 002FB2DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FE380 002FB2E0  7C 08 02 A6 */	mflr r0
/* 802FE384 002FB2E4  3C A0 80 3D */	lis r5, lbl_803D6E58@ha
/* 802FE388 002FB2E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FE38C 002FB2EC  38 05 6E 58 */	addi r0, r5, lbl_803D6E58@l
/* 802FE390 002FB2F0  38 A0 00 00 */	li r5, 0
/* 802FE394 002FB2F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802FE398 002FB2F8  7C 9F 23 78 */	mr r31, r4
/* 802FE39C 002FB2FC  7C 04 03 78 */	mr r4, r0
/* 802FE3A0 002FB300  93 C1 00 08 */	stw r30, 8(r1)
/* 802FE3A4 002FB304  7C 7E 1B 78 */	mr r30, r3
/* 802FE3A8 002FB308  38 60 00 08 */	li r3, 8
/* 802FE3AC 002FB30C  48 01 74 C1 */	bl __nw__FUlPCcPCc
/* 802FE3B0 002FB310  28 03 00 00 */	cmplwi r3, 0
/* 802FE3B4 002FB314  41 82 00 38 */	beq lbl_802FE3EC
/* 802FE3B8 002FB318  3C 80 80 3E */	lis r4, __vt__4IObj@ha
/* 802FE3BC 002FB31C  3C A0 80 3E */	lis r5, __vt__31TObjOwnerDerivedFromIObjUntyped@ha
/* 802FE3C0 002FB320  38 04 8D 6C */	addi r0, r4, __vt__4IObj@l
/* 802FE3C4 002FB324  3C 80 80 3F */	lis r4, lbl_803ED568@ha
/* 802FE3C8 002FB328  90 03 00 00 */	stw r0, 0(r3)
/* 802FE3CC 002FB32C  38 C5 8D 78 */	addi r6, r5, __vt__31TObjOwnerDerivedFromIObjUntyped@l
/* 802FE3D0 002FB330  38 A0 00 00 */	li r5, 0
/* 802FE3D4 002FB334  38 04 D5 68 */	addi r0, r4, lbl_803ED568@l
/* 802FE3D8 002FB338  90 C3 00 00 */	stw r6, 0(r3)
/* 802FE3DC 002FB33C  98 BF 00 00 */	stb r5, 0(r31)
/* 802FE3E0 002FB340  80 9F 00 04 */	lwz r4, 4(r31)
/* 802FE3E4 002FB344  90 83 00 04 */	stw r4, 4(r3)
/* 802FE3E8 002FB348  90 03 00 00 */	stw r0, 0(r3)
lbl_802FE3EC:
/* 802FE3EC 002FB34C  7C 03 00 D0 */	neg r0, r3
/* 802FE3F0 002FB350  7C 00 1B 78 */	or r0, r0, r3
/* 802FE3F4 002FB354  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802FE3F8 002FB358  98 1E 00 00 */	stb r0, 0(r30)
/* 802FE3FC 002FB35C  90 7E 00 04 */	stw r3, 4(r30)
/* 802FE400 002FB360  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802FE404 002FB364  83 C1 00 08 */	lwz r30, 8(r1)
/* 802FE408 002FB368  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FE40C 002FB36C  7C 08 03 A6 */	mtlr r0
/* 802FE410 002FB370  38 21 00 10 */	addi r1, r1, 0x10
/* 802FE414 002FB374  4E 80 00 20 */	blr

.global __ct__21CAllFormatsAnimSourceFR12CInputStreamR12IObjectStoreRC10SObjectTag
__ct__21CAllFormatsAnimSourceFR12CInputStreamR12IObjectStoreRC10SObjectTag:
/* 802FE418 002FB378  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FE41C 002FB37C  7C 08 02 A6 */	mflr r0
/* 802FE420 002FB380  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FE424 002FB384  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802FE428 002FB388  7C DF 33 78 */	mr r31, r6
/* 802FE42C 002FB38C  93 C1 00 08 */	stw r30, 8(r1)
/* 802FE430 002FB390  7C 7E 1B 78 */	mr r30, r3
/* 802FE434 002FB394  48 00 01 3D */	bl __ct__16CAnimFormatUnionFR12CInputStreamR12IObjectStore
/* 802FE438 002FB398  C0 02 C7 30 */	lfs f0, lbl_805AE450@sda21(r2)
/* 802FE43C 002FB39C  7F C3 F3 78 */	mr r3, r30
/* 802FE440 002FB3A0  D0 1E 00 68 */	stfs f0, 0x68(r30)
/* 802FE444 002FB3A4  D0 1E 00 6C */	stfs f0, 0x6c(r30)
/* 802FE448 002FB3A8  D0 1E 00 70 */	stfs f0, 0x70(r30)
/* 802FE44C 002FB3AC  80 1F 00 00 */	lwz r0, 0(r31)
/* 802FE450 002FB3B0  90 1E 00 74 */	stw r0, 0x74(r30)
/* 802FE454 002FB3B4  80 1F 00 04 */	lwz r0, 4(r31)
/* 802FE458 002FB3B8  90 1E 00 78 */	stw r0, 0x78(r30)
/* 802FE45C 002FB3BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802FE460 002FB3C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802FE464 002FB3C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FE468 002FB3C8  7C 08 03 A6 */	mtlr r0
/* 802FE46C 002FB3CC  38 21 00 10 */	addi r1, r1, 0x10
/* 802FE470 002FB3D0  4E 80 00 20 */	blr

.global SubConstruct__16CAnimFormatUnionFPUcUiR12CInputStreamR12IObjectStore
SubConstruct__16CAnimFormatUnionFPUcUiR12CInputStreamR12IObjectStore:
/* 802FE474 002FB3D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FE478 002FB3D8  7C 08 02 A6 */	mflr r0
/* 802FE47C 002FB3DC  2C 04 00 01 */	cmpwi r4, 1
/* 802FE480 002FB3E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FE484 002FB3E4  41 82 00 4C */	beq lbl_802FE4D0
/* 802FE488 002FB3E8  40 80 00 10 */	bge lbl_802FE498
/* 802FE48C 002FB3EC  2C 04 00 00 */	cmpwi r4, 0
/* 802FE490 002FB3F0  40 80 00 14 */	bge lbl_802FE4A4
/* 802FE494 002FB3F4  48 00 00 3C */	b lbl_802FE4D0
lbl_802FE498:
/* 802FE498 002FB3F8  2C 04 00 03 */	cmpwi r4, 3
/* 802FE49C 002FB3FC  40 80 00 34 */	bge lbl_802FE4D0
/* 802FE4A0 002FB400  48 00 00 1C */	b lbl_802FE4BC
lbl_802FE4A4:
/* 802FE4A4 002FB404  28 03 00 00 */	cmplwi r3, 0
/* 802FE4A8 002FB408  41 82 00 28 */	beq lbl_802FE4D0
/* 802FE4AC 002FB40C  7C A4 2B 78 */	mr r4, r5
/* 802FE4B0 002FB410  7C C5 33 78 */	mr r5, r6
/* 802FE4B4 002FB414  4B FE ED 1D */	bl __ct__11CAnimSourceFR12CInputStreamR12IObjectStore
/* 802FE4B8 002FB418  48 00 00 18 */	b lbl_802FE4D0
lbl_802FE4BC:
/* 802FE4BC 002FB41C  28 03 00 00 */	cmplwi r3, 0
/* 802FE4C0 002FB420  41 82 00 10 */	beq lbl_802FE4D0
/* 802FE4C4 002FB424  7C A4 2B 78 */	mr r4, r5
/* 802FE4C8 002FB428  7C C5 33 78 */	mr r5, r6
/* 802FE4CC 002FB42C  4B FF D5 1D */	bl __ct__22CFBStreamedCompressionFR12CInputStreamR12IObjectStore
lbl_802FE4D0:
/* 802FE4D0 002FB430  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FE4D4 002FB434  7C 08 03 A6 */	mtlr r0
/* 802FE4D8 002FB438  38 21 00 10 */	addi r1, r1, 0x10
/* 802FE4DC 002FB43C  4E 80 00 20 */	blr

.global __dt__16CAnimFormatUnionFv
__dt__16CAnimFormatUnionFv:
/* 802FE4E0 002FB440  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FE4E4 002FB444  7C 08 02 A6 */	mflr r0
/* 802FE4E8 002FB448  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FE4EC 002FB44C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802FE4F0 002FB450  7C 9F 23 78 */	mr r31, r4
/* 802FE4F4 002FB454  93 C1 00 08 */	stw r30, 8(r1)
/* 802FE4F8 002FB458  7C 7E 1B 79 */	or. r30, r3, r3
/* 802FE4FC 002FB45C  41 82 00 58 */	beq lbl_802FE554
/* 802FE500 002FB460  80 1E 00 00 */	lwz r0, 0(r30)
/* 802FE504 002FB464  2C 00 00 01 */	cmpwi r0, 1
/* 802FE508 002FB468  41 82 00 3C */	beq lbl_802FE544
/* 802FE50C 002FB46C  40 80 00 10 */	bge lbl_802FE51C
/* 802FE510 002FB470  2C 00 00 00 */	cmpwi r0, 0
/* 802FE514 002FB474  40 80 00 14 */	bge lbl_802FE528
/* 802FE518 002FB478  48 00 00 2C */	b lbl_802FE544
lbl_802FE51C:
/* 802FE51C 002FB47C  2C 00 00 03 */	cmpwi r0, 3
/* 802FE520 002FB480  40 80 00 24 */	bge lbl_802FE544
/* 802FE524 002FB484  48 00 00 14 */	b lbl_802FE538
lbl_802FE528:
/* 802FE528 002FB488  38 7E 00 04 */	addi r3, r30, 4
/* 802FE52C 002FB48C  38 80 FF FF */	li r4, -1
/* 802FE530 002FB490  4B FE EB 39 */	bl __dt__11CAnimSourceFv
/* 802FE534 002FB494  48 00 00 10 */	b lbl_802FE544
lbl_802FE538:
/* 802FE538 002FB498  38 7E 00 04 */	addi r3, r30, 4
/* 802FE53C 002FB49C  38 80 FF FF */	li r4, -1
/* 802FE540 002FB4A0  4B FF D4 19 */	bl __dt__22CFBStreamedCompressionFv
lbl_802FE544:
/* 802FE544 002FB4A4  7F E0 07 35 */	extsh. r0, r31
/* 802FE548 002FB4A8  40 81 00 0C */	ble lbl_802FE554
/* 802FE54C 002FB4AC  7F C3 F3 78 */	mr r3, r30
/* 802FE550 002FB4B0  48 01 73 E1 */	bl Free__7CMemoryFPCv
lbl_802FE554:
/* 802FE554 002FB4B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FE558 002FB4B8  7F C3 F3 78 */	mr r3, r30
/* 802FE55C 002FB4BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802FE560 002FB4C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802FE564 002FB4C4  7C 08 03 A6 */	mtlr r0
/* 802FE568 002FB4C8  38 21 00 10 */	addi r1, r1, 0x10
/* 802FE56C 002FB4CC  4E 80 00 20 */	blr

.global __ct__16CAnimFormatUnionFR12CInputStreamR12IObjectStore
__ct__16CAnimFormatUnionFR12CInputStreamR12IObjectStore:
/* 802FE570 002FB4D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802FE574 002FB4D4  7C 08 02 A6 */	mflr r0
/* 802FE578 002FB4D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FE57C 002FB4DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802FE580 002FB4E0  7C BF 2B 78 */	mr r31, r5
/* 802FE584 002FB4E4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802FE588 002FB4E8  7C 9E 23 78 */	mr r30, r4
/* 802FE58C 002FB4EC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802FE590 002FB4F0  7C 7D 1B 78 */	mr r29, r3
/* 802FE594 002FB4F4  7F C3 F3 78 */	mr r3, r30
/* 802FE598 002FB4F8  48 04 06 ED */	bl ReadLong__12CInputStreamFv
/* 802FE59C 002FB4FC  90 7D 00 00 */	stw r3, 0(r29)
/* 802FE5A0 002FB500  7F C5 F3 78 */	mr r5, r30
/* 802FE5A4 002FB504  7F E6 FB 78 */	mr r6, r31
/* 802FE5A8 002FB508  38 7D 00 04 */	addi r3, r29, 4
/* 802FE5AC 002FB50C  80 9D 00 00 */	lwz r4, 0(r29)
/* 802FE5B0 002FB510  4B FF FE C5 */	bl SubConstruct__16CAnimFormatUnionFPUcUiR12CInputStreamR12IObjectStore
/* 802FE5B4 002FB514  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802FE5B8 002FB518  7F A3 EB 78 */	mr r3, r29
/* 802FE5BC 002FB51C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802FE5C0 002FB520  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802FE5C4 002FB524  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802FE5C8 002FB528  7C 08 03 A6 */	mtlr r0
/* 802FE5CC 002FB52C  38 21 00 20 */	addi r1, r1, 0x20
/* 802FE5D0 002FB530  4E 80 00 20 */	blr

.section .sdata2, "a"
.global lbl_805AE450
lbl_805AE450:
	# ROM: 0x3FACF0
	.4byte 0
	.4byte 0


.section .rodata
.global lbl_803D6E58
lbl_803D6E58:
	# ROM: 0x3D3E58
	.asciz "??(??)"
	.balign 4

