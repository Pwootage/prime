.include "macros.inc"

.section .data, "wa"
lbl_803F6460:
	.4byte 0x000006FD
	.4byte 0x000007CF
	.4byte 0x000001B1
	.4byte 0x00000095
	
.section .text, "ax" 

.global ReverbSTDCreate
ReverbSTDCreate:
/* 803B5244 003B21A4  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 803B5248 003B21A8  7C 08 02 A6 */	mflr r0
/* 803B524C 003B21AC  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 803B5250 003B21B0  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 803B5254 003B21B4  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, qr0
/* 803B5258 003B21B8  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 803B525C 003B21BC  F3 C1 00 98 */	psq_st f30, 152(r1), 0, qr0
/* 803B5260 003B21C0  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 803B5264 003B21C4  F3 A1 00 88 */	psq_st f29, 136(r1), 0, qr0
/* 803B5268 003B21C8  DB 81 00 70 */	stfd f28, 0x70(r1)
/* 803B526C 003B21CC  F3 81 00 78 */	psq_st f28, 120(r1), 0, qr0
/* 803B5270 003B21D0  DB 61 00 60 */	stfd f27, 0x60(r1)
/* 803B5274 003B21D4  F3 61 00 68 */	psq_st f27, 104(r1), 0, qr0
/* 803B5278 003B21D8  DB 41 00 50 */	stfd f26, 0x50(r1)
/* 803B527C 003B21DC  F3 41 00 58 */	psq_st f26, 88(r1), 0, qr0
/* 803B5280 003B21E0  DB 21 00 40 */	stfd f25, 0x40(r1)
/* 803B5284 003B21E4  F3 21 00 48 */	psq_st f25, 72(r1), 0, qr0
/* 803B5288 003B21E8  39 61 00 40 */	addi r11, r1, 0x40
/* 803B528C 003B21EC  4B FD 47 D9 */	bl func_80389A64
/* 803B5290 003B21F0  FF 20 08 90 */	fmr f25, f1
/* 803B5294 003B21F4  C0 C2 D6 90 */	lfs f6, lbl_805AF3B0@sda21(r2)
/* 803B5298 003B21F8  FF 80 10 90 */	fmr f28, f2
/* 803B529C 003B21FC  7C 77 1B 78 */	mr r23, r3
/* 803B52A0 003B2200  FF 40 18 90 */	fmr f26, f3
/* 803B52A4 003B2204  FF 60 20 90 */	fmr f27, f4
/* 803B52A8 003B2208  FF E0 28 90 */	fmr f31, f5
/* 803B52AC 003B220C  FC 19 30 40 */	fcmpo cr0, f25, f6
/* 803B52B0 003B2210  41 80 00 5C */	blt lbl_803B530C
/* 803B52B4 003B2214  C0 22 D6 94 */	lfs f1, lbl_805AF3B4@sda21(r2)
/* 803B52B8 003B2218  FC 19 08 40 */	fcmpo cr0, f25, f1
/* 803B52BC 003B221C  41 81 00 50 */	bgt lbl_803B530C
/* 803B52C0 003B2220  C0 02 D6 98 */	lfs f0, lbl_805AF3B8@sda21(r2)
/* 803B52C4 003B2224  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 803B52C8 003B2228  41 80 00 44 */	blt lbl_803B530C
/* 803B52CC 003B222C  C0 02 D6 9C */	lfs f0, lbl_805AF3BC@sda21(r2)
/* 803B52D0 003B2230  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 803B52D4 003B2234  41 81 00 38 */	bgt lbl_803B530C
/* 803B52D8 003B2238  FC 1A 30 40 */	fcmpo cr0, f26, f6
/* 803B52DC 003B223C  41 80 00 30 */	blt lbl_803B530C
/* 803B52E0 003B2240  FC 1A 08 40 */	fcmpo cr0, f26, f1
/* 803B52E4 003B2244  41 81 00 28 */	bgt lbl_803B530C
/* 803B52E8 003B2248  FC 1B 30 40 */	fcmpo cr0, f27, f6
/* 803B52EC 003B224C  41 80 00 20 */	blt lbl_803B530C
/* 803B52F0 003B2250  FC 1B 08 40 */	fcmpo cr0, f27, f1
/* 803B52F4 003B2254  41 81 00 18 */	bgt lbl_803B530C
/* 803B52F8 003B2258  FC 1F 30 40 */	fcmpo cr0, f31, f6
/* 803B52FC 003B225C  41 80 00 10 */	blt lbl_803B530C
/* 803B5300 003B2260  C0 02 D6 A0 */	lfs f0, lbl_805AF3C0@sda21(r2)
/* 803B5304 003B2264  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 803B5308 003B2268  40 81 00 0C */	ble lbl_803B5314
lbl_803B530C:
/* 803B530C 003B226C  38 60 00 00 */	li r3, 0
/* 803B5310 003B2270  48 00 03 0C */	b lbl_803B561C
lbl_803B5314:
/* 803B5314 003B2274  38 80 00 00 */	li r4, 0
/* 803B5318 003B2278  38 A0 01 3C */	li r5, 0x13c
/* 803B531C 003B227C  4B C4 E0 8D */	bl memset
/* 803B5320 003B2280  C0 02 D6 A4 */	lfs f0, lbl_805AF3C4@sda21(r2)
/* 803B5324 003B2284  3C 60 80 3F */	lis r3, lbl_803F6460@ha
/* 803B5328 003B2288  C3 C2 D6 90 */	lfs f30, lbl_805AF3B0@sda21(r2)
/* 803B532C 003B228C  3B E3 64 60 */	addi r31, r3, lbl_803F6460@l
/* 803B5330 003B2290  EF 80 07 32 */	fmuls f28, f0, f28
/* 803B5334 003B2294  CB A2 D6 B8 */	lfd f29, lbl_805AF3D8@sda21(r2)
/* 803B5338 003B2298  3B 00 00 00 */	li r24, 0
/* 803B533C 003B229C  3F C0 43 30 */	lis r30, 0x4330
/* 803B5340 003B22A0  48 00 01 F8 */	b lbl_803B5538
lbl_803B5344:
/* 803B5344 003B22A4  57 1A 0D FC */	rlwinm r26, r24, 1, 0x17, 0x1e
/* 803B5348 003B22A8  3B 20 00 00 */	li r25, 0
/* 803B534C 003B22AC  48 00 00 F8 */	b lbl_803B5444
lbl_803B5350:
/* 803B5350 003B22B0  57 20 06 3E */	clrlwi r0, r25, 0x18
/* 803B5354 003B22B4  57 3D 15 BA */	rlwinm r29, r25, 2, 0x16, 0x1d
/* 803B5358 003B22B8  7F 60 D2 14 */	add r27, r0, r26
/* 803B535C 003B22BC  7C 7F E8 2E */	lwzx r3, r31, r29
/* 803B5360 003B22C0  1C 1B 00 14 */	mulli r0, r27, 0x14
/* 803B5364 003B22C4  3A C3 00 02 */	addi r22, r3, 2
/* 803B5368 003B22C8  56 D5 10 3A */	slwi r21, r22, 2
/* 803B536C 003B22CC  7F 97 02 14 */	add r28, r23, r0
/* 803B5370 003B22D0  92 BC 00 80 */	stw r21, 0x80(r28)
/* 803B5374 003B22D4  7E A3 AB 78 */	mr r3, r21
/* 803B5378 003B22D8  4B FF FD BD */	bl salMalloc
/* 803B537C 003B22DC  90 7C 00 84 */	stw r3, 0x84(r28)
/* 803B5380 003B22E0  7E A5 AB 78 */	mr r5, r21
/* 803B5384 003B22E4  38 80 00 00 */	li r4, 0
/* 803B5388 003B22E8  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 803B538C 003B22EC  4B C4 E0 1D */	bl memset
/* 803B5390 003B22F0  D3 DC 00 88 */	stfs f30, 0x88(r28)
/* 803B5394 003B22F4  7E C0 0E 70 */	srawi r0, r22, 1
/* 803B5398 003B22F8  54 03 10 3A */	slwi r3, r0, 2
/* 803B539C 003B22FC  80 1C 00 78 */	lwz r0, 0x78(r28)
/* 803B53A0 003B2300  7C 03 00 50 */	subf r0, r3, r0
/* 803B53A4 003B2304  90 1C 00 7C */	stw r0, 0x7c(r28)
/* 803B53A8 003B2308  48 00 00 14 */	b lbl_803B53BC
lbl_803B53AC:
/* 803B53AC 003B230C  80 7C 00 7C */	lwz r3, 0x7c(r28)
/* 803B53B0 003B2310  80 1C 00 80 */	lwz r0, 0x80(r28)
/* 803B53B4 003B2314  7C 03 02 14 */	add r0, r3, r0
/* 803B53B8 003B2318  90 1C 00 7C */	stw r0, 0x7c(r28)
lbl_803B53BC:
/* 803B53BC 003B231C  80 1C 00 7C */	lwz r0, 0x7c(r28)
/* 803B53C0 003B2320  2C 00 00 00 */	cmpwi r0, 0
/* 803B53C4 003B2324  41 80 FF E8 */	blt lbl_803B53AC
/* 803B53C8 003B2328  38 00 00 00 */	li r0, 0
/* 803B53CC 003B232C  90 1C 00 78 */	stw r0, 0x78(r28)
/* 803B53D0 003B2330  90 1C 00 7C */	stw r0, 0x7c(r28)
/* 803B53D4 003B2334  7C 7F E8 2E */	lwzx r3, r31, r29
/* 803B53D8 003B2338  80 1C 00 78 */	lwz r0, 0x78(r28)
/* 803B53DC 003B233C  54 63 10 3A */	slwi r3, r3, 2
/* 803B53E0 003B2340  7C 03 00 50 */	subf r0, r3, r0
/* 803B53E4 003B2344  90 1C 00 7C */	stw r0, 0x7c(r28)
/* 803B53E8 003B2348  48 00 00 14 */	b lbl_803B53FC
lbl_803B53EC:
/* 803B53EC 003B234C  80 7C 00 7C */	lwz r3, 0x7c(r28)
/* 803B53F0 003B2350  80 1C 00 80 */	lwz r0, 0x80(r28)
/* 803B53F4 003B2354  7C 03 02 14 */	add r0, r3, r0
/* 803B53F8 003B2358  90 1C 00 7C */	stw r0, 0x7c(r28)
lbl_803B53FC:
/* 803B53FC 003B235C  80 1C 00 7C */	lwz r0, 0x7c(r28)
/* 803B5400 003B2360  2C 00 00 00 */	cmpwi r0, 0
/* 803B5404 003B2364  41 80 FF E8 */	blt lbl_803B53EC
/* 803B5408 003B2368  7C 1F E8 2E */	lwzx r0, r31, r29
/* 803B540C 003B236C  93 C1 00 08 */	stw r30, 8(r1)
/* 803B5410 003B2370  1C 00 FF FD */	mulli r0, r0, -3
/* 803B5414 003B2374  C8 22 D6 A8 */	lfd f1, lbl_805AF3C8@sda21(r2)
/* 803B5418 003B2378  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 803B541C 003B237C  90 01 00 0C */	stw r0, 0xc(r1)
/* 803B5420 003B2380  C8 01 00 08 */	lfd f0, 8(r1)
/* 803B5424 003B2384  EC 00 E8 28 */	fsubs f0, f0, f29
/* 803B5428 003B2388  EC 40 E0 24 */	fdivs f2, f0, f28
/* 803B542C 003B238C  4B FD F8 C1 */	bl pow
/* 803B5430 003B2390  FC 00 08 18 */	frsp f0, f1
/* 803B5434 003B2394  57 63 10 3A */	slwi r3, r27, 2
/* 803B5438 003B2398  38 03 00 F4 */	addi r0, r3, 0xf4
/* 803B543C 003B239C  3B 39 00 01 */	addi r25, r25, 1
/* 803B5440 003B23A0  7C 17 05 2E */	stfsx f0, r23, r0
lbl_803B5444:
/* 803B5444 003B23A4  57 20 06 3E */	clrlwi r0, r25, 0x18
/* 803B5448 003B23A8  28 00 00 02 */	cmplwi r0, 2
/* 803B544C 003B23AC  41 80 FF 04 */	blt lbl_803B5350
/* 803B5450 003B23B0  3B A0 00 00 */	li r29, 0
/* 803B5454 003B23B4  48 00 00 C8 */	b lbl_803B551C
lbl_803B5458:
/* 803B5458 003B23B8  57 A0 15 BA */	rlwinm r0, r29, 2, 0x16, 0x1d
/* 803B545C 003B23BC  57 A4 06 3E */	clrlwi r4, r29, 0x18
/* 803B5460 003B23C0  7C 7F 02 14 */	add r3, r31, r0
/* 803B5464 003B23C4  7C 04 D2 14 */	add r0, r4, r26
/* 803B5468 003B23C8  3B 83 00 08 */	addi r28, r3, 8
/* 803B546C 003B23CC  80 63 00 08 */	lwz r3, 8(r3)
/* 803B5470 003B23D0  1C 00 00 14 */	mulli r0, r0, 0x14
/* 803B5474 003B23D4  3A C3 00 02 */	addi r22, r3, 2
/* 803B5478 003B23D8  56 D5 10 3A */	slwi r21, r22, 2
/* 803B547C 003B23DC  7F 77 02 14 */	add r27, r23, r0
/* 803B5480 003B23E0  92 BB 00 08 */	stw r21, 8(r27)
/* 803B5484 003B23E4  7E A3 AB 78 */	mr r3, r21
/* 803B5488 003B23E8  4B FF FC AD */	bl salMalloc
/* 803B548C 003B23EC  90 7B 00 0C */	stw r3, 0xc(r27)
/* 803B5490 003B23F0  7E A5 AB 78 */	mr r5, r21
/* 803B5494 003B23F4  38 80 00 00 */	li r4, 0
/* 803B5498 003B23F8  80 7B 00 0C */	lwz r3, 0xc(r27)
/* 803B549C 003B23FC  4B C4 DF 0D */	bl memset
/* 803B54A0 003B2400  D3 DB 00 10 */	stfs f30, 0x10(r27)
/* 803B54A4 003B2404  7E C0 0E 70 */	srawi r0, r22, 1
/* 803B54A8 003B2408  54 03 10 3A */	slwi r3, r0, 2
/* 803B54AC 003B240C  80 1B 00 00 */	lwz r0, 0(r27)
/* 803B54B0 003B2410  7C 03 00 50 */	subf r0, r3, r0
/* 803B54B4 003B2414  90 1B 00 04 */	stw r0, 4(r27)
/* 803B54B8 003B2418  48 00 00 14 */	b lbl_803B54CC
lbl_803B54BC:
/* 803B54BC 003B241C  80 7B 00 04 */	lwz r3, 4(r27)
/* 803B54C0 003B2420  80 1B 00 08 */	lwz r0, 8(r27)
/* 803B54C4 003B2424  7C 03 02 14 */	add r0, r3, r0
/* 803B54C8 003B2428  90 1B 00 04 */	stw r0, 4(r27)
lbl_803B54CC:
/* 803B54CC 003B242C  80 1B 00 04 */	lwz r0, 4(r27)
/* 803B54D0 003B2430  2C 00 00 00 */	cmpwi r0, 0
/* 803B54D4 003B2434  41 80 FF E8 */	blt lbl_803B54BC
/* 803B54D8 003B2438  38 00 00 00 */	li r0, 0
/* 803B54DC 003B243C  90 1B 00 00 */	stw r0, 0(r27)
/* 803B54E0 003B2440  90 1B 00 04 */	stw r0, 4(r27)
/* 803B54E4 003B2444  80 7C 00 00 */	lwz r3, 0(r28)
/* 803B54E8 003B2448  80 1B 00 00 */	lwz r0, 0(r27)
/* 803B54EC 003B244C  54 63 10 3A */	slwi r3, r3, 2
/* 803B54F0 003B2450  7C 03 00 50 */	subf r0, r3, r0
/* 803B54F4 003B2454  90 1B 00 04 */	stw r0, 4(r27)
/* 803B54F8 003B2458  48 00 00 14 */	b lbl_803B550C
lbl_803B54FC:
/* 803B54FC 003B245C  80 7B 00 04 */	lwz r3, 4(r27)
/* 803B5500 003B2460  80 1B 00 08 */	lwz r0, 8(r27)
/* 803B5504 003B2464  7C 03 02 14 */	add r0, r3, r0
/* 803B5508 003B2468  90 1B 00 04 */	stw r0, 4(r27)
lbl_803B550C:
/* 803B550C 003B246C  80 1B 00 04 */	lwz r0, 4(r27)
/* 803B5510 003B2470  2C 00 00 00 */	cmpwi r0, 0
/* 803B5514 003B2474  41 80 FF E8 */	blt lbl_803B54FC
/* 803B5518 003B2478  3B BD 00 01 */	addi r29, r29, 1
lbl_803B551C:
/* 803B551C 003B247C  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 803B5520 003B2480  28 00 00 02 */	cmplwi r0, 2
/* 803B5524 003B2484  41 80 FF 34 */	blt lbl_803B5458
/* 803B5528 003B2488  57 03 15 BA */	rlwinm r3, r24, 2, 0x16, 0x1d
/* 803B552C 003B248C  3B 18 00 01 */	addi r24, r24, 1
/* 803B5530 003B2490  38 03 01 0C */	addi r0, r3, 0x10c
/* 803B5534 003B2494  7F D7 05 2E */	stfsx f30, r23, r0
lbl_803B5538:
/* 803B5538 003B2498  57 00 06 3E */	clrlwi r0, r24, 0x18
/* 803B553C 003B249C  28 00 00 03 */	cmplwi r0, 3
/* 803B5540 003B24A0  41 80 FE 04 */	blt lbl_803B5344
/* 803B5544 003B24A4  D3 37 00 F0 */	stfs f25, 0xf0(r23)
/* 803B5548 003B24A8  C0 02 D6 B0 */	lfs f0, lbl_805AF3D0@sda21(r2)
/* 803B554C 003B24AC  D3 57 01 18 */	stfs f26, 0x118(r23)
/* 803B5550 003B24B0  D3 77 01 1C */	stfs f27, 0x11c(r23)
/* 803B5554 003B24B4  C0 37 01 1C */	lfs f1, 0x11c(r23)
/* 803B5558 003B24B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803B555C 003B24BC  40 80 00 08 */	bge lbl_803B5564
/* 803B5560 003B24C0  D0 17 01 1C */	stfs f0, 0x11c(r23)
lbl_803B5564:
/* 803B5564 003B24C4  C0 42 D6 B4 */	lfs f2, lbl_805AF3D4@sda21(r2)
/* 803B5568 003B24C8  C0 37 01 1C */	lfs f1, 0x11c(r23)
/* 803B556C 003B24CC  C0 02 D6 90 */	lfs f0, lbl_805AF3B0@sda21(r2)
/* 803B5570 003B24D0  EC 22 00 72 */	fmuls f1, f2, f1
/* 803B5574 003B24D4  C0 42 D6 B0 */	lfs f2, lbl_805AF3D0@sda21(r2)
/* 803B5578 003B24D8  C0 62 D6 94 */	lfs f3, lbl_805AF3B4@sda21(r2)
/* 803B557C 003B24DC  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 803B5580 003B24E0  EC 02 08 2A */	fadds f0, f2, f1
/* 803B5584 003B24E4  EC 03 00 28 */	fsubs f0, f3, f0
/* 803B5588 003B24E8  D0 17 01 1C */	stfs f0, 0x11c(r23)
/* 803B558C 003B24EC  41 82 00 6C */	beq lbl_803B55F8
/* 803B5590 003B24F0  C0 02 D6 A4 */	lfs f0, lbl_805AF3C4@sda21(r2)
/* 803B5594 003B24F4  3A C0 00 00 */	li r22, 0
/* 803B5598 003B24F8  EC 00 07 F2 */	fmuls f0, f0, f31
/* 803B559C 003B24FC  FC 00 00 1E */	fctiwz f0, f0
/* 803B55A0 003B2500  D8 01 00 08 */	stfd f0, 8(r1)
/* 803B55A4 003B2504  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803B55A8 003B2508  90 17 01 20 */	stw r0, 0x120(r23)
/* 803B55AC 003B250C  48 00 00 3C */	b lbl_803B55E8
lbl_803B55B0:
/* 803B55B0 003B2510  80 17 01 20 */	lwz r0, 0x120(r23)
/* 803B55B4 003B2514  54 03 10 3A */	slwi r3, r0, 2
/* 803B55B8 003B2518  4B FF FB 7D */	bl salMalloc
/* 803B55BC 003B251C  56 C0 15 BA */	rlwinm r0, r22, 2, 0x16, 0x1d
/* 803B55C0 003B2520  38 80 00 00 */	li r4, 0
/* 803B55C4 003B2524  7E B7 02 14 */	add r21, r23, r0
/* 803B55C8 003B2528  90 75 01 24 */	stw r3, 0x124(r21)
/* 803B55CC 003B252C  80 17 01 20 */	lwz r0, 0x120(r23)
/* 803B55D0 003B2530  80 75 01 24 */	lwz r3, 0x124(r21)
/* 803B55D4 003B2534  54 05 10 3A */	slwi r5, r0, 2
/* 803B55D8 003B2538  4B C4 DD D1 */	bl memset
/* 803B55DC 003B253C  80 15 01 24 */	lwz r0, 0x124(r21)
/* 803B55E0 003B2540  3A D6 00 01 */	addi r22, r22, 1
/* 803B55E4 003B2544  90 15 01 30 */	stw r0, 0x130(r21)
lbl_803B55E8:
/* 803B55E8 003B2548  56 C0 06 3E */	clrlwi r0, r22, 0x18
/* 803B55EC 003B254C  28 00 00 03 */	cmplwi r0, 3
/* 803B55F0 003B2550  41 80 FF C0 */	blt lbl_803B55B0
/* 803B55F4 003B2554  48 00 00 24 */	b lbl_803B5618
lbl_803B55F8:
/* 803B55F8 003B2558  38 00 00 00 */	li r0, 0
/* 803B55FC 003B255C  90 17 01 20 */	stw r0, 0x120(r23)
/* 803B5600 003B2560  90 17 01 30 */	stw r0, 0x130(r23)
/* 803B5604 003B2564  90 17 01 24 */	stw r0, 0x124(r23)
/* 803B5608 003B2568  90 17 01 34 */	stw r0, 0x134(r23)
/* 803B560C 003B256C  90 17 01 28 */	stw r0, 0x128(r23)
/* 803B5610 003B2570  90 17 01 38 */	stw r0, 0x138(r23)
/* 803B5614 003B2574  90 17 01 2C */	stw r0, 0x12c(r23)
lbl_803B5618:
/* 803B5618 003B2578  38 60 00 01 */	li r3, 1
lbl_803B561C:
/* 803B561C 003B257C  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, qr0
/* 803B5620 003B2580  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 803B5624 003B2584  E3 C1 00 98 */	psq_l f30, 152(r1), 0, qr0
/* 803B5628 003B2588  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 803B562C 003B258C  E3 A1 00 88 */	psq_l f29, 136(r1), 0, qr0
/* 803B5630 003B2590  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 803B5634 003B2594  E3 81 00 78 */	psq_l f28, 120(r1), 0, qr0
/* 803B5638 003B2598  CB 81 00 70 */	lfd f28, 0x70(r1)
/* 803B563C 003B259C  E3 61 00 68 */	psq_l f27, 104(r1), 0, qr0
/* 803B5640 003B25A0  CB 61 00 60 */	lfd f27, 0x60(r1)
/* 803B5644 003B25A4  E3 41 00 58 */	psq_l f26, 88(r1), 0, qr0
/* 803B5648 003B25A8  CB 41 00 50 */	lfd f26, 0x50(r1)
/* 803B564C 003B25AC  E3 21 00 48 */	psq_l f25, 72(r1), 0, qr0
/* 803B5650 003B25B0  39 61 00 40 */	addi r11, r1, 0x40
/* 803B5654 003B25B4  CB 21 00 40 */	lfd f25, 0x40(r1)
/* 803B5658 003B25B8  4B FD 44 59 */	bl _restgpr_21
/* 803B565C 003B25BC  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 803B5660 003B25C0  7C 08 03 A6 */	mtlr r0
/* 803B5664 003B25C4  38 21 00 B0 */	addi r1, r1, 0xb0
/* 803B5668 003B25C8  4E 80 00 20 */	blr 

.global HandleReverb
HandleReverb:
/* 803B566C 003B25CC  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 803B5670 003B25D0  BE 21 00 08 */	stmw r17, 8(r1)
/* 803B5674 003B25D4  D9 C1 00 58 */	stfd f14, 0x58(r1)
/* 803B5678 003B25D8  D9 E1 00 60 */	stfd f15, 0x60(r1)
/* 803B567C 003B25DC  DA 01 00 68 */	stfd f16, 0x68(r1)
/* 803B5680 003B25E0  DA 21 00 70 */	stfd f17, 0x70(r1)
/* 803B5684 003B25E4  DA 41 00 78 */	stfd f18, 0x78(r1)
/* 803B5688 003B25E8  DA 61 00 80 */	stfd f19, 0x80(r1)
/* 803B568C 003B25EC  DA 81 00 88 */	stfd f20, 0x88(r1)
/* 803B5690 003B25F0  3F E0 80 5B */	lis r31, lbl_805AF3E0@ha
/* 803B5694 003B25F4  C0 DF F3 E0 */	lfs f6, lbl_805AF3E0@l(r31)
/* 803B5698 003B25F8  3F E0 80 5B */	lis r31, lbl_805AF3E4@ha
/* 803B569C 003B25FC  C1 3F F3 E4 */	lfs f9, lbl_805AF3E4@l(r31)
/* 803B56A0 003B2600  3F E0 80 5B */	lis r31, lbl_805AF3E8@ha
/* 803B56A4 003B2604  C8 BF F3 E8 */	lfd f5, lbl_805AF3E8@l(r31)
/* 803B56A8 003B2608  C0 44 00 F0 */	lfs f2, 0xf0(r4)
/* 803B56AC 003B260C  C1 64 01 1C */	lfs f11, 0x11c(r4)
/* 803B56B0 003B2610  C1 04 01 18 */	lfs f8, 0x118(r4)
/* 803B56B4 003B2614  EC 68 02 72 */	fmuls f3, f8, f9
/* 803B56B8 003B2618  EC 89 18 28 */	fsubs f4, f9, f3
/* 803B56BC 003B261C  3F C0 43 30 */	lis r30, 0x4330
/* 803B56C0 003B2620  93 C1 00 50 */	stw r30, 0x50(r1)
/* 803B56C4 003B2624  38 A0 00 00 */	li r5, 0
lbl_803B56C8:
/* 803B56C8 003B2628  54 BF 18 38 */	slwi r31, r5, 3
/* 803B56CC 003B262C  7F FF 22 14 */	add r31, r31, r4
/* 803B56D0 003B2630  C2 7F 00 F4 */	lfs f19, 0xf4(r31)
/* 803B56D4 003B2634  C2 9F 00 F8 */	lfs f20, 0xf8(r31)
/* 803B56D8 003B2638  54 BF 10 3A */	slwi r31, r5, 2
/* 803B56DC 003B263C  7F FF 22 14 */	add r31, r31, r4
/* 803B56E0 003B2640  C0 FF 01 0C */	lfs f7, 0x10c(r31)
/* 803B56E4 003B2644  83 7F 01 24 */	lwz r27, 0x124(r31)
/* 803B56E8 003B2648  83 9F 01 30 */	lwz r28, 0x130(r31)
/* 803B56EC 003B264C  83 E4 01 20 */	lwz r31, 0x120(r4)
/* 803B56F0 003B2650  3A DF FF FF */	addi r22, r31, -1
/* 803B56F4 003B2654  56 D6 10 3A */	slwi r22, r22, 2
/* 803B56F8 003B2658  7E D6 DA 14 */	add r22, r22, r27
/* 803B56FC 003B265C  2F 9F 00 00 */	cmpwi cr7, r31, 0
/* 803B5700 003B2660  1F E5 00 28 */	mulli r31, r5, 0x28
/* 803B5704 003B2664  3B A4 00 78 */	addi r29, r4, 0x78
/* 803B5708 003B2668  7F BD FA 14 */	add r29, r29, r31
/* 803B570C 003B266C  3B C4 00 00 */	addi r30, r4, 0
/* 803B5710 003B2670  7F DE FA 14 */	add r30, r30, r31
/* 803B5714 003B2674  82 BD 00 00 */	lwz r21, 0(r29)
/* 803B5718 003B2678  82 9D 00 04 */	lwz r20, 4(r29)
/* 803B571C 003B267C  82 7D 00 14 */	lwz r19, 0x14(r29)
/* 803B5720 003B2680  82 5D 00 18 */	lwz r18, 0x18(r29)
/* 803B5724 003B2684  C1 FD 00 10 */	lfs f15, 0x10(r29)
/* 803B5728 003B2688  C2 1D 00 24 */	lfs f16, 0x24(r29)
/* 803B572C 003B268C  83 5D 00 08 */	lwz r26, 8(r29)
/* 803B5730 003B2690  83 3D 00 1C */	lwz r25, 0x1c(r29)
/* 803B5734 003B2694  80 FD 00 0C */	lwz r7, 0xc(r29)
/* 803B5738 003B2698  81 1D 00 20 */	lwz r8, 0x20(r29)
/* 803B573C 003B269C  81 9E 00 00 */	lwz r12, 0(r30)
/* 803B5740 003B26A0  81 7E 00 04 */	lwz r11, 4(r30)
/* 803B5744 003B26A4  81 5E 00 14 */	lwz r10, 0x14(r30)
/* 803B5748 003B26A8  81 3E 00 18 */	lwz r9, 0x18(r30)
/* 803B574C 003B26AC  C2 3E 00 10 */	lfs f17, 0x10(r30)
/* 803B5750 003B26B0  C2 5E 00 24 */	lfs f18, 0x24(r30)
/* 803B5754 003B26B4  83 1E 00 08 */	lwz r24, 8(r30)
/* 803B5758 003B26B8  82 FE 00 1C */	lwz r23, 0x1c(r30)
/* 803B575C 003B26BC  82 3E 00 0C */	lwz r17, 0xc(r30)
/* 803B5760 003B26C0  80 DE 00 20 */	lwz r6, 0x20(r30)
/* 803B5764 003B26C4  83 C3 00 00 */	lwz r30, 0(r3)
/* 803B5768 003B26C8  6F DE 80 00 */	xoris r30, r30, 0x8000
/* 803B576C 003B26CC  93 C1 00 54 */	stw r30, 0x54(r1)
/* 803B5770 003B26D0  C9 81 00 50 */	lfd f12, 0x50(r1)
/* 803B5774 003B26D4  ED 8C 28 28 */	fsubs f12, f12, f5
/* 803B5778 003B26D8  3B E0 00 9F */	li r31, 0x9f
/* 803B577C 003B26DC  7F E9 03 A6 */	mtctr r31
lbl_803B5780:
/* 803B5780 003B26E0  FD A0 60 90 */	fmr f13, f12
/* 803B5784 003B26E4  41 9E 00 1C */	beq cr7, lbl_803B57A0
/* 803B5788 003B26E8  C1 BC 00 00 */	lfs f13, 0(r28)
/* 803B578C 003B26EC  3B 9C 00 04 */	addi r28, r28, 4
/* 803B5790 003B26F0  7C 1C B0 00 */	cmpw r28, r22
/* 803B5794 003B26F4  D1 9C FF FC */	stfs f12, -4(r28)
/* 803B5798 003B26F8  40 A2 00 08 */	bne+ lbl_803B57A0
/* 803B579C 003B26FC  7F 7C DB 78 */	mr r28, r27
lbl_803B57A0:
/* 803B57A0 003B2700  ED 13 6B FA */	fmadds f8, f19, f15, f13
/* 803B57A4 003B2704  87 A3 00 04 */	lwzu r29, 4(r3)
/* 803B57A8 003B2708  ED 34 6C 3A */	fmadds f9, f20, f16, f13
/* 803B57AC 003B270C  7D 07 AD 2E */	stfsx f8, r7, r21
/* 803B57B0 003B2710  3A B5 00 04 */	addi r21, r21, 4
/* 803B57B4 003B2714  7D 28 9D 2E */	stfsx f9, r8, r19
/* 803B57B8 003B2718  7D C7 A4 2E */	lfsx f14, r7, r20
/* 803B57BC 003B271C  3A 94 00 04 */	addi r20, r20, 4
/* 803B57C0 003B2720  7E 08 94 2E */	lfsx f16, r8, r18
/* 803B57C4 003B2724  7C 15 D0 00 */	cmpw r21, r26
/* 803B57C8 003B2728  7C 94 D0 00 */	cmpw cr1, r20, r26
/* 803B57CC 003B272C  3A 73 00 04 */	addi r19, r19, 4
/* 803B57D0 003B2730  3A 52 00 04 */	addi r18, r18, 4
/* 803B57D4 003B2734  FD E0 70 90 */	fmr f15, f14
/* 803B57D8 003B2738  7E 93 C8 00 */	cmpw cr5, r19, r25
/* 803B57DC 003B273C  ED CE 80 2A */	fadds f14, f14, f16
/* 803B57E0 003B2740  7F 12 C8 00 */	cmpw cr6, r18, r25
/* 803B57E4 003B2744  40 A2 00 08 */	bne+ lbl_803B57EC
/* 803B57E8 003B2748  3A A0 00 00 */	li r21, 0
lbl_803B57EC:
/* 803B57EC 003B274C  6F BD 80 00 */	xoris r29, r29, 0x8000
/* 803B57F0 003B2750  ED 22 74 7A */	fmadds f9, f2, f17, f14
/* 803B57F4 003B2754  40 A6 00 08 */	bne+ cr1, lbl_803B57FC
/* 803B57F8 003B2758  3A 80 00 00 */	li r20, 0
lbl_803B57FC:
/* 803B57FC 003B275C  93 A1 00 54 */	stw r29, 0x54(r1)
/* 803B5800 003B2760  40 B6 00 08 */	bne+ cr5, lbl_803B5808
/* 803B5804 003B2764  3A 60 00 00 */	li r19, 0
lbl_803B5808:
/* 803B5808 003B2768  7D 31 65 2E */	stfsx f9, r17, r12
/* 803B580C 003B276C  ED C2 8A 7C */	fnmsubs f14, f2, f9, f17
/* 803B5810 003B2770  39 8C 00 04 */	addi r12, r12, 4
/* 803B5814 003B2774  40 BA 00 08 */	bne+ cr6, lbl_803B581C
/* 803B5818 003B2778  3A 40 00 00 */	li r18, 0
lbl_803B581C:
/* 803B581C 003B277C  7E 31 5C 2E */	lfsx f17, r17, r11
/* 803B5820 003B2780  7E 8C C0 00 */	cmpw cr5, r12, r24
/* 803B5824 003B2784  39 6B 00 04 */	addi r11, r11, 4
/* 803B5828 003B2788  7F 0B C0 00 */	cmpw cr6, r11, r24
/* 803B582C 003B278C  40 B6 00 08 */	bne+ cr5, lbl_803B5834
/* 803B5830 003B2790  39 80 00 00 */	li r12, 0
lbl_803B5834:
/* 803B5834 003B2794  40 BA 00 08 */	bne+ cr6, lbl_803B583C
/* 803B5838 003B2798  39 60 00 00 */	li r11, 0
lbl_803B583C:
/* 803B583C 003B279C  ED CE 01 B2 */	fmuls f14, f14, f6
/* 803B5840 003B27A0  C9 41 00 50 */	lfd f10, 0x50(r1)
/* 803B5844 003B27A4  ED CB 71 FA */	fmadds f14, f11, f7, f14
/* 803B5848 003B27A8  ED 22 74 BA */	fmadds f9, f2, f18, f14
/* 803B584C 003B27AC  FC E0 70 90 */	fmr f7, f14
/* 803B5850 003B27B0  7D 26 55 2E */	stfsx f9, r6, r10
/* 803B5854 003B27B4  ED C2 92 7C */	fnmsubs f14, f2, f9, f18
/* 803B5858 003B27B8  ED 04 03 32 */	fmuls f8, f4, f12
/* 803B585C 003B27BC  7E 46 4C 2E */	lfsx f18, r6, r9
/* 803B5860 003B27C0  39 4A 00 04 */	addi r10, r10, 4
/* 803B5864 003B27C4  39 29 00 04 */	addi r9, r9, 4
/* 803B5868 003B27C8  ED C3 43 BA */	fmadds f14, f3, f14, f8
/* 803B586C 003B27CC  7E 8A B8 00 */	cmpw cr5, r10, r23
/* 803B5870 003B27D0  7F 09 B8 00 */	cmpw cr6, r9, r23
/* 803B5874 003B27D4  FD C0 70 1E */	fctiwz f14, f14
/* 803B5878 003B27D8  40 B6 00 08 */	bne+ cr5, lbl_803B5880
/* 803B587C 003B27DC  39 40 00 00 */	li r10, 0
lbl_803B5880:
/* 803B5880 003B27E0  40 BA 00 08 */	bne+ cr6, lbl_803B5888
/* 803B5884 003B27E4  39 20 00 00 */	li r9, 0
lbl_803B5888:
/* 803B5888 003B27E8  3B E0 FF FC */	li r31, -4
/* 803B588C 003B27EC  ED 8A 28 28 */	fsubs f12, f10, f5
/* 803B5890 003B27F0  7D C3 FF AE */	stfiwx f14, r3, r31
/* 803B5894 003B27F4  42 00 FE EC */	bdnz lbl_803B5780
/* 803B5898 003B27F8  FD A0 60 90 */	fmr f13, f12
/* 803B589C 003B27FC  41 9E 00 1C */	beq cr7, lbl_803B58B8
/* 803B58A0 003B2800  C1 BC 00 00 */	lfs f13, 0(r28)
/* 803B58A4 003B2804  3B 9C 00 04 */	addi r28, r28, 4
/* 803B58A8 003B2808  7C 1C B0 00 */	cmpw r28, r22
/* 803B58AC 003B280C  D1 9C FF FC */	stfs f12, -4(r28)
/* 803B58B0 003B2810  40 A2 00 08 */	bne+ lbl_803B58B8
/* 803B58B4 003B2814  7F 7C DB 78 */	mr r28, r27
lbl_803B58B8:
/* 803B58B8 003B2818  ED 13 6B FA */	fmadds f8, f19, f15, f13
/* 803B58BC 003B281C  ED 34 6C 3A */	fmadds f9, f20, f16, f13
/* 803B58C0 003B2820  7D 07 AD 2E */	stfsx f8, r7, r21
/* 803B58C4 003B2824  3A B5 00 04 */	addi r21, r21, 4
/* 803B58C8 003B2828  7D 28 9D 2E */	stfsx f9, r8, r19
/* 803B58CC 003B282C  7D C7 A4 2E */	lfsx f14, r7, r20
/* 803B58D0 003B2830  3A 94 00 04 */	addi r20, r20, 4
/* 803B58D4 003B2834  7E 08 94 2E */	lfsx f16, r8, r18
/* 803B58D8 003B2838  7C 15 D0 00 */	cmpw r21, r26
/* 803B58DC 003B283C  7C 94 D0 00 */	cmpw cr1, r20, r26
/* 803B58E0 003B2840  3A 73 00 04 */	addi r19, r19, 4
/* 803B58E4 003B2844  3A 52 00 04 */	addi r18, r18, 4
/* 803B58E8 003B2848  FD E0 70 90 */	fmr f15, f14
/* 803B58EC 003B284C  7E 93 C8 00 */	cmpw cr5, r19, r25
/* 803B58F0 003B2850  ED CE 80 2A */	fadds f14, f14, f16
/* 803B58F4 003B2854  7F 12 C8 00 */	cmpw cr6, r18, r25
/* 803B58F8 003B2858  40 A2 00 08 */	bne+ lbl_803B5900
/* 803B58FC 003B285C  3A A0 00 00 */	li r21, 0
lbl_803B5900:
/* 803B5900 003B2860  ED 22 74 7A */	fmadds f9, f2, f17, f14
/* 803B5904 003B2864  40 A6 00 08 */	bne+ cr1, lbl_803B590C
/* 803B5908 003B2868  3A 80 00 00 */	li r20, 0
lbl_803B590C:
/* 803B590C 003B286C  40 B6 00 08 */	bne+ cr5, lbl_803B5914
/* 803B5910 003B2870  3A 60 00 00 */	li r19, 0
lbl_803B5914:
/* 803B5914 003B2874  7D 31 65 2E */	stfsx f9, r17, r12
/* 803B5918 003B2878  ED C2 8A 7C */	fnmsubs f14, f2, f9, f17
/* 803B591C 003B287C  39 8C 00 04 */	addi r12, r12, 4
/* 803B5920 003B2880  40 BA 00 08 */	bne+ cr6, lbl_803B5928
/* 803B5924 003B2884  3A 40 00 00 */	li r18, 0
lbl_803B5928:
/* 803B5928 003B2888  7E 31 5C 2E */	lfsx f17, r17, r11
/* 803B592C 003B288C  7E 8C C0 00 */	cmpw cr5, r12, r24
/* 803B5930 003B2890  39 6B 00 04 */	addi r11, r11, 4
/* 803B5934 003B2894  7F 0B C0 00 */	cmpw cr6, r11, r24
/* 803B5938 003B2898  40 B6 00 08 */	bne+ cr5, lbl_803B5940
/* 803B593C 003B289C  39 80 00 00 */	li r12, 0
lbl_803B5940:
/* 803B5940 003B28A0  40 BA 00 08 */	bne+ cr6, lbl_803B5948
/* 803B5944 003B28A4  39 60 00 00 */	li r11, 0
lbl_803B5948:
/* 803B5948 003B28A8  ED CE 01 B2 */	fmuls f14, f14, f6
/* 803B594C 003B28AC  ED CB 71 FA */	fmadds f14, f11, f7, f14
/* 803B5950 003B28B0  1F E5 00 28 */	mulli r31, r5, 0x28
/* 803B5954 003B28B4  ED 22 74 BA */	fmadds f9, f2, f18, f14
/* 803B5958 003B28B8  FC E0 70 90 */	fmr f7, f14
/* 803B595C 003B28BC  3B A4 00 78 */	addi r29, r4, 0x78
/* 803B5960 003B28C0  7F BD FA 14 */	add r29, r29, r31
/* 803B5964 003B28C4  7D 26 55 2E */	stfsx f9, r6, r10
/* 803B5968 003B28C8  ED C2 92 7C */	fnmsubs f14, f2, f9, f18
/* 803B596C 003B28CC  ED 04 03 32 */	fmuls f8, f4, f12
/* 803B5970 003B28D0  7E 46 4C 2E */	lfsx f18, r6, r9
/* 803B5974 003B28D4  39 4A 00 04 */	addi r10, r10, 4
/* 803B5978 003B28D8  39 29 00 04 */	addi r9, r9, 4
/* 803B597C 003B28DC  ED C3 43 BA */	fmadds f14, f3, f14, f8
/* 803B5980 003B28E0  7E 8A B8 00 */	cmpw cr5, r10, r23
/* 803B5984 003B28E4  7F 09 B8 00 */	cmpw cr6, r9, r23
/* 803B5988 003B28E8  FD C0 70 1E */	fctiwz f14, f14
/* 803B598C 003B28EC  40 B6 00 08 */	bne+ cr5, lbl_803B5994
/* 803B5990 003B28F0  39 40 00 00 */	li r10, 0
lbl_803B5994:
/* 803B5994 003B28F4  40 BA 00 08 */	bne+ cr6, lbl_803B599C
/* 803B5998 003B28F8  39 20 00 00 */	li r9, 0
lbl_803B599C:
/* 803B599C 003B28FC  3B C4 00 00 */	addi r30, r4, 0
/* 803B59A0 003B2900  7F DE FA 14 */	add r30, r30, r31
/* 803B59A4 003B2904  7D C0 1F AE */	stfiwx f14, 0, r3
/* 803B59A8 003B2908  92 BD 00 00 */	stw r21, 0(r29)
/* 803B59AC 003B290C  92 9D 00 04 */	stw r20, 4(r29)
/* 803B59B0 003B2910  92 7D 00 14 */	stw r19, 0x14(r29)
/* 803B59B4 003B2914  92 5D 00 18 */	stw r18, 0x18(r29)
/* 803B59B8 003B2918  38 63 00 04 */	addi r3, r3, 4
/* 803B59BC 003B291C  D1 FD 00 10 */	stfs f15, 0x10(r29)
/* 803B59C0 003B2920  D2 1D 00 24 */	stfs f16, 0x24(r29)
/* 803B59C4 003B2924  54 BF 10 3A */	slwi r31, r5, 2
/* 803B59C8 003B2928  7F FF 22 14 */	add r31, r31, r4
/* 803B59CC 003B292C  38 A5 00 01 */	addi r5, r5, 1
/* 803B59D0 003B2930  91 9E 00 00 */	stw r12, 0(r30)
/* 803B59D4 003B2934  91 7E 00 04 */	stw r11, 4(r30)
/* 803B59D8 003B2938  91 5E 00 14 */	stw r10, 0x14(r30)
/* 803B59DC 003B293C  91 3E 00 18 */	stw r9, 0x18(r30)
/* 803B59E0 003B2940  2C 05 00 03 */	cmpwi r5, 3
/* 803B59E4 003B2944  D2 3E 00 10 */	stfs f17, 0x10(r30)
/* 803B59E8 003B2948  D2 5E 00 24 */	stfs f18, 0x24(r30)
/* 803B59EC 003B294C  D0 FF 01 0C */	stfs f7, 0x10c(r31)
/* 803B59F0 003B2950  93 9F 01 30 */	stw r28, 0x130(r31)
/* 803B59F4 003B2954  40 82 FC D4 */	bne lbl_803B56C8
/* 803B59F8 003B2958  C9 C1 00 58 */	lfd f14, 0x58(r1)
/* 803B59FC 003B295C  C9 E1 00 60 */	lfd f15, 0x60(r1)
/* 803B5A00 003B2960  CA 01 00 68 */	lfd f16, 0x68(r1)
/* 803B5A04 003B2964  CA 21 00 70 */	lfd f17, 0x70(r1)
/* 803B5A08 003B2968  CA 41 00 78 */	lfd f18, 0x78(r1)
/* 803B5A0C 003B296C  CA 61 00 80 */	lfd f19, 0x80(r1)
/* 803B5A10 003B2970  CA 81 00 88 */	lfd f20, 0x88(r1)
/* 803B5A14 003B2974  BA 21 00 08 */	lmw r17, 8(r1)
/* 803B5A18 003B2978  38 21 00 90 */	addi r1, r1, 0x90
/* 803B5A1C 003B297C  4E 80 00 20 */	blr 

.global ReverbSTDCallback
ReverbSTDCallback:
/* 803B5A20 003B2980  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B5A24 003B2984  7C 08 02 A6 */	mflr r0
/* 803B5A28 003B2988  7C C4 33 78 */	mr r4, r6
/* 803B5A2C 003B298C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B5A30 003B2990  4B FF FC 3D */	bl HandleReverb
/* 803B5A34 003B2994  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B5A38 003B2998  7C 08 03 A6 */	mtlr r0
/* 803B5A3C 003B299C  38 21 00 10 */	addi r1, r1, 0x10
/* 803B5A40 003B29A0  4E 80 00 20 */	blr 

.global ReverbSTDFree
ReverbSTDFree:
/* 803B5A44 003B29A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B5A48 003B29A8  7C 08 02 A6 */	mflr r0
/* 803B5A4C 003B29AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B5A50 003B29B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B5A54 003B29B4  3B E0 00 00 */	li r31, 0
/* 803B5A58 003B29B8  93 C1 00 08 */	stw r30, 8(r1)
/* 803B5A5C 003B29BC  7C 7E 1B 78 */	mr r30, r3
/* 803B5A60 003B29C0  48 00 00 1C */	b lbl_803B5A7C
lbl_803B5A64:
/* 803B5A64 003B29C4  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 803B5A68 003B29C8  1C 60 00 14 */	mulli r3, r0, 0x14
/* 803B5A6C 003B29CC  38 03 00 0C */	addi r0, r3, 0xc
/* 803B5A70 003B29D0  7C 7E 00 2E */	lwzx r3, r30, r0
/* 803B5A74 003B29D4  4B FF F6 E9 */	bl salFree
/* 803B5A78 003B29D8  3B FF 00 01 */	addi r31, r31, 1
lbl_803B5A7C:
/* 803B5A7C 003B29DC  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 803B5A80 003B29E0  28 00 00 06 */	cmplwi r0, 6
/* 803B5A84 003B29E4  41 80 FF E0 */	blt lbl_803B5A64
/* 803B5A88 003B29E8  3B E0 00 00 */	li r31, 0
/* 803B5A8C 003B29EC  48 00 00 1C */	b lbl_803B5AA8
lbl_803B5A90:
/* 803B5A90 003B29F0  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 803B5A94 003B29F4  1C 60 00 14 */	mulli r3, r0, 0x14
/* 803B5A98 003B29F8  38 03 00 84 */	addi r0, r3, 0x84
/* 803B5A9C 003B29FC  7C 7E 00 2E */	lwzx r3, r30, r0
/* 803B5AA0 003B2A00  4B FF F6 BD */	bl salFree
/* 803B5AA4 003B2A04  3B FF 00 01 */	addi r31, r31, 1
lbl_803B5AA8:
/* 803B5AA8 003B2A08  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 803B5AAC 003B2A0C  28 00 00 06 */	cmplwi r0, 6
/* 803B5AB0 003B2A10  41 80 FF E0 */	blt lbl_803B5A90
/* 803B5AB4 003B2A14  80 1E 01 20 */	lwz r0, 0x120(r30)
/* 803B5AB8 003B2A18  2C 00 00 00 */	cmpwi r0, 0
/* 803B5ABC 003B2A1C  41 82 00 2C */	beq lbl_803B5AE8
/* 803B5AC0 003B2A20  3B E0 00 00 */	li r31, 0
/* 803B5AC4 003B2A24  48 00 00 18 */	b lbl_803B5ADC
lbl_803B5AC8:
/* 803B5AC8 003B2A28  57 E3 15 BA */	rlwinm r3, r31, 2, 0x16, 0x1d
/* 803B5ACC 003B2A2C  38 03 01 24 */	addi r0, r3, 0x124
/* 803B5AD0 003B2A30  7C 7E 00 2E */	lwzx r3, r30, r0
/* 803B5AD4 003B2A34  4B FF F6 89 */	bl salFree
/* 803B5AD8 003B2A38  3B FF 00 01 */	addi r31, r31, 1
lbl_803B5ADC:
/* 803B5ADC 003B2A3C  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 803B5AE0 003B2A40  28 00 00 03 */	cmplwi r0, 3
/* 803B5AE4 003B2A44  41 80 FF E4 */	blt lbl_803B5AC8
lbl_803B5AE8:
/* 803B5AE8 003B2A48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B5AEC 003B2A4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B5AF0 003B2A50  83 C1 00 08 */	lwz r30, 8(r1)
/* 803B5AF4 003B2A54  7C 08 03 A6 */	mtlr r0
/* 803B5AF8 003B2A58  38 21 00 10 */	addi r1, r1, 0x10
/* 803B5AFC 003B2A5C  4E 80 00 20 */	blr 
