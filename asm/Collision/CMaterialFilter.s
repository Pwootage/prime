.include "macros.inc"

.comm lbl_8059FD18, 0x18, 4

.section .ctors, "wa"
lbl_ctor:
.4byte __sinit_CMaterialFilter_cpp

.section .text, "ax"

.global Passes__15CMaterialFilterCFRC13CMaterialList
Passes__15CMaterialFilterCFRC13CMaterialList:
/* 802D534C 002D22AC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 802D5350 002D22B0  2C 00 00 02 */	cmpwi r0, 2
/* 802D5354 002D22B4  41 82 00 68 */	beq lbl_802D53BC
/* 802D5358 002D22B8  40 80 00 14 */	bge lbl_802D536C
/* 802D535C 002D22BC  2C 00 00 00 */	cmpwi r0, 0
/* 802D5360 002D22C0  41 82 00 18 */	beq lbl_802D5378
/* 802D5364 002D22C4  40 80 00 1C */	bge lbl_802D5380
/* 802D5368 002D22C8  48 00 00 FC */	b lbl_802D5464
lbl_802D536C:
/* 802D536C 002D22CC  2C 00 00 04 */	cmpwi r0, 4
/* 802D5370 002D22D0  40 80 00 F4 */	bge lbl_802D5464
/* 802D5374 002D22D4  48 00 00 7C */	b lbl_802D53F0
lbl_802D5378:
/* 802D5378 002D22D8  38 60 00 01 */	li r3, 1
/* 802D537C 002D22DC  4E 80 00 20 */	blr
lbl_802D5380:
/* 802D5380 002D22E0  80 C3 00 00 */	lwz r6, 0(r3)
/* 802D5384 002D22E4  38 A0 00 00 */	li r5, 0
/* 802D5388 002D22E8  80 04 00 00 */	lwz r0, 0(r4)
/* 802D538C 002D22EC  80 E3 00 04 */	lwz r7, 4(r3)
/* 802D5390 002D22F0  80 64 00 04 */	lwz r3, 4(r4)
/* 802D5394 002D22F4  7C C0 00 38 */	and r0, r6, r0
/* 802D5398 002D22F8  7C 00 2A 78 */	xor r0, r0, r5
/* 802D539C 002D22FC  7C E3 18 38 */	and r3, r7, r3
/* 802D53A0 002D2300  7C 63 2A 78 */	xor r3, r3, r5
/* 802D53A4 002D2304  7C 60 03 79 */	or. r0, r3, r0
/* 802D53A8 002D2308  41 82 00 0C */	beq lbl_802D53B4
/* 802D53AC 002D230C  38 60 00 01 */	li r3, 1
/* 802D53B0 002D2310  4E 80 00 20 */	blr
lbl_802D53B4:
/* 802D53B4 002D2314  38 60 00 00 */	li r3, 0
/* 802D53B8 002D2318  4E 80 00 20 */	blr
lbl_802D53BC:
/* 802D53BC 002D231C  80 A4 00 00 */	lwz r5, 0(r4)
/* 802D53C0 002D2320  38 00 00 00 */	li r0, 0
/* 802D53C4 002D2324  80 C3 00 08 */	lwz r6, 8(r3)
/* 802D53C8 002D2328  80 E3 00 0C */	lwz r7, 0xc(r3)
/* 802D53CC 002D232C  80 84 00 04 */	lwz r4, 4(r4)
/* 802D53D0 002D2330  7C C3 28 38 */	and r3, r6, r5
/* 802D53D4 002D2334  7C 63 02 78 */	xor r3, r3, r0
/* 802D53D8 002D2338  7C E4 20 38 */	and r4, r7, r4
/* 802D53DC 002D233C  7C 80 02 78 */	xor r0, r4, r0
/* 802D53E0 002D2340  7C 03 1B 78 */	or r3, r0, r3
/* 802D53E4 002D2344  7C 63 00 34 */	cntlzw r3, r3
/* 802D53E8 002D2348  54 63 D9 7E */	srwi r3, r3, 5
/* 802D53EC 002D234C  4E 80 00 20 */	blr
lbl_802D53F0:
/* 802D53F0 002D2350  80 03 00 00 */	lwz r0, 0(r3)
/* 802D53F4 002D2354  38 C0 00 00 */	li r6, 0
/* 802D53F8 002D2358  80 E4 00 00 */	lwz r7, 0(r4)
/* 802D53FC 002D235C  80 A3 00 04 */	lwz r5, 4(r3)
/* 802D5400 002D2360  81 04 00 04 */	lwz r8, 4(r4)
/* 802D5404 002D2364  7C 00 38 38 */	and r0, r0, r7
/* 802D5408 002D2368  7C 00 32 78 */	xor r0, r0, r6
/* 802D540C 002D236C  7C A4 40 38 */	and r4, r5, r8
/* 802D5410 002D2370  7C 84 32 78 */	xor r4, r4, r6
/* 802D5414 002D2374  7C 80 03 79 */	or. r0, r4, r0
/* 802D5418 002D2378  41 82 00 0C */	beq lbl_802D5424
/* 802D541C 002D237C  38 00 00 01 */	li r0, 1
/* 802D5420 002D2380  48 00 00 08 */	b lbl_802D5428
lbl_802D5424:
/* 802D5424 002D2384  7C C0 33 78 */	mr r0, r6
lbl_802D5428:
/* 802D5428 002D2388  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 802D542C 002D238C  41 82 00 30 */	beq lbl_802D545C
/* 802D5430 002D2390  80 A3 00 08 */	lwz r5, 8(r3)
/* 802D5434 002D2394  38 80 00 00 */	li r4, 0
/* 802D5438 002D2398  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802D543C 002D239C  7C 80 FE 70 */	srawi r0, r4, 0x1f
/* 802D5440 002D23A0  7C A5 38 38 */	and r5, r5, r7
/* 802D5444 002D23A4  7C 63 40 38 */	and r3, r3, r8
/* 802D5448 002D23A8  7C 63 22 78 */	xor r3, r3, r4
/* 802D544C 002D23AC  7C A0 02 78 */	xor r0, r5, r0
/* 802D5450 002D23B0  7C 60 03 79 */	or. r0, r3, r0
/* 802D5454 002D23B4  40 82 00 08 */	bne lbl_802D545C
/* 802D5458 002D23B8  38 C0 00 01 */	li r6, 1
lbl_802D545C:
/* 802D545C 002D23BC  7C C3 33 78 */	mr r3, r6
/* 802D5460 002D23C0  4E 80 00 20 */	blr
lbl_802D5464:
/* 802D5464 002D23C4  38 60 00 01 */	li r3, 1
/* 802D5468 002D23C8  4E 80 00 20 */	blr

.global __sinit_CMaterialFilter_cpp
__sinit_CMaterialFilter_cpp:
/* 802D546C 002D23CC  3C 60 80 5A */	lis r3, lbl_8059FD18@ha
/* 802D5470 002D23D0  38 80 FF FF */	li r4, -1
/* 802D5474 002D23D4  38 63 FD 18 */	addi r3, r3, lbl_8059FD18@l
/* 802D5478 002D23D8  38 00 00 00 */	li r0, 0
/* 802D547C 002D23DC  90 83 00 04 */	stw r4, 4(r3)
/* 802D5480 002D23E0  90 03 00 00 */	stw r0, 0(r3)
/* 802D5484 002D23E4  90 03 00 0C */	stw r0, 0xc(r3)
/* 802D5488 002D23E8  90 03 00 08 */	stw r0, 8(r3)
/* 802D548C 002D23EC  90 03 00 10 */	stw r0, 0x10(r3)
/* 802D5490 002D23F0  4E 80 00 20 */	blr
