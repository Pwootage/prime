.include "macros.inc"

.section .data

.global lbl_803ECDA8
lbl_803ECDA8:
	# ROM: 0x3E9DA8
	.4byte 0
	.4byte 0
	.4byte __dt__20CMetaTransPhaseTransFv
	.4byte "VGetTransitionTree__20CMetaTransPhaseTransCFRCQ24rstl25ncrc_ptr<13CAnimTreeNode>RCQ24rstl25ncrc_ptr<13CAnimTreeNode>RC15CAnimSysContext"
	.4byte GetType__20CMetaTransPhaseTransCFv
	.4byte WriteTransData__20CMetaTransPhaseTransCFR13COutputStream

.section .sdata

.global lbl_805A8728
lbl_805A8728:
	# ROM: 0x3F60C8
	.4byte 0x00000002

.global lbl_805A872C
lbl_805A872C:
	# ROM: 0x3F60CC
	.4byte 0

.global lbl_805A8730
lbl_805A8730:
	# ROM: 0x3F60D0
	.4byte 0

.global lbl_805A8734
lbl_805A8734:
	# ROM: 0x3F60D4
	.float 1.0

.section .text, "ax"

.global __dt__20CMetaTransPhaseTransFv
__dt__20CMetaTransPhaseTransFv:
/* 802E221C 002DF17C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E2220 002DF180  7C 08 02 A6 */	mflr r0
/* 802E2224 002DF184  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E2228 002DF188  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E222C 002DF18C  7C 7F 1B 79 */	or. r31, r3, r3
/* 802E2230 002DF190  41 82 00 30 */	beq lbl_802E2260
/* 802E2234 002DF194  3C 60 80 3F */	lis r3, lbl_803ECDA8@ha
/* 802E2238 002DF198  38 03 CD A8 */	addi r0, r3, lbl_803ECDA8@l
/* 802E223C 002DF19C  90 1F 00 00 */	stw r0, 0(r31)
/* 802E2240 002DF1A0  41 82 00 10 */	beq lbl_802E2250
/* 802E2244 002DF1A4  3C 60 80 3E */	lis r3, lbl_803D9C70@ha
/* 802E2248 002DF1A8  38 03 9C 70 */	addi r0, r3, lbl_803D9C70@l
/* 802E224C 002DF1AC  90 1F 00 00 */	stw r0, 0(r31)
lbl_802E2250:
/* 802E2250 002DF1B0  7C 80 07 35 */	extsh. r0, r4
/* 802E2254 002DF1B4  40 81 00 0C */	ble lbl_802E2260
/* 802E2258 002DF1B8  7F E3 FB 78 */	mr r3, r31
/* 802E225C 002DF1BC  48 03 36 D5 */	bl Free__7CMemoryFPCv
lbl_802E2260:
/* 802E2260 002DF1C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E2264 002DF1C4  7F E3 FB 78 */	mr r3, r31
/* 802E2268 002DF1C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E226C 002DF1CC  7C 08 03 A6 */	mtlr r0
/* 802E2270 002DF1D0  38 21 00 10 */	addi r1, r1, 0x10
/* 802E2274 002DF1D4  4E 80 00 20 */	blr

.global GetType__20CMetaTransPhaseTransCFv
GetType__20CMetaTransPhaseTransCFv:
/* 802E2278 002DF1D8  38 60 00 02 */	li r3, 2
/* 802E227C 002DF1DC  4E 80 00 20 */	blr

.global WriteTransData__20CMetaTransPhaseTransCFR13COutputStream
WriteTransData__20CMetaTransPhaseTransCFR13COutputStream:
/* 802E2280 002DF1E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E2284 002DF1E4  7C 08 02 A6 */	mflr r0
/* 802E2288 002DF1E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E228C 002DF1EC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802E2290 002DF1F0  7C 9F 23 78 */	mr r31, r4
/* 802E2294 002DF1F4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802E2298 002DF1F8  7C 7E 1B 78 */	mr r30, r3
/* 802E229C 002DF1FC  38 7E 00 04 */	addi r3, r30, 4
/* 802E22A0 002DF200  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802E22A4 002DF204  48 06 60 91 */	bl PutTo__13CCharAnimTimeCFR13COutputStream
/* 802E22A8 002DF208  88 9E 00 0C */	lbz r4, 0xc(r30)
/* 802E22AC 002DF20C  7F E3 FB 78 */	mr r3, r31
/* 802E22B0 002DF210  7C 04 00 D0 */	neg r0, r4
/* 802E22B4 002DF214  7C 00 23 78 */	or r0, r0, r4
/* 802E22B8 002DF218  54 1D 0F FE */	srwi r29, r0, 0x1f
/* 802E22BC 002DF21C  48 05 D1 FD */	bl FlushShiftRegister__13COutputStreamFv
/* 802E22C0 002DF220  80 7F 00 04 */	lwz r3, 4(r31)
/* 802E22C4 002DF224  80 1F 00 08 */	lwz r0, 8(r31)
/* 802E22C8 002DF228  7C 03 00 40 */	cmplw r3, r0
/* 802E22CC 002DF22C  41 80 00 0C */	blt lbl_802E22D8
/* 802E22D0 002DF230  7F E3 FB 78 */	mr r3, r31
/* 802E22D4 002DF234  48 05 D2 51 */	bl DoFlush__13COutputStreamFv
lbl_802E22D8:
/* 802E22D8 002DF238  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 802E22DC 002DF23C  7F E3 FB 78 */	mr r3, r31
/* 802E22E0 002DF240  38 04 00 01 */	addi r0, r4, 1
/* 802E22E4 002DF244  90 1F 00 10 */	stw r0, 0x10(r31)
/* 802E22E8 002DF248  80 9F 00 04 */	lwz r4, 4(r31)
/* 802E22EC 002DF24C  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 802E22F0 002DF250  38 04 00 01 */	addi r0, r4, 1
/* 802E22F4 002DF254  90 1F 00 04 */	stw r0, 4(r31)
/* 802E22F8 002DF258  7F A5 21 AE */	stbx r29, r5, r4
/* 802E22FC 002DF25C  88 9E 00 0D */	lbz r4, 0xd(r30)
/* 802E2300 002DF260  7C 04 00 D0 */	neg r0, r4
/* 802E2304 002DF264  7C 00 23 78 */	or r0, r0, r4
/* 802E2308 002DF268  54 1D 0F FE */	srwi r29, r0, 0x1f
/* 802E230C 002DF26C  48 05 D1 AD */	bl FlushShiftRegister__13COutputStreamFv
/* 802E2310 002DF270  80 7F 00 04 */	lwz r3, 4(r31)
/* 802E2314 002DF274  80 1F 00 08 */	lwz r0, 8(r31)
/* 802E2318 002DF278  7C 03 00 40 */	cmplw r3, r0
/* 802E231C 002DF27C  41 80 00 0C */	blt lbl_802E2328
/* 802E2320 002DF280  7F E3 FB 78 */	mr r3, r31
/* 802E2324 002DF284  48 05 D2 01 */	bl DoFlush__13COutputStreamFv
lbl_802E2328:
/* 802E2328 002DF288  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 802E232C 002DF28C  7F E3 FB 78 */	mr r3, r31
/* 802E2330 002DF290  38 04 00 01 */	addi r0, r4, 1
/* 802E2334 002DF294  90 1F 00 10 */	stw r0, 0x10(r31)
/* 802E2338 002DF298  80 9F 00 04 */	lwz r4, 4(r31)
/* 802E233C 002DF29C  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 802E2340 002DF2A0  38 04 00 01 */	addi r0, r4, 1
/* 802E2344 002DF2A4  90 1F 00 04 */	stw r0, 4(r31)
/* 802E2348 002DF2A8  7F A5 21 AE */	stbx r29, r5, r4
/* 802E234C 002DF2AC  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 802E2350 002DF2B0  90 01 00 08 */	stw r0, 8(r1)
/* 802E2354 002DF2B4  48 05 D1 65 */	bl FlushShiftRegister__13COutputStreamFv
/* 802E2358 002DF2B8  7F E3 FB 78 */	mr r3, r31
/* 802E235C 002DF2BC  38 81 00 08 */	addi r4, r1, 8
/* 802E2360 002DF2C0  38 A0 00 04 */	li r5, 4
/* 802E2364 002DF2C4  48 05 D2 45 */	bl DoPut__13COutputStreamFPCvUl
/* 802E2368 002DF2C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E236C 002DF2CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802E2370 002DF2D0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802E2374 002DF2D4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802E2378 002DF2D8  7C 08 03 A6 */	mtlr r0
/* 802E237C 002DF2DC  38 21 00 20 */	addi r1, r1, 0x20
/* 802E2380 002DF2E0  4E 80 00 20 */	blr

.global "VGetTransitionTree__20CMetaTransPhaseTransCFRCQ24rstl25ncrc_ptr<13CAnimTreeNode>RCQ24rstl25ncrc_ptr<13CAnimTreeNode>RC15CAnimSysContext"
"VGetTransitionTree__20CMetaTransPhaseTransCFRCQ24rstl25ncrc_ptr<13CAnimTreeNode>RCQ24rstl25ncrc_ptr<13CAnimTreeNode>RC15CAnimSysContext":
/* 802E2384 002DF2E4  94 21 FD B0 */	stwu r1, -0x250(r1)
/* 802E2388 002DF2E8  7C 08 02 A6 */	mflr r0
/* 802E238C 002DF2EC  90 01 02 54 */	stw r0, 0x254(r1)
/* 802E2390 002DF2F0  DB E1 02 40 */	stfd f31, 0x240(r1)
/* 802E2394 002DF2F4  F3 E1 02 48 */	psq_st f31, 584(r1), 0, qr0
/* 802E2398 002DF2F8  DB C1 02 30 */	stfd f30, 0x230(r1)
/* 802E239C 002DF2FC  F3 C1 02 38 */	psq_st f30, 568(r1), 0, qr0
/* 802E23A0 002DF300  DB A1 02 20 */	stfd f29, 0x220(r1)
/* 802E23A4 002DF304  F3 A1 02 28 */	psq_st f29, 552(r1), 0, qr0
/* 802E23A8 002DF308  DB 81 02 10 */	stfd f28, 0x210(r1)
/* 802E23AC 002DF30C  F3 81 02 18 */	psq_st f28, 536(r1), 0, qr0
/* 802E23B0 002DF310  DB 61 02 00 */	stfd f27, 0x200(r1)
/* 802E23B4 002DF314  F3 61 02 08 */	psq_st f27, 520(r1), 0, qr0
/* 802E23B8 002DF318  DB 41 01 F0 */	stfd f26, 0x1f0(r1)
/* 802E23BC 002DF31C  F3 41 01 F8 */	psq_st f26, 504(r1), 0, qr0
/* 802E23C0 002DF320  BF 21 01 D4 */	stmw r25, 0x1d4(r1)
/* 802E23C4 002DF324  7C BB 2B 78 */	mr r27, r5
/* 802E23C8 002DF328  7C 7F 1B 78 */	mr r31, r3
/* 802E23CC 002DF32C  80 A5 00 00 */	lwz r5, 0(r5)
/* 802E23D0 002DF330  7C 9E 23 78 */	mr r30, r4
/* 802E23D4 002DF334  7C DC 33 78 */	mr r28, r6
/* 802E23D8 002DF338  38 61 01 54 */	addi r3, r1, 0x154
/* 802E23DC 002DF33C  80 85 00 00 */	lwz r4, 0(r5)
/* 802E23E0 002DF340  4B D4 C7 A9 */	bl GetContributionOfHighestInfluence__13CAnimTreeNodeCFv
/* 802E23E4 002DF344  80 81 01 6C */	lwz r4, 0x16c(r1)
/* 802E23E8 002DF348  34 61 01 58 */	addic. r3, r1, 0x158
/* 802E23EC 002DF34C  C0 41 01 70 */	lfs f2, 0x170(r1)
/* 802E23F0 002DF350  C0 21 01 74 */	lfs f1, 0x174(r1)
/* 802E23F4 002DF354  C0 01 01 78 */	lfs f0, 0x178(r1)
/* 802E23F8 002DF358  88 01 01 7C */	lbz r0, 0x17c(r1)
/* 802E23FC 002DF35C  90 81 00 D0 */	stw r4, 0xd0(r1)
/* 802E2400 002DF360  C3 61 01 68 */	lfs f27, 0x168(r1)
/* 802E2404 002DF364  D0 41 00 D4 */	stfs f2, 0xd4(r1)
/* 802E2408 002DF368  D0 21 00 D8 */	stfs f1, 0xd8(r1)
/* 802E240C 002DF36C  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 802E2410 002DF370  98 01 00 E0 */	stb r0, 0xe0(r1)
/* 802E2414 002DF374  41 82 00 08 */	beq lbl_802E241C
/* 802E2418 002DF378  48 05 B6 C9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802E241C:
/* 802E241C 002DF37C  80 01 00 D0 */	lwz r0, 0xd0(r1)
/* 802E2420 002DF380  38 61 01 1C */	addi r3, r1, 0x11c
/* 802E2424 002DF384  D3 61 00 7C */	stfs f27, 0x7c(r1)
/* 802E2428 002DF388  80 9C 00 00 */	lwz r4, 0(r28)
/* 802E242C 002DF38C  90 01 00 80 */	stw r0, 0x80(r1)
/* 802E2430 002DF390  90 01 00 58 */	stw r0, 0x58(r1)
/* 802E2434 002DF394  80 84 00 00 */	lwz r4, 0(r4)
/* 802E2438 002DF398  4B D4 C7 51 */	bl GetContributionOfHighestInfluence__13CAnimTreeNodeCFv
/* 802E243C 002DF39C  80 81 01 34 */	lwz r4, 0x134(r1)
/* 802E2440 002DF3A0  34 61 01 20 */	addic. r3, r1, 0x120
/* 802E2444 002DF3A4  C0 41 01 38 */	lfs f2, 0x138(r1)
/* 802E2448 002DF3A8  C0 21 01 3C */	lfs f1, 0x13c(r1)
/* 802E244C 002DF3AC  C0 01 01 40 */	lfs f0, 0x140(r1)
/* 802E2450 002DF3B0  88 01 01 44 */	lbz r0, 0x144(r1)
/* 802E2454 002DF3B4  90 81 00 B8 */	stw r4, 0xb8(r1)
/* 802E2458 002DF3B8  C3 61 01 30 */	lfs f27, 0x130(r1)
/* 802E245C 002DF3BC  D0 41 00 BC */	stfs f2, 0xbc(r1)
/* 802E2460 002DF3C0  D0 21 00 C0 */	stfs f1, 0xc0(r1)
/* 802E2464 002DF3C4  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 802E2468 002DF3C8  98 01 00 C8 */	stb r0, 0xc8(r1)
/* 802E246C 002DF3CC  41 82 00 08 */	beq lbl_802E2474
/* 802E2470 002DF3D0  48 05 B6 71 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802E2474:
/* 802E2474 002DF3D4  80 01 00 B8 */	lwz r0, 0xb8(r1)
/* 802E2478 002DF3D8  38 61 00 7C */	addi r3, r1, 0x7c
/* 802E247C 002DF3DC  D3 61 00 74 */	stfs f27, 0x74(r1)
/* 802E2480 002DF3E0  38 81 00 74 */	addi r4, r1, 0x74
/* 802E2484 002DF3E4  90 01 00 50 */	stw r0, 0x50(r1)
/* 802E2488 002DF3E8  90 01 00 78 */	stw r0, 0x78(r1)
/* 802E248C 002DF3EC  48 06 65 8D */	bl __dv__13CCharAnimTimeCFRC13CCharAnimTime
/* 802E2490 002DF3F0  FF E0 08 90 */	fmr f31, f1
/* 802E2494 002DF3F4  38 61 00 74 */	addi r3, r1, 0x74
/* 802E2498 002DF3F8  38 81 00 7C */	addi r4, r1, 0x7c
/* 802E249C 002DF3FC  48 06 65 7D */	bl __dv__13CCharAnimTimeCFRC13CCharAnimTime
/* 802E24A0 002DF400  80 9B 00 00 */	lwz r4, 0(r27)
/* 802E24A4 002DF404  FF C0 08 90 */	fmr f30, f1
/* 802E24A8 002DF408  38 61 00 E4 */	addi r3, r1, 0xe4
/* 802E24AC 002DF40C  80 84 00 00 */	lwz r4, 0(r4)
/* 802E24B0 002DF410  4B D4 C6 D9 */	bl GetContributionOfHighestInfluence__13CAnimTreeNodeCFv
/* 802E24B4 002DF414  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 802E24B8 002DF418  3B A1 01 90 */	addi r29, r1, 0x190
/* 802E24BC 002DF41C  3B 41 00 E8 */	addi r26, r1, 0xe8
/* 802E24C0 002DF420  D0 01 01 8C */	stfs f0, 0x18c(r1)
/* 802E24C4 002DF424  7F A3 EB 78 */	mr r3, r29
/* 802E24C8 002DF428  7F 44 D3 78 */	mr r4, r26
/* 802E24CC 002DF42C  48 05 BC 95 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802E24D0 002DF430  C0 81 00 F8 */	lfs f4, 0xf8(r1)
/* 802E24D4 002DF434  28 1A 00 00 */	cmplwi r26, 0
/* 802E24D8 002DF438  80 A1 00 FC */	lwz r5, 0xfc(r1)
/* 802E24DC 002DF43C  3B 21 01 B8 */	addi r25, r1, 0x1b8
/* 802E24E0 002DF440  C0 61 01 00 */	lfs f3, 0x100(r1)
/* 802E24E4 002DF444  C0 41 01 04 */	lfs f2, 0x104(r1)
/* 802E24E8 002DF448  C0 21 01 08 */	lfs f1, 0x108(r1)
/* 802E24EC 002DF44C  88 81 01 0C */	lbz r4, 0x10c(r1)
/* 802E24F0 002DF450  C0 01 01 10 */	lfs f0, 0x110(r1)
/* 802E24F4 002DF454  80 61 01 14 */	lwz r3, 0x114(r1)
/* 802E24F8 002DF458  80 01 01 18 */	lwz r0, 0x118(r1)
/* 802E24FC 002DF45C  D0 81 01 A0 */	stfs f4, 0x1a0(r1)
/* 802E2500 002DF460  90 A1 01 A4 */	stw r5, 0x1a4(r1)
/* 802E2504 002DF464  D0 61 01 A8 */	stfs f3, 0x1a8(r1)
/* 802E2508 002DF468  D0 41 01 AC */	stfs f2, 0x1ac(r1)
/* 802E250C 002DF46C  D0 21 01 B0 */	stfs f1, 0x1b0(r1)
/* 802E2510 002DF470  98 81 01 B4 */	stb r4, 0x1b4(r1)
/* 802E2514 002DF474  D0 01 01 B8 */	stfs f0, 0x1b8(r1)
/* 802E2518 002DF478  90 61 01 BC */	stw r3, 0x1bc(r1)
/* 802E251C 002DF47C  90 01 01 C0 */	stw r0, 0x1c0(r1)
/* 802E2520 002DF480  41 82 00 0C */	beq lbl_802E252C
/* 802E2524 002DF484  7F 43 D3 78 */	mr r3, r26
/* 802E2528 002DF488  48 05 B5 B9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802E252C:
/* 802E252C 002DF48C  C0 01 01 A0 */	lfs f0, 0x1a0(r1)
/* 802E2530 002DF490  7F 23 CB 78 */	mr r3, r25
/* 802E2534 002DF494  80 01 01 A4 */	lwz r0, 0x1a4(r1)
/* 802E2538 002DF498  38 81 00 34 */	addi r4, r1, 0x34
/* 802E253C 002DF49C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 802E2540 002DF4A0  90 01 00 38 */	stw r0, 0x38(r1)
/* 802E2544 002DF4A4  48 06 64 D5 */	bl __dv__13CCharAnimTimeCFRC13CCharAnimTime
/* 802E2548 002DF4A8  C0 42 C5 B0 */	lfs f2, lbl_805AE2D0@sda21(r2)
/* 802E254C 002DF4AC  C0 0D 9B 70 */	lfs f0, lbl_805A8730@sda21(r13)
/* 802E2550 002DF4B0  EC 22 08 28 */	fsubs f1, f2, f1
/* 802E2554 002DF4B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802E2558 002DF4B8  D0 21 00 08 */	stfs f1, 8(r1)
/* 802E255C 002DF4BC  40 80 00 0C */	bge lbl_802E2568
/* 802E2560 002DF4C0  38 8D 9B 70 */	addi r4, r13, lbl_805A8730@sda21
/* 802E2564 002DF4C4  48 00 00 08 */	b lbl_802E256C
lbl_802E2568:
/* 802E2568 002DF4C8  38 81 00 08 */	addi r4, r1, 8
lbl_802E256C:
/* 802E256C 002DF4CC  C0 2D 9B 74 */	lfs f1, lbl_805A8734@sda21(r13)
/* 802E2570 002DF4D0  C0 04 00 00 */	lfs f0, 0(r4)
/* 802E2574 002DF4D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802E2578 002DF4D8  40 80 00 08 */	bge lbl_802E2580
/* 802E257C 002DF4DC  38 8D 9B 74 */	addi r4, r13, lbl_805A8734@sda21
lbl_802E2580:
/* 802E2580 002DF4E0  38 00 00 01 */	li r0, 1
/* 802E2584 002DF4E4  34 61 00 6C */	addic. r3, r1, 0x6c
/* 802E2588 002DF4E8  98 01 00 70 */	stb r0, 0x70(r1)
/* 802E258C 002DF4EC  C0 04 00 00 */	lfs f0, 0(r4)
/* 802E2590 002DF4F0  41 82 00 08 */	beq lbl_802E2598
/* 802E2594 002DF4F4  D0 03 00 00 */	stfs f0, 0(r3)
lbl_802E2598:
/* 802E2598 002DF4F8  80 7C 00 00 */	lwz r3, 0(r28)
/* 802E259C 002DF4FC  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 802E25A0 002DF500  80 63 00 00 */	lwz r3, 0(r3)
/* 802E25A4 002DF504  81 83 00 00 */	lwz r12, 0(r3)
/* 802E25A8 002DF508  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 802E25AC 002DF50C  7D 89 03 A6 */	mtctr r12
/* 802E25B0 002DF510  4E 80 04 21 */	bctrl
/* 802E25B4 002DF514  3C 80 80 3D */	lis r4, lbl_803D6D98@ha
/* 802E25B8 002DF518  38 60 00 14 */	li r3, 0x14
/* 802E25BC 002DF51C  38 84 6D 98 */	addi r4, r4, lbl_803D6D98@l
/* 802E25C0 002DF520  38 A0 00 00 */	li r5, 0
/* 802E25C4 002DF524  48 03 32 A9 */	bl __nw__FUlPCcPCc
/* 802E25C8 002DF528  7C 7A 1B 79 */	or. r26, r3, r3
/* 802E25CC 002DF52C  41 82 00 8C */	beq lbl_802E2658
/* 802E25D0 002DF530  C0 0D 9B 6C */	lfs f0, lbl_805A872C@sda21(r13)
/* 802E25D4 002DF534  3C 80 80 3F */	lis r4, lbl_803ECD10@ha
/* 802E25D8 002DF538  80 AD 9B 68 */	lwz r5, lbl_805A8728@sda21(r13)
/* 802E25DC 002DF53C  3C 60 80 3F */	lis r3, lbl_803ED4D0@ha
/* 802E25E0 002DF540  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 802E25E4 002DF544  38 C4 CD 10 */	addi r6, r4, lbl_803ECD10@l
/* 802E25E8 002DF548  38 03 D4 D0 */	addi r0, r3, lbl_803ED4D0@l
/* 802E25EC 002DF54C  38 61 00 2C */	addi r3, r1, 0x2c
/* 802E25F0 002DF550  90 A1 00 48 */	stw r5, 0x48(r1)
/* 802E25F4 002DF554  38 9E 00 04 */	addi r4, r30, 4
/* 802E25F8 002DF558  38 A1 00 44 */	addi r5, r1, 0x44
/* 802E25FC 002DF55C  90 DA 00 00 */	stw r6, 0(r26)
/* 802E2600 002DF560  90 1A 00 00 */	stw r0, 0(r26)
/* 802E2604 002DF564  C3 9E 00 04 */	lfs f28, 4(r30)
/* 802E2608 002DF568  C3 61 00 44 */	lfs f27, 0x44(r1)
/* 802E260C 002DF56C  48 06 61 59 */	bl __mi__13CCharAnimTimeCFRC13CCharAnimTime
/* 802E2610 002DF570  C0 62 C5 B0 */	lfs f3, lbl_805AE2D0@sda21(r2)
/* 802E2614 002DF574  38 61 00 24 */	addi r3, r1, 0x24
/* 802E2618 002DF578  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 802E261C 002DF57C  38 9E 00 04 */	addi r4, r30, 4
/* 802E2620 002DF580  EC 5F 18 28 */	fsubs f2, f31, f3
/* 802E2624 002DF584  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 802E2628 002DF588  38 A1 00 44 */	addi r5, r1, 0x44
/* 802E262C 002DF58C  EC 22 08 24 */	fdivs f1, f2, f1
/* 802E2630 002DF590  EF A1 18 3C */	fnmsubs f29, f1, f0, f3
/* 802E2634 002DF594  48 06 61 31 */	bl __mi__13CCharAnimTimeCFRC13CCharAnimTime
/* 802E2638 002DF598  C0 22 C5 B0 */	lfs f1, lbl_805AE2D0@sda21(r2)
/* 802E263C 002DF59C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 802E2640 002DF5A0  EC 3F 08 28 */	fsubs f1, f31, f1
/* 802E2644 002DF5A4  EC 01 00 24 */	fdivs f0, f1, f0
/* 802E2648 002DF5A8  D0 1A 00 04 */	stfs f0, 4(r26)
/* 802E264C 002DF5AC  D3 BA 00 08 */	stfs f29, 8(r26)
/* 802E2650 002DF5B0  D3 7A 00 0C */	stfs f27, 0xc(r26)
/* 802E2654 002DF5B4  D3 9A 00 10 */	stfs f28, 0x10(r26)
lbl_802E2658:
/* 802E2658 002DF5B8  7C 1A 00 D0 */	neg r0, r26
/* 802E265C 002DF5BC  3C 60 80 3D */	lis r3, lbl_803D6D98@ha
/* 802E2660 002DF5C0  7C 00 D3 78 */	or r0, r0, r26
/* 802E2664 002DF5C4  93 41 00 68 */	stw r26, 0x68(r1)
/* 802E2668 002DF5C8  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802E266C 002DF5CC  38 83 6D 98 */	addi r4, r3, lbl_803D6D98@l
/* 802E2670 002DF5D0  98 01 00 64 */	stb r0, 0x64(r1)
/* 802E2674 002DF5D4  38 60 00 14 */	li r3, 0x14
/* 802E2678 002DF5D8  38 A0 00 00 */	li r5, 0
/* 802E267C 002DF5DC  48 03 31 F1 */	bl __nw__FUlPCcPCc
/* 802E2680 002DF5E0  7C 7A 1B 79 */	or. r26, r3, r3
/* 802E2684 002DF5E4  41 82 00 84 */	beq lbl_802E2708
/* 802E2688 002DF5E8  C0 0D 9B 6C */	lfs f0, lbl_805A872C@sda21(r13)
/* 802E268C 002DF5EC  3C 80 80 3F */	lis r4, lbl_803ECD10@ha
/* 802E2690 002DF5F0  80 AD 9B 68 */	lwz r5, lbl_805A8728@sda21(r13)
/* 802E2694 002DF5F4  3C 60 80 3F */	lis r3, lbl_803ED4D0@ha
/* 802E2698 002DF5F8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 802E269C 002DF5FC  38 C4 CD 10 */	addi r6, r4, lbl_803ECD10@l
/* 802E26A0 002DF600  38 03 D4 D0 */	addi r0, r3, lbl_803ED4D0@l
/* 802E26A4 002DF604  38 61 00 1C */	addi r3, r1, 0x1c
/* 802E26A8 002DF608  90 A1 00 40 */	stw r5, 0x40(r1)
/* 802E26AC 002DF60C  38 9E 00 04 */	addi r4, r30, 4
/* 802E26B0 002DF610  38 A1 00 3C */	addi r5, r1, 0x3c
/* 802E26B4 002DF614  90 DA 00 00 */	stw r6, 0(r26)
/* 802E26B8 002DF618  90 1A 00 00 */	stw r0, 0(r26)
/* 802E26BC 002DF61C  C3 7E 00 04 */	lfs f27, 4(r30)
/* 802E26C0 002DF620  C3 81 00 3C */	lfs f28, 0x3c(r1)
/* 802E26C4 002DF624  48 06 60 A1 */	bl __mi__13CCharAnimTimeCFRC13CCharAnimTime
/* 802E26C8 002DF628  C0 02 C5 B0 */	lfs f0, lbl_805AE2D0@sda21(r2)
/* 802E26CC 002DF62C  38 61 00 14 */	addi r3, r1, 0x14
/* 802E26D0 002DF630  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 802E26D4 002DF634  38 9E 00 04 */	addi r4, r30, 4
/* 802E26D8 002DF638  EF 40 F0 28 */	fsubs f26, f0, f30
/* 802E26DC 002DF63C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 802E26E0 002DF640  38 A1 00 3C */	addi r5, r1, 0x3c
/* 802E26E4 002DF644  EC 3A 08 24 */	fdivs f1, f26, f1
/* 802E26E8 002DF648  EF A1 F0 3C */	fnmsubs f29, f1, f0, f30
/* 802E26EC 002DF64C  48 06 60 79 */	bl __mi__13CCharAnimTimeCFRC13CCharAnimTime
/* 802E26F0 002DF650  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 802E26F4 002DF654  EC 1A 00 24 */	fdivs f0, f26, f0
/* 802E26F8 002DF658  D0 1A 00 04 */	stfs f0, 4(r26)
/* 802E26FC 002DF65C  D3 BA 00 08 */	stfs f29, 8(r26)
/* 802E2700 002DF660  D3 9A 00 0C */	stfs f28, 0xc(r26)
/* 802E2704 002DF664  D3 7A 00 10 */	stfs f27, 0x10(r26)
lbl_802E2708:
/* 802E2708 002DF668  7C 1A 00 D0 */	neg r0, r26
/* 802E270C 002DF66C  3C 60 80 3D */	lis r3, lbl_803D6D98@ha
/* 802E2710 002DF670  7C 00 D3 78 */	or r0, r0, r26
/* 802E2714 002DF674  93 41 00 60 */	stw r26, 0x60(r1)
/* 802E2718 002DF678  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802E271C 002DF67C  38 83 6D 98 */	addi r4, r3, lbl_803D6D98@l
/* 802E2720 002DF680  98 01 00 5C */	stb r0, 0x5c(r1)
/* 802E2724 002DF684  3B 20 00 00 */	li r25, 0
/* 802E2728 002DF688  38 60 00 38 */	li r3, 0x38
/* 802E272C 002DF68C  38 A0 00 00 */	li r5, 0
/* 802E2730 002DF690  48 03 31 3D */	bl __nw__FUlPCcPCc
/* 802E2734 002DF694  7C 7A 1B 79 */	or. r26, r3, r3
/* 802E2738 002DF698  41 82 00 3C */	beq lbl_802E2774
/* 802E273C 002DF69C  FC 40 F8 90 */	fmr f2, f31
/* 802E2740 002DF6A0  C0 22 C5 B0 */	lfs f1, lbl_805AE2D0@sda21(r2)
/* 802E2744 002DF6A4  7F 64 DB 78 */	mr r4, r27
/* 802E2748 002DF6A8  38 61 00 A4 */	addi r3, r1, 0xa4
/* 802E274C 002DF6AC  38 BE 00 04 */	addi r5, r30, 4
/* 802E2750 002DF6B0  48 01 19 85 */	bl "CreatePrimitiveName__18CAnimTreeTimeScaleFRCQ24rstl25ncrc_ptr<13CAnimTreeNode>fRC13CCharAnimTimef"
/* 802E2754 002DF6B4  7F 43 D3 78 */	mr r3, r26
/* 802E2758 002DF6B8  7F 64 DB 78 */	mr r4, r27
/* 802E275C 002DF6BC  38 A1 00 64 */	addi r5, r1, 0x64
/* 802E2760 002DF6C0  38 DE 00 04 */	addi r6, r30, 4
/* 802E2764 002DF6C4  38 E1 00 A4 */	addi r7, r1, 0xa4
/* 802E2768 002DF6C8  3B 20 00 01 */	li r25, 1
/* 802E276C 002DF6CC  48 00 02 09 */	bl "__ct__18CAnimTreeTimeScaleFRCQ24rstl25ncrc_ptr<13CAnimTreeNode>RCQ24rstl48ownership_transfer<26IVaryingAnimationTimeScale>RC13CCharAnimTimeRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802E2770 002DF6D0  7C 7A 1B 78 */	mr r26, r3
lbl_802E2774:
/* 802E2774 002DF6D4  3C 80 80 3D */	lis r4, lbl_803D6D98@ha
/* 802E2778 002DF6D8  38 60 00 08 */	li r3, 8
/* 802E277C 002DF6DC  38 84 6D 98 */	addi r4, r4, lbl_803D6D98@l
/* 802E2780 002DF6E0  38 A0 00 00 */	li r5, 0
/* 802E2784 002DF6E4  48 03 30 E9 */	bl __nw__FUlPCcPCc
/* 802E2788 002DF6E8  28 03 00 00 */	cmplwi r3, 0
/* 802E278C 002DF6EC  41 82 00 10 */	beq lbl_802E279C
/* 802E2790 002DF6F0  93 43 00 00 */	stw r26, 0(r3)
/* 802E2794 002DF6F4  38 00 00 01 */	li r0, 1
/* 802E2798 002DF6F8  90 03 00 04 */	stw r0, 4(r3)
lbl_802E279C:
/* 802E279C 002DF6FC  7F 20 07 75 */	extsb. r0, r25
/* 802E27A0 002DF700  90 61 00 10 */	stw r3, 0x10(r1)
/* 802E27A4 002DF704  41 82 00 0C */	beq lbl_802E27B0
/* 802E27A8 002DF708  38 61 00 A4 */	addi r3, r1, 0xa4
/* 802E27AC 002DF70C  48 05 B3 35 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802E27B0:
/* 802E27B0 002DF710  3C 60 80 3D */	lis r3, lbl_803D6D98@ha
/* 802E27B4 002DF714  3B 20 00 00 */	li r25, 0
/* 802E27B8 002DF718  38 83 6D 98 */	addi r4, r3, lbl_803D6D98@l
/* 802E27BC 002DF71C  38 A0 00 00 */	li r5, 0
/* 802E27C0 002DF720  38 60 00 38 */	li r3, 0x38
/* 802E27C4 002DF724  48 03 30 A9 */	bl __nw__FUlPCcPCc
/* 802E27C8 002DF728  7C 7A 1B 79 */	or. r26, r3, r3
/* 802E27CC 002DF72C  41 82 00 3C */	beq lbl_802E2808
/* 802E27D0 002DF730  FC 20 F0 90 */	fmr f1, f30
/* 802E27D4 002DF734  C0 42 C5 B0 */	lfs f2, lbl_805AE2D0@sda21(r2)
/* 802E27D8 002DF738  7F 84 E3 78 */	mr r4, r28
/* 802E27DC 002DF73C  38 61 00 94 */	addi r3, r1, 0x94
/* 802E27E0 002DF740  38 BE 00 04 */	addi r5, r30, 4
/* 802E27E4 002DF744  48 01 18 F1 */	bl "CreatePrimitiveName__18CAnimTreeTimeScaleFRCQ24rstl25ncrc_ptr<13CAnimTreeNode>fRC13CCharAnimTimef"
/* 802E27E8 002DF748  7F 43 D3 78 */	mr r3, r26
/* 802E27EC 002DF74C  7F 84 E3 78 */	mr r4, r28
/* 802E27F0 002DF750  38 A1 00 5C */	addi r5, r1, 0x5c
/* 802E27F4 002DF754  38 DE 00 04 */	addi r6, r30, 4
/* 802E27F8 002DF758  38 E1 00 94 */	addi r7, r1, 0x94
/* 802E27FC 002DF75C  3B 20 00 01 */	li r25, 1
/* 802E2800 002DF760  48 00 01 75 */	bl "__ct__18CAnimTreeTimeScaleFRCQ24rstl25ncrc_ptr<13CAnimTreeNode>RCQ24rstl48ownership_transfer<26IVaryingAnimationTimeScale>RC13CCharAnimTimeRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802E2804 002DF764  7C 7A 1B 78 */	mr r26, r3
lbl_802E2808:
/* 802E2808 002DF768  3C 80 80 3D */	lis r4, lbl_803D6D98@ha
/* 802E280C 002DF76C  38 60 00 08 */	li r3, 8
/* 802E2810 002DF770  38 84 6D 98 */	addi r4, r4, lbl_803D6D98@l
/* 802E2814 002DF774  38 A0 00 00 */	li r5, 0
/* 802E2818 002DF778  48 03 30 55 */	bl __nw__FUlPCcPCc
/* 802E281C 002DF77C  28 03 00 00 */	cmplwi r3, 0
/* 802E2820 002DF780  41 82 00 10 */	beq lbl_802E2830
/* 802E2824 002DF784  93 43 00 00 */	stw r26, 0(r3)
/* 802E2828 002DF788  38 00 00 01 */	li r0, 1
/* 802E282C 002DF78C  90 03 00 04 */	stw r0, 4(r3)
lbl_802E2830:
/* 802E2830 002DF790  7F 20 07 75 */	extsb. r0, r25
/* 802E2834 002DF794  90 61 00 0C */	stw r3, 0xc(r1)
/* 802E2838 002DF798  41 82 00 0C */	beq lbl_802E2844
/* 802E283C 002DF79C  38 61 00 94 */	addi r3, r1, 0x94
/* 802E2840 002DF7A0  48 05 B2 A1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802E2844:
/* 802E2844 002DF7A4  3C 60 80 3D */	lis r3, lbl_803D6D98@ha
/* 802E2848 002DF7A8  3B 20 00 00 */	li r25, 0
/* 802E284C 002DF7AC  38 83 6D 98 */	addi r4, r3, lbl_803D6D98@l
/* 802E2850 002DF7B0  38 A0 00 00 */	li r5, 0
/* 802E2854 002DF7B4  38 60 00 38 */	li r3, 0x38
/* 802E2858 002DF7B8  48 03 30 15 */	bl __nw__FUlPCcPCc
/* 802E285C 002DF7BC  7C 7A 1B 79 */	or. r26, r3, r3
/* 802E2860 002DF7C0  41 82 00 44 */	beq lbl_802E28A4
/* 802E2864 002DF7C4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 802E2868 002DF7C8  38 61 00 84 */	addi r3, r1, 0x84
/* 802E286C 002DF7CC  38 81 00 10 */	addi r4, r1, 0x10
/* 802E2870 002DF7D0  38 A1 00 0C */	addi r5, r1, 0xc
/* 802E2874 002DF7D4  48 01 32 4D */	bl "CreatePrimitiveName__19CAnimTreeTransitionFRCQ24rstl25ncrc_ptr<13CAnimTreeNode>RCQ24rstl25ncrc_ptr<13CAnimTreeNode>f"
/* 802E2878 002DF7D8  88 9E 00 0C */	lbz r4, 0xc(r30)
/* 802E287C 002DF7DC  7F 43 D3 78 */	mr r3, r26
/* 802E2880 002DF7E0  89 1E 00 0D */	lbz r8, 0xd(r30)
/* 802E2884 002DF7E4  38 A1 00 10 */	addi r5, r1, 0x10
/* 802E2888 002DF7E8  81 3E 00 10 */	lwz r9, 0x10(r30)
/* 802E288C 002DF7EC  38 C1 00 0C */	addi r6, r1, 0xc
/* 802E2890 002DF7F0  38 FE 00 04 */	addi r7, r30, 4
/* 802E2894 002DF7F4  39 41 00 84 */	addi r10, r1, 0x84
/* 802E2898 002DF7F8  3B 20 00 01 */	li r25, 1
/* 802E289C 002DF7FC  48 01 40 75 */	bl "__ct__19CAnimTreeTransitionFbRCQ24rstl25ncrc_ptr<13CAnimTreeNode>RCQ24rstl25ncrc_ptr<13CAnimTreeNode>RC13CCharAnimTimebiRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802E28A0 002DF800  7C 7A 1B 78 */	mr r26, r3
lbl_802E28A4:
/* 802E28A4 002DF804  3C 80 80 3D */	lis r4, lbl_803D6D98@ha
/* 802E28A8 002DF808  38 60 00 08 */	li r3, 8
/* 802E28AC 002DF80C  38 84 6D 98 */	addi r4, r4, lbl_803D6D98@l
/* 802E28B0 002DF810  38 A0 00 00 */	li r5, 0
/* 802E28B4 002DF814  48 03 2F B9 */	bl __nw__FUlPCcPCc
/* 802E28B8 002DF818  28 03 00 00 */	cmplwi r3, 0
/* 802E28BC 002DF81C  41 82 00 10 */	beq lbl_802E28CC
/* 802E28C0 002DF820  93 43 00 00 */	stw r26, 0(r3)
/* 802E28C4 002DF824  38 00 00 01 */	li r0, 1
/* 802E28C8 002DF828  90 03 00 04 */	stw r0, 4(r3)
lbl_802E28CC:
/* 802E28CC 002DF82C  7F 20 07 75 */	extsb. r0, r25
/* 802E28D0 002DF830  90 7F 00 00 */	stw r3, 0(r31)
/* 802E28D4 002DF834  41 82 00 0C */	beq lbl_802E28E0
/* 802E28D8 002DF838  38 61 00 84 */	addi r3, r1, 0x84
/* 802E28DC 002DF83C  48 05 B2 05 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802E28E0:
/* 802E28E0 002DF840  38 61 00 0C */	addi r3, r1, 0xc
/* 802E28E4 002DF844  4B D4 E6 BD */	bl sub_80030fa0
/* 802E28E8 002DF848  38 61 00 10 */	addi r3, r1, 0x10
/* 802E28EC 002DF84C  4B D4 E6 B5 */	bl sub_80030fa0
/* 802E28F0 002DF850  88 01 00 5C */	lbz r0, 0x5c(r1)
/* 802E28F4 002DF854  28 00 00 00 */	cmplwi r0, 0
/* 802E28F8 002DF858  41 82 00 0C */	beq lbl_802E2904
/* 802E28FC 002DF85C  80 61 00 60 */	lwz r3, 0x60(r1)
/* 802E2900 002DF860  48 03 30 31 */	bl Free__7CMemoryFPCv
lbl_802E2904:
/* 802E2904 002DF864  88 01 00 64 */	lbz r0, 0x64(r1)
/* 802E2908 002DF868  28 00 00 00 */	cmplwi r0, 0
/* 802E290C 002DF86C  41 82 00 0C */	beq lbl_802E2918
/* 802E2910 002DF870  80 61 00 68 */	lwz r3, 0x68(r1)
/* 802E2914 002DF874  48 03 30 1D */	bl Free__7CMemoryFPCv
lbl_802E2918:
/* 802E2918 002DF878  38 00 00 00 */	li r0, 0
/* 802E291C 002DF87C  28 1D 00 00 */	cmplwi r29, 0
/* 802E2920 002DF880  98 01 00 70 */	stb r0, 0x70(r1)
/* 802E2924 002DF884  41 82 00 0C */	beq lbl_802E2930
/* 802E2928 002DF888  7F A3 EB 78 */	mr r3, r29
/* 802E292C 002DF88C  48 05 B1 B5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802E2930:
/* 802E2930 002DF890  E3 E1 02 48 */	psq_l f31, 584(r1), 0, qr0
/* 802E2934 002DF894  CB E1 02 40 */	lfd f31, 0x240(r1)
/* 802E2938 002DF898  E3 C1 02 38 */	psq_l f30, 568(r1), 0, qr0
/* 802E293C 002DF89C  CB C1 02 30 */	lfd f30, 0x230(r1)
/* 802E2940 002DF8A0  E3 A1 02 28 */	psq_l f29, 552(r1), 0, qr0
/* 802E2944 002DF8A4  CB A1 02 20 */	lfd f29, 0x220(r1)
/* 802E2948 002DF8A8  E3 81 02 18 */	psq_l f28, 536(r1), 0, qr0
/* 802E294C 002DF8AC  CB 81 02 10 */	lfd f28, 0x210(r1)
/* 802E2950 002DF8B0  E3 61 02 08 */	psq_l f27, 520(r1), 0, qr0
/* 802E2954 002DF8B4  CB 61 02 00 */	lfd f27, 0x200(r1)
/* 802E2958 002DF8B8  E3 41 01 F8 */	psq_l f26, 504(r1), 0, qr0
/* 802E295C 002DF8BC  CB 41 01 F0 */	lfd f26, 0x1f0(r1)
/* 802E2960 002DF8C0  BB 21 01 D4 */	lmw r25, 0x1d4(r1)
/* 802E2964 002DF8C4  80 01 02 54 */	lwz r0, 0x254(r1)
/* 802E2968 002DF8C8  7C 08 03 A6 */	mtlr r0
/* 802E296C 002DF8CC  38 21 02 50 */	addi r1, r1, 0x250
/* 802E2970 002DF8D0  4E 80 00 20 */	blr

.global "__ct__18CAnimTreeTimeScaleFRCQ24rstl25ncrc_ptr<13CAnimTreeNode>RCQ24rstl48ownership_transfer<26IVaryingAnimationTimeScale>RC13CCharAnimTimeRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
"__ct__18CAnimTreeTimeScaleFRCQ24rstl25ncrc_ptr<13CAnimTreeNode>RCQ24rstl48ownership_transfer<26IVaryingAnimationTimeScale>RC13CCharAnimTimeRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>":
/* 802E2974 002DF8D4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802E2978 002DF8D8  7C 08 02 A6 */	mflr r0
/* 802E297C 002DF8DC  90 01 00 54 */	stw r0, 0x54(r1)
/* 802E2980 002DF8E0  BF 61 00 3C */	stmw r27, 0x3c(r1)
/* 802E2984 002DF8E4  7C 7E 1B 78 */	mr r30, r3
/* 802E2988 002DF8E8  7F C0 F3 78 */	mr r0, r30
/* 802E298C 002DF8EC  7C 9F 23 78 */	mr r31, r4
/* 802E2990 002DF8F0  7C BC 2B 78 */	mr r28, r5
/* 802E2994 002DF8F4  7C DD 33 78 */	mr r29, r6
/* 802E2998 002DF8F8  7C 1B 03 78 */	mr r27, r0
/* 802E299C 002DF8FC  7C E4 3B 78 */	mr r4, r7
/* 802E29A0 002DF900  48 01 13 31 */	bl "__ct__13CAnimTreeNodeFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802E29A4 002DF904  3C 80 80 3F */	lis r4, lbl_803ED240@ha
/* 802E29A8 002DF908  3C 60 80 3F */	lis r3, lbl_803ED2B0@ha
/* 802E29AC 002DF90C  38 84 D2 40 */	addi r4, r4, lbl_803ED240@l
/* 802E29B0 002DF910  38 00 00 00 */	li r0, 0
/* 802E29B4 002DF914  90 9B 00 00 */	stw r4, 0(r27)
/* 802E29B8 002DF918  38 83 D2 B0 */	addi r4, r3, lbl_803ED2B0@l
/* 802E29BC 002DF91C  C0 22 C5 B4 */	lfs f1, lbl_805AE2D4@sda21(r2)
/* 802E29C0 002DF920  38 7E 00 20 */	addi r3, r30, 0x20
/* 802E29C4 002DF924  80 BF 00 00 */	lwz r5, 0(r31)
/* 802E29C8 002DF928  90 BB 00 14 */	stw r5, 0x14(r27)
/* 802E29CC 002DF92C  80 DB 00 14 */	lwz r6, 0x14(r27)
/* 802E29D0 002DF930  80 A6 00 04 */	lwz r5, 4(r6)
/* 802E29D4 002DF934  38 A5 00 01 */	addi r5, r5, 1
/* 802E29D8 002DF938  90 A6 00 04 */	stw r5, 4(r6)
/* 802E29DC 002DF93C  90 9E 00 00 */	stw r4, 0(r30)
/* 802E29E0 002DF940  98 1C 00 00 */	stb r0, 0(r28)
/* 802E29E4 002DF944  80 1C 00 04 */	lwz r0, 4(r28)
/* 802E29E8 002DF948  90 1E 00 18 */	stw r0, 0x18(r30)
/* 802E29EC 002DF94C  48 06 64 01 */	bl __ct__13CCharAnimTimeFf
/* 802E29F0 002DF950  C0 1D 00 00 */	lfs f0, 0(r29)
/* 802E29F4 002DF954  38 61 00 08 */	addi r3, r1, 8
/* 802E29F8 002DF958  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 802E29FC 002DF95C  80 1D 00 04 */	lwz r0, 4(r29)
/* 802E2A00 002DF960  90 1E 00 2C */	stw r0, 0x2c(r30)
/* 802E2A04 002DF964  80 9F 00 00 */	lwz r4, 0(r31)
/* 802E2A08 002DF968  80 84 00 00 */	lwz r4, 0(r4)
/* 802E2A0C 002DF96C  81 84 00 00 */	lwz r12, 0(r4)
/* 802E2A10 002DF970  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802E2A14 002DF974  7D 89 03 A6 */	mtctr r12
/* 802E2A18 002DF978  4E 80 04 21 */	bctrl
/* 802E2A1C 002DF97C  80 9F 00 00 */	lwz r4, 0(r31)
/* 802E2A20 002DF980  38 61 00 20 */	addi r3, r1, 0x20
/* 802E2A24 002DF984  80 84 00 00 */	lwz r4, 0(r4)
/* 802E2A28 002DF988  81 84 00 00 */	lwz r12, 0(r4)
/* 802E2A2C 002DF98C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802E2A30 002DF990  7D 89 03 A6 */	mtctr r12
/* 802E2A34 002DF994  4E 80 04 21 */	bctrl
/* 802E2A38 002DF998  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 802E2A3C 002DF99C  38 61 00 18 */	addi r3, r1, 0x18
/* 802E2A40 002DF9A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E2A44 002DF9A4  38 81 00 10 */	addi r4, r1, 0x10
/* 802E2A48 002DF9A8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802E2A4C 002DF9AC  38 A1 00 08 */	addi r5, r1, 8
/* 802E2A50 002DF9B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E2A54 002DF9B4  48 06 5D 11 */	bl __mi__13CCharAnimTimeCFRC13CCharAnimTime
/* 802E2A58 002DF9B8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 802E2A5C 002DF9BC  7F C3 F3 78 */	mr r3, r30
/* 802E2A60 002DF9C0  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 802E2A64 002DF9C4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802E2A68 002DF9C8  90 1E 00 34 */	stw r0, 0x34(r30)
/* 802E2A6C 002DF9CC  BB 61 00 3C */	lmw r27, 0x3c(r1)
/* 802E2A70 002DF9D0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802E2A74 002DF9D4  7C 08 03 A6 */	mtlr r0
/* 802E2A78 002DF9D8  38 21 00 50 */	addi r1, r1, 0x50
/* 802E2A7C 002DF9DC  4E 80 00 20 */	blr

.global __ct__20CMetaTransPhaseTransFR12CInputStream
__ct__20CMetaTransPhaseTransFR12CInputStream:
/* 802E2A80 002DF9E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E2A84 002DF9E4  7C 08 02 A6 */	mflr r0
/* 802E2A88 002DF9E8  3C A0 80 3E */	lis r5, lbl_803D9C70@ha
/* 802E2A8C 002DF9EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E2A90 002DF9F0  38 05 9C 70 */	addi r0, r5, lbl_803D9C70@l
/* 802E2A94 002DF9F4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802E2A98 002DF9F8  7C 9F 23 78 */	mr r31, r4
/* 802E2A9C 002DF9FC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802E2AA0 002DFA00  7C 7E 1B 78 */	mr r30, r3
/* 802E2AA4 002DFA04  3C 60 80 3F */	lis r3, lbl_803ECDA8@ha
/* 802E2AA8 002DFA08  90 1E 00 00 */	stw r0, 0(r30)
/* 802E2AAC 002DFA0C  38 03 CD A8 */	addi r0, r3, lbl_803ECDA8@l
/* 802E2AB0 002DFA10  38 61 00 08 */	addi r3, r1, 8
/* 802E2AB4 002DFA14  90 1E 00 00 */	stw r0, 0(r30)
/* 802E2AB8 002DFA18  48 06 63 5D */	bl __ct__13CCharAnimTimeFR12CInputStream
/* 802E2ABC 002DFA1C  C0 01 00 08 */	lfs f0, 8(r1)
/* 802E2AC0 002DFA20  7F E3 FB 78 */	mr r3, r31
/* 802E2AC4 002DFA24  D0 1E 00 04 */	stfs f0, 4(r30)
/* 802E2AC8 002DFA28  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802E2ACC 002DFA2C  90 1E 00 08 */	stw r0, 8(r30)
/* 802E2AD0 002DFA30  48 05 C2 0D */	bl ReadBool__12CInputStreamFv
/* 802E2AD4 002DFA34  98 7E 00 0C */	stb r3, 0xc(r30)
/* 802E2AD8 002DFA38  7F E3 FB 78 */	mr r3, r31
/* 802E2ADC 002DFA3C  48 05 C2 01 */	bl ReadBool__12CInputStreamFv
/* 802E2AE0 002DFA40  98 7E 00 0D */	stb r3, 0xd(r30)
/* 802E2AE4 002DFA44  7F E3 FB 78 */	mr r3, r31
/* 802E2AE8 002DFA48  48 05 C1 9D */	bl ReadLong__12CInputStreamFv
/* 802E2AEC 002DFA4C  90 7E 00 10 */	stw r3, 0x10(r30)
/* 802E2AF0 002DFA50  7F C3 F3 78 */	mr r3, r30
/* 802E2AF4 002DFA54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E2AF8 002DFA58  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802E2AFC 002DFA5C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802E2B00 002DFA60  7C 08 03 A6 */	mtlr r0
/* 802E2B04 002DFA64  38 21 00 20 */	addi r1, r1, 0x20
/* 802E2B08 002DFA68  4E 80 00 20 */	blr

.section .sdata2, "a"
.global lbl_805AE2CC
lbl_805AE2CC:
	# ROM: 0x3FAB6C
	.4byte 0

.global lbl_805AE2D0
lbl_805AE2D0:
	# ROM: 0x3FAB70
	.float 1.0

.global lbl_805AE2D4
lbl_805AE2D4:
	# ROM: 0x3FAB74
	.4byte 0


.section .rodata
.global lbl_803D6D98
lbl_803D6D98:
	# ROM: 0x3D3D98
	.asciz "??(??)"
	.balign 4

