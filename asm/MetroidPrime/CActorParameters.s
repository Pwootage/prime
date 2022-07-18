.include "macros.inc"

.section .data

.global lbl_803DFF80
lbl_803DFF80:
	# ROM: 0x3DCF80
	.4byte 0
	.4byte 0
	.4byte __dt__16CActorParametersFv
	.4byte 0

.section .sdata

.global lbl_805A7580
lbl_805A7580:
	# ROM: 0x3F4F20
	.4byte 0

.global lbl_805A7584
lbl_805A7584:
	# ROM: 0x3F4F24
	.4byte 0

.global lbl_805A7588
lbl_805A7588:
	# ROM: 0x3F4F28
	.4byte 0

.global lbl_805A758C
lbl_805A758C:
	# ROM: 0x3F4F2C
	.4byte 0

.section .sdata2, "a"

.global lbl_805AB198
lbl_805AB198:
	# ROM: 0x3F7A38
	.float 0.0
	.4byte 0

.section .text, "ax"

.global MakeActorLights__16CLightParametersCFv
MakeActorLights__16CLightParametersCFv:
/* 80106410 00103370  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80106414 00103374  7C 08 02 A6 */	mflr r0
/* 80106418 00103378  90 01 00 44 */	stw r0, 0x44(r1)
/* 8010641C 0010337C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80106420 00103380  7C 9F 23 78 */	mr r31, r4
/* 80106424 00103384  38 80 00 00 */	li r4, 0
/* 80106428 00103388  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8010642C 0010338C  7C 7E 1B 78 */	mr r30, r3
/* 80106430 00103390  93 A1 00 34 */	stw r29, 0x34(r1)
/* 80106434 00103394  88 1F 00 1C */	lbz r0, 0x1c(r31)
/* 80106438 00103398  98 81 00 10 */	stb r4, 0x10(r1)
/* 8010643C 0010339C  28 00 00 00 */	cmplwi r0, 0
/* 80106440 001033A0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80106444 001033A4  41 82 01 34 */	beq lbl_80106578
/* 80106448 001033A8  3C 80 80 3D */	lis r4, lbl_803CEE50@ha
/* 8010644C 001033AC  38 60 02 E0 */	li r3, 0x2e0
/* 80106450 001033B0  38 84 EE 50 */	addi r4, r4, lbl_803CEE50@l
/* 80106454 001033B4  38 A0 00 00 */	li r5, 0
/* 80106458 001033B8  48 20 F4 15 */	bl __nw__FUlPCcPCc
/* 8010645C 001033BC  7C 7D 1B 79 */	or. r29, r3, r3
/* 80106460 001033C0  41 82 00 68 */	beq lbl_801064C8
/* 80106464 001033C4  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80106468 001033C8  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 8010646C 001033CC  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 80106470 001033D0  90 61 00 18 */	stw r3, 0x18(r1)
/* 80106474 001033D4  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 80106478 001033D8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8010647C 001033DC  90 01 00 20 */	stw r0, 0x20(r1)
/* 80106480 001033E0  48 00 01 35 */	bl GetFramesBetweenRecalculation__16CLightParametersF26ELightRecalculationOptions
/* 80106484 001033E4  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 80106488 001033E8  7C 64 1B 78 */	mr r4, r3
/* 8010648C 001033EC  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 80106490 001033F0  7F A3 EB 78 */	mr r3, r29
/* 80106494 001033F4  20 A5 00 01 */	subfic r5, r5, 1
/* 80106498 001033F8  80 DF 00 38 */	lwz r6, 0x38(r31)
/* 8010649C 001033FC  20 00 00 03 */	subfic r0, r0, 3
/* 801064A0 00103400  80 FF 00 3C */	lwz r7, 0x3c(r31)
/* 801064A4 00103404  7C A9 00 34 */	cntlzw r9, r5
/* 801064A8 00103408  C0 22 94 04 */	lfs f1, lbl_805AB124@sda21(r2)
/* 801064AC 0010340C  7C 00 00 34 */	cntlzw r0, r0
/* 801064B0 00103410  89 1F 00 1D */	lbz r8, 0x1d(r31)
/* 801064B4 00103414  38 A1 00 18 */	addi r5, r1, 0x18
/* 801064B8 00103418  55 29 D9 7E */	srwi r9, r9, 5
/* 801064BC 0010341C  54 0A D9 7E */	srwi r10, r0, 5
/* 801064C0 00103420  4B FF ED 0D */	bl __ct__12CActorLightsFUi9CVector3fiif
/* 801064C4 00103424  7C 7D 1B 78 */	mr r29, r3
lbl_801064C8:
/* 801064C8 00103428  7C 1D 00 D0 */	neg r0, r29
/* 801064CC 0010342C  38 61 00 08 */	addi r3, r1, 8
/* 801064D0 00103430  7C 04 EB 78 */	or r4, r0, r29
/* 801064D4 00103434  38 01 00 10 */	addi r0, r1, 0x10
/* 801064D8 00103438  54 84 0F FE */	srwi r4, r4, 0x1f
/* 801064DC 0010343C  93 A1 00 0C */	stw r29, 0xc(r1)
/* 801064E0 00103440  7C 03 00 40 */	cmplw r3, r0
/* 801064E4 00103444  98 81 00 08 */	stb r4, 8(r1)
/* 801064E8 00103448  41 82 00 34 */	beq lbl_8010651C
/* 801064EC 0010344C  88 01 00 10 */	lbz r0, 0x10(r1)
/* 801064F0 00103450  28 00 00 00 */	cmplwi r0, 0
/* 801064F4 00103454  41 82 00 10 */	beq lbl_80106504
/* 801064F8 00103458  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801064FC 0010345C  38 80 00 01 */	li r4, 1
/* 80106500 00103460  4B FF EB D5 */	bl __dt__12CActorLightsFv
lbl_80106504:
/* 80106504 00103464  88 81 00 08 */	lbz r4, 8(r1)
/* 80106508 00103468  38 00 00 00 */	li r0, 0
/* 8010650C 0010346C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80106510 00103470  98 81 00 10 */	stb r4, 0x10(r1)
/* 80106514 00103474  90 61 00 14 */	stw r3, 0x14(r1)
/* 80106518 00103478  98 01 00 08 */	stb r0, 8(r1)
lbl_8010651C:
/* 8010651C 0010347C  88 01 00 08 */	lbz r0, 8(r1)
/* 80106520 00103480  28 00 00 00 */	cmplwi r0, 0
/* 80106524 00103484  41 82 00 10 */	beq lbl_80106534
/* 80106528 00103488  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8010652C 0010348C  38 80 00 01 */	li r4, 1
/* 80106530 00103490  4B FF EB A5 */	bl __dt__12CActorLightsFv
lbl_80106534:
/* 80106534 00103494  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 80106538 00103498  2C 00 00 02 */	cmpwi r0, 2
/* 8010653C 0010349C  40 82 00 18 */	bne lbl_80106554
/* 80106540 001034A0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80106544 001034A4  38 80 00 00 */	li r4, 0
/* 80106548 001034A8  88 03 02 98 */	lbz r0, 0x298(r3)
/* 8010654C 001034AC  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 80106550 001034B0  98 03 02 98 */	stb r0, 0x298(r3)
lbl_80106554:
/* 80106554 001034B4  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 80106558 001034B8  2C 00 00 00 */	cmpwi r0, 0
/* 8010655C 001034BC  40 82 00 1C */	bne lbl_80106578
/* 80106560 001034C0  88 1F 00 1C */	lbz r0, 0x1c(r31)
/* 80106564 001034C4  28 00 00 00 */	cmplwi r0, 0
/* 80106568 001034C8  41 82 00 10 */	beq lbl_80106578
/* 8010656C 001034CC  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80106570 001034D0  38 9F 00 18 */	addi r4, r31, 0x18
/* 80106574 001034D4  4B FF EA C5 */	bl SetAmbientColor__12CActorLightsFRC6CColor
lbl_80106578:
/* 80106578 001034D8  88 61 00 10 */	lbz r3, 0x10(r1)
/* 8010657C 001034DC  38 00 00 00 */	li r0, 0
/* 80106580 001034E0  98 7E 00 00 */	stb r3, 0(r30)
/* 80106584 001034E4  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80106588 001034E8  90 7E 00 04 */	stw r3, 4(r30)
/* 8010658C 001034EC  98 01 00 10 */	stb r0, 0x10(r1)
/* 80106590 001034F0  48 00 00 08 */	b lbl_80106598
/* 80106594 001034F4  4B FF EB 41 */	bl __dt__12CActorLightsFv
lbl_80106598:
/* 80106598 001034F8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8010659C 001034FC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801065A0 00103500  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 801065A4 00103504  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 801065A8 00103508  7C 08 03 A6 */	mtlr r0
/* 801065AC 0010350C  38 21 00 40 */	addi r1, r1, 0x40
/* 801065B0 00103510  4E 80 00 20 */	blr

.global GetFramesBetweenRecalculation__16CLightParametersF26ELightRecalculationOptions
GetFramesBetweenRecalculation__16CLightParametersF26ELightRecalculationOptions:
/* 801065B4 00103514  2C 03 00 02 */	cmpwi r3, 2
/* 801065B8 00103518  41 82 00 38 */	beq lbl_801065F0
/* 801065BC 0010351C  40 80 00 14 */	bge lbl_801065D0
/* 801065C0 00103520  2C 03 00 00 */	cmpwi r3, 0
/* 801065C4 00103524  41 82 00 18 */	beq lbl_801065DC
/* 801065C8 00103528  40 80 00 20 */	bge lbl_801065E8
/* 801065CC 0010352C  48 00 00 34 */	b lbl_80106600
lbl_801065D0:
/* 801065D0 00103530  2C 03 00 04 */	cmpwi r3, 4
/* 801065D4 00103534  40 80 00 2C */	bge lbl_80106600
/* 801065D8 00103538  48 00 00 20 */	b lbl_801065F8
lbl_801065DC:
/* 801065DC 0010353C  3C 60 40 00 */	lis r3, 0x3FFFFFFF@ha
/* 801065E0 00103540  38 63 FF FF */	addi r3, r3, 0x3FFFFFFF@l
/* 801065E4 00103544  4E 80 00 20 */	blr
lbl_801065E8:
/* 801065E8 00103548  38 60 00 08 */	li r3, 8
/* 801065EC 0010354C  4E 80 00 20 */	blr
lbl_801065F0:
/* 801065F0 00103550  38 60 00 04 */	li r3, 4
/* 801065F4 00103554  4E 80 00 20 */	blr
lbl_801065F8:
/* 801065F8 00103558  38 60 00 01 */	li r3, 1
/* 801065FC 0010355C  4E 80 00 20 */	blr
lbl_80106600:
/* 80106600 00103560  38 60 00 08 */	li r3, 8
/* 80106604 00103564  4E 80 00 20 */	blr

.global __dt__16CActorParametersFv
__dt__16CActorParametersFv:
/* 80106608 00103568  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010660C 0010356C  7C 08 02 A6 */	mflr r0
/* 80106610 00103570  90 01 00 14 */	stw r0, 0x14(r1)
/* 80106614 00103574  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80106618 00103578  7C 7F 1B 79 */	or. r31, r3, r3
/* 8010661C 0010357C  41 82 00 1C */	beq lbl_80106638
/* 80106620 00103580  3C A0 80 3E */	lis r5, lbl_803DFF80@ha
/* 80106624 00103584  7C 80 07 35 */	extsh. r0, r4
/* 80106628 00103588  38 05 FF 80 */	addi r0, r5, lbl_803DFF80@l
/* 8010662C 0010358C  90 1F 00 00 */	stw r0, 0(r31)
/* 80106630 00103590  40 81 00 08 */	ble lbl_80106638
/* 80106634 00103594  48 20 F2 FD */	bl Free__7CMemoryFPCv
lbl_80106638:
/* 80106638 00103598  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010663C 0010359C  7F E3 FB 78 */	mr r3, r31
/* 80106640 001035A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80106644 001035A4  7C 08 03 A6 */	mtlr r0
/* 80106648 001035A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8010664C 001035AC  4E 80 00 20 */	blr

.global __ct__16CLightParametersFv
__ct__16CLightParametersFv:
/* 80106650 001035B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80106654 001035B4  7C 08 02 A6 */	mflr r0
/* 80106658 001035B8  3C 80 80 3E */	lis r4, lbl_803DFF80@ha
/* 8010665C 001035BC  C0 02 94 78 */	lfs f0, lbl_805AB198@sda21(r2)
/* 80106660 001035C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80106664 001035C4  38 00 00 00 */	li r0, 0
/* 80106668 001035C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8010666C 001035CC  7C 7F 1B 78 */	mr r31, r3
/* 80106670 001035D0  38 64 FF 80 */	addi r3, r4, lbl_803DFF80@l
/* 80106674 001035D4  90 7F 00 00 */	stw r3, 0(r31)
/* 80106678 001035D8  98 1F 00 04 */	stb r0, 4(r31)
/* 8010667C 001035DC  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80106680 001035E0  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80106684 001035E4  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 80106688 001035E8  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 8010668C 001035EC  48 24 39 21 */	bl White__6CColorFv
/* 80106690 001035F0  80 03 00 00 */	lwz r0, 0(r3)
/* 80106694 001035F4  3C 60 80 5A */	lis r3, skZero3f@ha
/* 80106698 001035F8  38 C0 00 00 */	li r6, 0
/* 8010669C 001035FC  38 A0 00 01 */	li r5, 1
/* 801066A0 00103600  90 1F 00 18 */	stw r0, 0x18(r31)
/* 801066A4 00103604  38 83 66 A0 */	addi r4, r3, skZero3f@l
/* 801066A8 00103608  38 00 00 04 */	li r0, 4
/* 801066AC 0010360C  7F E3 FB 78 */	mr r3, r31
/* 801066B0 00103610  98 DF 00 1C */	stb r6, 0x1c(r31)
/* 801066B4 00103614  98 DF 00 1D */	stb r6, 0x1d(r31)
/* 801066B8 00103618  90 DF 00 20 */	stw r6, 0x20(r31)
/* 801066BC 0010361C  90 BF 00 24 */	stw r5, 0x24(r31)
/* 801066C0 00103620  90 DF 00 28 */	stw r6, 0x28(r31)
/* 801066C4 00103624  C0 04 00 00 */	lfs f0, 0(r4)
/* 801066C8 00103628  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 801066CC 0010362C  C0 04 00 04 */	lfs f0, 4(r4)
/* 801066D0 00103630  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 801066D4 00103634  C0 04 00 08 */	lfs f0, 8(r4)
/* 801066D8 00103638  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 801066DC 0010363C  90 1F 00 38 */	stw r0, 0x38(r31)
/* 801066E0 00103640  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 801066E4 00103644  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801066E8 00103648  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801066EC 0010364C  7C 08 03 A6 */	mtlr r0
/* 801066F0 00103650  38 21 00 10 */	addi r1, r1, 0x10
/* 801066F4 00103654  4E 80 00 20 */	blr

.global __ct__16CLightParametersFbfQ216CLightParameters19EShadowTessellationffRC6CColorbQ216CLightParameters21EWorldLightingOptionsQ216CLightParameters26ELightRecalculationOptionsRC9CVector3fii
__ct__16CLightParametersFbfQ216CLightParameters19EShadowTessellationffRC6CColorbQ216CLightParameters21EWorldLightingOptionsQ216CLightParameters26ELightRecalculationOptionsRC9CVector3fii:
/* 801066F8 00103658  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801066FC 0010365C  3D 60 80 3E */	lis r11, lbl_803DFF80@ha
/* 80106700 00103660  38 0B FF 80 */	addi r0, r11, lbl_803DFF80@l
/* 80106704 00103664  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80106708 00103668  89 81 00 23 */	lbz r12, 0x23(r1)
/* 8010670C 0010366C  90 03 00 00 */	stw r0, 0(r3)
/* 80106710 00103670  81 61 00 24 */	lwz r11, 0x24(r1)
/* 80106714 00103674  98 83 00 04 */	stb r4, 4(r3)
/* 80106718 00103678  83 E1 00 18 */	lwz r31, 0x18(r1)
/* 8010671C 0010367C  D0 23 00 08 */	stfs f1, 8(r3)
/* 80106720 00103680  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 80106724 00103684  90 A3 00 0C */	stw r5, 0xc(r3)
/* 80106728 00103688  D0 43 00 10 */	stfs f2, 0x10(r3)
/* 8010672C 0010368C  D0 63 00 14 */	stfs f3, 0x14(r3)
/* 80106730 00103690  80 06 00 00 */	lwz r0, 0(r6)
/* 80106734 00103694  90 03 00 18 */	stw r0, 0x18(r3)
/* 80106738 00103698  98 E3 00 1C */	stb r7, 0x1c(r3)
/* 8010673C 0010369C  99 83 00 1D */	stb r12, 0x1d(r3)
/* 80106740 001036A0  91 03 00 20 */	stw r8, 0x20(r3)
/* 80106744 001036A4  91 23 00 24 */	stw r9, 0x24(r3)
/* 80106748 001036A8  91 63 00 28 */	stw r11, 0x28(r3)
/* 8010674C 001036AC  C0 0A 00 00 */	lfs f0, 0(r10)
/* 80106750 001036B0  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80106754 001036B4  C0 0A 00 04 */	lfs f0, 4(r10)
/* 80106758 001036B8  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 8010675C 001036BC  C0 0A 00 08 */	lfs f0, 8(r10)
/* 80106760 001036C0  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 80106764 001036C4  93 E3 00 38 */	stw r31, 0x38(r3)
/* 80106768 001036C8  90 83 00 3C */	stw r4, 0x3c(r3)
/* 8010676C 001036CC  80 03 00 38 */	lwz r0, 0x38(r3)
/* 80106770 001036D0  2C 00 00 04 */	cmpwi r0, 4
/* 80106774 001036D4  41 81 00 0C */	bgt lbl_80106780
/* 80106778 001036D8  2C 00 FF FF */	cmpwi r0, -1
/* 8010677C 001036DC  40 82 00 0C */	bne lbl_80106788
lbl_80106780:
/* 80106780 001036E0  38 00 00 04 */	li r0, 4
/* 80106784 001036E4  90 03 00 38 */	stw r0, 0x38(r3)
lbl_80106788:
/* 80106788 001036E8  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 8010678C 001036EC  2C 00 00 04 */	cmpwi r0, 4
/* 80106790 001036F0  41 81 00 0C */	bgt lbl_8010679C
/* 80106794 001036F4  2C 00 FF FF */	cmpwi r0, -1
/* 80106798 001036F8  40 82 00 0C */	bne lbl_801067A4
lbl_8010679C:
/* 8010679C 001036FC  38 00 00 04 */	li r0, 4
/* 801067A0 00103700  90 03 00 3C */	stw r0, 0x3c(r3)
lbl_801067A4:
/* 801067A4 00103704  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801067A8 00103708  38 21 00 10 */	addi r1, r1, 0x10
/* 801067AC 0010370C  4E 80 00 20 */	blr

.global MakeDamageableTriggerActorParms__FRC16CActorParametersRC16CVisorParameters
MakeDamageableTriggerActorParms__FRC16CActorParametersRC16CVisorParameters:
/* 801067B0 00103710  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 801067B4 00103714  7C 08 02 A6 */	mflr r0
/* 801067B8 00103718  90 01 00 84 */	stw r0, 0x84(r1)
/* 801067BC 0010371C  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 801067C0 00103720  7C BF 2B 78 */	mr r31, r5
/* 801067C4 00103724  93 C1 00 78 */	stw r30, 0x78(r1)
/* 801067C8 00103728  7C 7E 1B 78 */	mr r30, r3
/* 801067CC 0010372C  38 61 00 08 */	addi r3, r1, 8
/* 801067D0 00103730  4B FB EE 4D */	bl __ct__16CActorParametersFRC16CActorParameters
/* 801067D4 00103734  80 1F 00 00 */	lwz r0, 0(r31)
/* 801067D8 00103738  7F C3 F3 78 */	mr r3, r30
/* 801067DC 0010373C  38 81 00 08 */	addi r4, r1, 8
/* 801067E0 00103740  90 01 00 5C */	stw r0, 0x5c(r1)
/* 801067E4 00103744  4B FB EE 39 */	bl __ct__16CActorParametersFRC16CActorParameters
/* 801067E8 00103748  38 61 00 08 */	addi r3, r1, 8
/* 801067EC 0010374C  38 80 FF FF */	li r4, -1
/* 801067F0 00103750  4B FF FE 19 */	bl __dt__16CActorParametersFv
/* 801067F4 00103754  80 01 00 84 */	lwz r0, 0x84(r1)
/* 801067F8 00103758  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 801067FC 0010375C  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 80106800 00103760  7C 08 03 A6 */	mtlr r0
/* 80106804 00103764  38 21 00 80 */	addi r1, r1, 0x80
/* 80106808 00103768  4E 80 00 20 */	blr

.global sub_8010680c
sub_8010680c:
/* 8010680C 0010376C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80106810 00103770  7C 08 02 A6 */	mflr r0
/* 80106814 00103774  90 01 00 84 */	stw r0, 0x84(r1)
/* 80106818 00103778  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 8010681C 0010377C  7C BF 2B 78 */	mr r31, r5
/* 80106820 00103780  93 C1 00 78 */	stw r30, 0x78(r1)
/* 80106824 00103784  7C 7E 1B 78 */	mr r30, r3
/* 80106828 00103788  38 61 00 08 */	addi r3, r1, 8
/* 8010682C 0010378C  4B FB ED F1 */	bl __ct__16CActorParametersFRC16CActorParameters
/* 80106830 00103790  88 01 00 60 */	lbz r0, 0x60(r1)
/* 80106834 00103794  53 E0 36 72 */	rlwimi r0, r31, 6, 0x19, 0x19
/* 80106838 00103798  7F C3 F3 78 */	mr r3, r30
/* 8010683C 0010379C  38 81 00 08 */	addi r4, r1, 8
/* 80106840 001037A0  98 01 00 60 */	stb r0, 0x60(r1)
/* 80106844 001037A4  4B FB ED D9 */	bl __ct__16CActorParametersFRC16CActorParameters
/* 80106848 001037A8  38 61 00 08 */	addi r3, r1, 8
/* 8010684C 001037AC  38 80 FF FF */	li r4, -1
/* 80106850 001037B0  4B FF FD B9 */	bl __dt__16CActorParametersFv
/* 80106854 001037B4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80106858 001037B8  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 8010685C 001037BC  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 80106860 001037C0  7C 08 03 A6 */	mtlr r0
/* 80106864 001037C4  38 21 00 80 */	addi r1, r1, 0x80
/* 80106868 001037C8  4E 80 00 20 */	blr

.global Scannable__16CActorParametersCFRC20CScannableParameters
Scannable__16CActorParametersCFRC20CScannableParameters:
/* 8010686C 001037CC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80106870 001037D0  7C 08 02 A6 */	mflr r0
/* 80106874 001037D4  90 01 00 84 */	stw r0, 0x84(r1)
/* 80106878 001037D8  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 8010687C 001037DC  7C BF 2B 78 */	mr r31, r5
/* 80106880 001037E0  93 C1 00 78 */	stw r30, 0x78(r1)
/* 80106884 001037E4  7C 7E 1B 78 */	mr r30, r3
/* 80106888 001037E8  38 61 00 08 */	addi r3, r1, 8
/* 8010688C 001037EC  4B FB ED 91 */	bl __ct__16CActorParametersFRC16CActorParameters
/* 80106890 001037F0  80 1F 00 00 */	lwz r0, 0(r31)
/* 80106894 001037F4  7F C3 F3 78 */	mr r3, r30
/* 80106898 001037F8  38 81 00 08 */	addi r4, r1, 8
/* 8010689C 001037FC  90 01 00 48 */	stw r0, 0x48(r1)
/* 801068A0 00103800  4B FB ED 7D */	bl __ct__16CActorParametersFRC16CActorParameters
/* 801068A4 00103804  38 61 00 08 */	addi r3, r1, 8
/* 801068A8 00103808  38 80 FF FF */	li r4, -1
/* 801068AC 0010380C  4B FF FD 5D */	bl __dt__16CActorParametersFv
/* 801068B0 00103810  80 01 00 84 */	lwz r0, 0x84(r1)
/* 801068B4 00103814  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 801068B8 00103818  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 801068BC 0010381C  7C 08 03 A6 */	mtlr r0
/* 801068C0 00103820  38 21 00 80 */	addi r1, r1, 0x80
/* 801068C4 00103824  4E 80 00 20 */	blr

.global sub_801068c8
sub_801068c8:
/* 801068C8 00103828  3D 60 80 3E */	lis r11, lbl_803DFF80@ha
/* 801068CC 0010382C  38 0B FF 80 */	addi r0, r11, lbl_803DFF80@l
/* 801068D0 00103830  90 03 00 00 */	stw r0, 0(r3)
/* 801068D4 00103834  55 2B 06 3E */	clrlwi r11, r9, 0x18
/* 801068D8 00103838  89 21 00 0B */	lbz r9, 0xb(r1)
/* 801068DC 0010383C  89 84 00 04 */	lbz r12, 4(r4)
/* 801068E0 00103840  88 01 00 0F */	lbz r0, 0xf(r1)
/* 801068E4 00103844  99 83 00 04 */	stb r12, 4(r3)
/* 801068E8 00103848  C0 04 00 08 */	lfs f0, 8(r4)
/* 801068EC 0010384C  D0 03 00 08 */	stfs f0, 8(r3)
/* 801068F0 00103850  81 84 00 0C */	lwz r12, 0xc(r4)
/* 801068F4 00103854  91 83 00 0C */	stw r12, 0xc(r3)
/* 801068F8 00103858  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 801068FC 0010385C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80106900 00103860  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 80106904 00103864  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80106908 00103868  81 84 00 18 */	lwz r12, 0x18(r4)
/* 8010690C 0010386C  91 83 00 18 */	stw r12, 0x18(r3)
/* 80106910 00103870  89 84 00 1C */	lbz r12, 0x1c(r4)
/* 80106914 00103874  99 83 00 1C */	stb r12, 0x1c(r3)
/* 80106918 00103878  89 84 00 1D */	lbz r12, 0x1d(r4)
/* 8010691C 0010387C  99 83 00 1D */	stb r12, 0x1d(r3)
/* 80106920 00103880  81 84 00 20 */	lwz r12, 0x20(r4)
/* 80106924 00103884  91 83 00 20 */	stw r12, 0x20(r3)
/* 80106928 00103888  81 84 00 24 */	lwz r12, 0x24(r4)
/* 8010692C 0010388C  91 83 00 24 */	stw r12, 0x24(r3)
/* 80106930 00103890  81 84 00 28 */	lwz r12, 0x28(r4)
/* 80106934 00103894  91 83 00 28 */	stw r12, 0x28(r3)
/* 80106938 00103898  C0 04 00 2C */	lfs f0, 0x2c(r4)
/* 8010693C 0010389C  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80106940 001038A0  C0 04 00 30 */	lfs f0, 0x30(r4)
/* 80106944 001038A4  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 80106948 001038A8  C0 04 00 34 */	lfs f0, 0x34(r4)
/* 8010694C 001038AC  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 80106950 001038B0  81 84 00 38 */	lwz r12, 0x38(r4)
/* 80106954 001038B4  91 83 00 38 */	stw r12, 0x38(r3)
/* 80106958 001038B8  80 84 00 3C */	lwz r4, 0x3c(r4)
/* 8010695C 001038BC  90 83 00 3C */	stw r4, 0x3c(r3)
/* 80106960 001038C0  80 85 00 00 */	lwz r4, 0(r5)
/* 80106964 001038C4  90 83 00 40 */	stw r4, 0x40(r3)
/* 80106968 001038C8  80 86 00 00 */	lwz r4, 0(r6)
/* 8010696C 001038CC  90 83 00 44 */	stw r4, 0x44(r3)
/* 80106970 001038D0  80 86 00 04 */	lwz r4, 4(r6)
/* 80106974 001038D4  90 83 00 48 */	stw r4, 0x48(r3)
/* 80106978 001038D8  80 87 00 00 */	lwz r4, 0(r7)
/* 8010697C 001038DC  90 83 00 4C */	stw r4, 0x4c(r3)
/* 80106980 001038E0  80 87 00 04 */	lwz r4, 4(r7)
/* 80106984 001038E4  90 83 00 50 */	stw r4, 0x50(r3)
/* 80106988 001038E8  80 88 00 00 */	lwz r4, 0(r8)
/* 8010698C 001038EC  90 83 00 54 */	stw r4, 0x54(r3)
/* 80106990 001038F0  88 83 00 58 */	lbz r4, 0x58(r3)
/* 80106994 001038F4  51 64 3E 30 */	rlwimi r4, r11, 7, 0x18, 0x18
/* 80106998 001038F8  98 83 00 58 */	stb r4, 0x58(r3)
/* 8010699C 001038FC  88 83 00 58 */	lbz r4, 0x58(r3)
/* 801069A0 00103900  51 44 36 72 */	rlwimi r4, r10, 6, 0x19, 0x19
/* 801069A4 00103904  98 83 00 58 */	stb r4, 0x58(r3)
/* 801069A8 00103908  88 83 00 58 */	lbz r4, 0x58(r3)
/* 801069AC 0010390C  51 24 2E B4 */	rlwimi r4, r9, 5, 0x1a, 0x1a
/* 801069B0 00103910  98 83 00 58 */	stb r4, 0x58(r3)
/* 801069B4 00103914  88 83 00 58 */	lbz r4, 0x58(r3)
/* 801069B8 00103918  50 04 26 F6 */	rlwimi r4, r0, 4, 0x1b, 0x1b
/* 801069BC 0010391C  98 83 00 58 */	stb r4, 0x58(r3)
/* 801069C0 00103920  D0 23 00 5C */	stfs f1, 0x5c(r3)
/* 801069C4 00103924  D0 43 00 60 */	stfs f2, 0x60(r3)
/* 801069C8 00103928  D0 63 00 64 */	stfs f3, 0x64(r3)
/* 801069CC 0010392C  4E 80 00 20 */	blr

.global __ct__16CActorParametersFv
__ct__16CActorParametersFv:
/* 801069D0 00103930  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801069D4 00103934  7C 08 02 A6 */	mflr r0
/* 801069D8 00103938  90 01 00 64 */	stw r0, 0x64(r1)
/* 801069DC 0010393C  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 801069E0 00103940  7C 7F 1B 78 */	mr r31, r3
/* 801069E4 00103944  38 61 00 0C */	addi r3, r1, 0xc
/* 801069E8 00103948  4B FD 3A 05 */	bl None__16CLightParametersFv
/* 801069EC 0010394C  3C 80 80 3E */	lis r4, lbl_803DFF80@ha
/* 801069F0 00103950  38 61 00 0C */	addi r3, r1, 0xc
/* 801069F4 00103954  38 04 FF 80 */	addi r0, r4, lbl_803DFF80@l
/* 801069F8 00103958  38 80 FF FF */	li r4, -1
/* 801069FC 0010395C  90 1F 00 00 */	stw r0, 0(r31)
/* 80106A00 00103960  88 01 00 10 */	lbz r0, 0x10(r1)
/* 80106A04 00103964  98 1F 00 04 */	stb r0, 4(r31)
/* 80106A08 00103968  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80106A0C 0010396C  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80106A10 00103970  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80106A14 00103974  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80106A18 00103978  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80106A1C 0010397C  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 80106A20 00103980  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80106A24 00103984  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 80106A28 00103988  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80106A2C 0010398C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80106A30 00103990  88 01 00 28 */	lbz r0, 0x28(r1)
/* 80106A34 00103994  98 1F 00 1C */	stb r0, 0x1c(r31)
/* 80106A38 00103998  88 01 00 29 */	lbz r0, 0x29(r1)
/* 80106A3C 0010399C  98 1F 00 1D */	stb r0, 0x1d(r31)
/* 80106A40 001039A0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80106A44 001039A4  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80106A48 001039A8  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80106A4C 001039AC  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80106A50 001039B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80106A54 001039B4  90 1F 00 28 */	stw r0, 0x28(r31)
/* 80106A58 001039B8  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80106A5C 001039BC  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 80106A60 001039C0  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80106A64 001039C4  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 80106A68 001039C8  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80106A6C 001039CC  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 80106A70 001039D0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80106A74 001039D4  90 1F 00 38 */	stw r0, 0x38(r31)
/* 80106A78 001039D8  80 01 00 48 */	lwz r0, 0x48(r1)
/* 80106A7C 001039DC  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 80106A80 001039E0  4B FF FB 89 */	bl __dt__16CActorParametersFv
/* 80106A84 001039E4  38 60 FF FF */	li r3, -1
/* 80106A88 001039E8  80 01 00 08 */	lwz r0, 8(r1)
/* 80106A8C 001039EC  90 7F 00 40 */	stw r3, 0x40(r31)
/* 80106A90 001039F0  38 60 00 0F */	li r3, 0xf
/* 80106A94 001039F4  50 60 E0 06 */	rlwimi r0, r3, 0x1c, 0, 3
/* 80106A98 001039F8  38 C0 00 00 */	li r6, 0
/* 80106A9C 001039FC  80 6D 89 C0 */	lwz r3, lbl_805A7580@sda21(r13)
/* 80106AA0 00103A00  7C 05 03 78 */	mr r5, r0
/* 80106AA4 00103A04  50 C5 D9 08 */	rlwimi r5, r6, 0x1b, 4, 4
/* 80106AA8 00103A08  90 01 00 08 */	stw r0, 8(r1)
/* 80106AAC 00103A0C  7C A0 2B 78 */	mr r0, r5
/* 80106AB0 00103A10  38 80 00 01 */	li r4, 1
/* 80106AB4 00103A14  90 7F 00 44 */	stw r3, 0x44(r31)
/* 80106AB8 00103A18  50 C0 D1 4A */	rlwimi r0, r6, 0x1a, 5, 5
/* 80106ABC 00103A1C  C0 02 94 78 */	lfs f0, lbl_805AB198@sda21(r2)
/* 80106AC0 00103A20  7F E3 FB 78 */	mr r3, r31
/* 80106AC4 00103A24  80 ED 89 C4 */	lwz r7, lbl_805A7584@sda21(r13)
/* 80106AC8 00103A28  90 A1 00 08 */	stw r5, 8(r1)
/* 80106ACC 00103A2C  90 FF 00 48 */	stw r7, 0x48(r31)
/* 80106AD0 00103A30  80 AD 89 C8 */	lwz r5, lbl_805A7588@sda21(r13)
/* 80106AD4 00103A34  90 01 00 08 */	stw r0, 8(r1)
/* 80106AD8 00103A38  90 BF 00 4C */	stw r5, 0x4c(r31)
/* 80106ADC 00103A3C  80 AD 89 CC */	lwz r5, lbl_805A758C@sda21(r13)
/* 80106AE0 00103A40  90 BF 00 50 */	stw r5, 0x50(r31)
/* 80106AE4 00103A44  90 1F 00 54 */	stw r0, 0x54(r31)
/* 80106AE8 00103A48  88 1F 00 58 */	lbz r0, 0x58(r31)
/* 80106AEC 00103A4C  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80106AF0 00103A50  98 1F 00 58 */	stb r0, 0x58(r31)
/* 80106AF4 00103A54  88 1F 00 58 */	lbz r0, 0x58(r31)
/* 80106AF8 00103A58  50 C0 36 72 */	rlwimi r0, r6, 6, 0x19, 0x19
/* 80106AFC 00103A5C  98 1F 00 58 */	stb r0, 0x58(r31)
/* 80106B00 00103A60  88 1F 00 58 */	lbz r0, 0x58(r31)
/* 80106B04 00103A64  50 C0 26 F6 */	rlwimi r0, r6, 4, 0x1b, 0x1b
/* 80106B08 00103A68  98 1F 00 58 */	stb r0, 0x58(r31)
/* 80106B0C 00103A6C  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 80106B10 00103A70  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 80106B14 00103A74  D0 1F 00 64 */	stfs f0, 0x64(r31)
/* 80106B18 00103A78  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80106B1C 00103A7C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80106B20 00103A80  7C 08 03 A6 */	mtlr r0
/* 80106B24 00103A84  38 21 00 60 */	addi r1, r1, 0x60
/* 80106B28 00103A88  4E 80 00 20 */	blr

.section .rodata
.global lbl_803CEE50
lbl_803CEE50:
	# ROM: 0x3CBE50
	.asciz "??(??)"
	.balign 4

