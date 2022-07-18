.include "macros.inc"

.section .data

.global lbl_803EC848
lbl_803EC848:
	# ROM: 0x3E9848
	.4byte 0
	.4byte 0
	.4byte __dt__9CGuiLightFv
	.4byte Update__10CGuiWidgetFf
	.4byte Draw__10CGuiWidgetCFRC19CGuiWidgetDrawParms
	.4byte Initialize__10CGuiWidgetFv
	.4byte ProcessUserInput__10CGuiWidgetFRC11CFinalInput
	.4byte Touch__10CGuiWidgetCFv
	.4byte GetIsVisible__10CGuiWidgetCFv
	.4byte sub_80020464
	.4byte GetWidgetTypeID__9CGuiLightCFv
	.4byte AddWorkerWidget__10CGuiWidgetFP10CGuiWidget
	.4byte GetIsFinishedLoadingWidgetSpecific__10CGuiWidgetCFv
	.4byte OnVisible__10CGuiWidgetFv
	.4byte OnActivate__10CGuiWidgetFv
	.4byte SetIsVisible__9CGuiLightFb

.section .text, "ax"

.global GetWidgetTypeID__9CGuiLightCFv
GetWidgetTypeID__9CGuiLightCFv:
/* 802C3740 002C06A0  3C 60 4C 49 */	lis r3, 0x4C495445@ha
/* 802C3744 002C06A4  38 63 54 45 */	addi r3, r3, 0x4C495445@l
/* 802C3748 002C06A8  4E 80 00 20 */	blr

.global BuildLight__9CGuiLightCFv
BuildLight__9CGuiLightCFv:
/* 802C374C 002C06AC  94 21 FD E0 */	stwu r1, -0x220(r1)
/* 802C3750 002C06B0  7C 08 02 A6 */	mflr r0
/* 802C3754 002C06B4  C0 22 C3 80 */	lfs f1, lbl_805AE0A0@sda21(r2)
/* 802C3758 002C06B8  90 01 02 24 */	stw r0, 0x224(r1)
/* 802C375C 002C06BC  FC 40 08 90 */	fmr f2, f1
/* 802C3760 002C06C0  C0 82 C3 84 */	lfs f4, lbl_805AE0A4@sda21(r2)
/* 802C3764 002C06C4  93 E1 02 1C */	stw r31, 0x21c(r1)
/* 802C3768 002C06C8  FC 60 08 90 */	fmr f3, f1
/* 802C376C 002C06CC  7C 9F 23 78 */	mr r31, r4
/* 802C3770 002C06D0  93 C1 02 18 */	stw r30, 0x218(r1)
/* 802C3774 002C06D4  7C 7E 1B 78 */	mr r30, r3
/* 802C3778 002C06D8  38 61 00 08 */	addi r3, r1, 8
/* 802C377C 002C06DC  48 09 FC 71 */	bl __ct__6CColorFffff
/* 802C3780 002C06E0  3C 80 80 5A */	lis r4, skZero3f@ha
/* 802C3784 002C06E4  7C 65 1B 78 */	mr r5, r3
/* 802C3788 002C06E8  38 84 66 A0 */	addi r4, r4, skZero3f@l
/* 802C378C 002C06EC  38 61 01 74 */	addi r3, r1, 0x174
/* 802C3790 002C06F0  48 04 2D 15 */	bl BuildLocalAmbient__6CLightFRC9CVector3fRC6CColor
/* 802C3794 002C06F4  38 61 01 C4 */	addi r3, r1, 0x1c4
/* 802C3798 002C06F8  38 81 01 74 */	addi r4, r1, 0x174
/* 802C379C 002C06FC  4B D7 7D D5 */	bl __ct__6CLightFCR6CLight
/* 802C37A0 002C0700  7F E4 FB 78 */	mr r4, r31
/* 802C37A4 002C0704  38 61 00 10 */	addi r3, r1, 0x10
/* 802C37A8 002C0708  48 00 1A 91 */	bl GetWorldPosition__10CGuiObjectCFv
/* 802C37AC 002C070C  80 1F 00 B8 */	lwz r0, 0xb8(r31)
/* 802C37B0 002C0710  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 802C37B4 002C0714  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 802C37B8 002C0718  2C 00 00 02 */	cmpwi r0, 2
/* 802C37BC 002C071C  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 802C37C0 002C0720  C0 BF 00 58 */	lfs f5, 0x58(r31)
/* 802C37C4 002C0724  C0 9F 00 48 */	lfs f4, 0x48(r31)
/* 802C37C8 002C0728  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 802C37CC 002C072C  80 7F 00 A4 */	lwz r3, 0xa4(r31)
/* 802C37D0 002C0730  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 802C37D4 002C0734  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 802C37D8 002C0738  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 802C37DC 002C073C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 802C37E0 002C0740  D0 81 00 20 */	stfs f4, 0x20(r1)
/* 802C37E4 002C0744  D0 A1 00 24 */	stfs f5, 0x24(r1)
/* 802C37E8 002C0748  90 61 00 0C */	stw r3, 0xc(r1)
/* 802C37EC 002C074C  41 82 01 94 */	beq lbl_802C3980
/* 802C37F0 002C0750  40 80 00 14 */	bge lbl_802C3804
/* 802C37F4 002C0754  2C 00 00 00 */	cmpwi r0, 0
/* 802C37F8 002C0758  41 82 00 18 */	beq lbl_802C3810
/* 802C37FC 002C075C  40 80 00 D0 */	bge lbl_802C38CC
/* 802C3800 002C0760  48 00 03 00 */	b lbl_802C3B00
lbl_802C3804:
/* 802C3804 002C0764  2C 00 00 04 */	cmpwi r0, 4
/* 802C3808 002C0768  41 82 02 2C */	beq lbl_802C3A34
/* 802C380C 002C076C  48 00 02 F4 */	b lbl_802C3B00
lbl_802C3810:
/* 802C3810 002C0770  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 802C3814 002C0774  38 61 01 24 */	addi r3, r1, 0x124
/* 802C3818 002C0778  38 81 00 28 */	addi r4, r1, 0x28
/* 802C381C 002C077C  38 A1 00 1C */	addi r5, r1, 0x1c
/* 802C3820 002C0780  38 C1 00 0C */	addi r6, r1, 0xc
/* 802C3824 002C0784  48 04 2B D9 */	bl BuildSpot__6CLightFRC9CVector3fRC9CVector3fRC6CColorf
/* 802C3828 002C0788  81 81 01 24 */	lwz r12, 0x124(r1)
/* 802C382C 002C078C  81 61 01 28 */	lwz r11, 0x128(r1)
/* 802C3830 002C0790  81 41 01 2C */	lwz r10, 0x12c(r1)
/* 802C3834 002C0794  81 21 01 30 */	lwz r9, 0x130(r1)
/* 802C3838 002C0798  81 01 01 34 */	lwz r8, 0x134(r1)
/* 802C383C 002C079C  80 E1 01 38 */	lwz r7, 0x138(r1)
/* 802C3840 002C07A0  80 C1 01 3C */	lwz r6, 0x13c(r1)
/* 802C3844 002C07A4  80 A1 01 40 */	lwz r5, 0x140(r1)
/* 802C3848 002C07A8  C1 01 01 44 */	lfs f8, 0x144(r1)
/* 802C384C 002C07AC  C0 E1 01 48 */	lfs f7, 0x148(r1)
/* 802C3850 002C07B0  C0 C1 01 4C */	lfs f6, 0x14c(r1)
/* 802C3854 002C07B4  C0 A1 01 50 */	lfs f5, 0x150(r1)
/* 802C3858 002C07B8  C0 81 01 54 */	lfs f4, 0x154(r1)
/* 802C385C 002C07BC  C0 61 01 58 */	lfs f3, 0x158(r1)
/* 802C3860 002C07C0  C0 41 01 5C */	lfs f2, 0x15c(r1)
/* 802C3864 002C07C4  80 81 01 60 */	lwz r4, 0x160(r1)
/* 802C3868 002C07C8  80 61 01 64 */	lwz r3, 0x164(r1)
/* 802C386C 002C07CC  C0 21 01 68 */	lfs f1, 0x168(r1)
/* 802C3870 002C07D0  C0 01 01 6C */	lfs f0, 0x16c(r1)
/* 802C3874 002C07D4  88 01 01 70 */	lbz r0, 0x170(r1)
/* 802C3878 002C07D8  91 81 01 C4 */	stw r12, 0x1c4(r1)
/* 802C387C 002C07DC  91 61 01 C8 */	stw r11, 0x1c8(r1)
/* 802C3880 002C07E0  91 41 01 CC */	stw r10, 0x1cc(r1)
/* 802C3884 002C07E4  91 21 01 D0 */	stw r9, 0x1d0(r1)
/* 802C3888 002C07E8  91 01 01 D4 */	stw r8, 0x1d4(r1)
/* 802C388C 002C07EC  90 E1 01 D8 */	stw r7, 0x1d8(r1)
/* 802C3890 002C07F0  90 C1 01 DC */	stw r6, 0x1dc(r1)
/* 802C3894 002C07F4  90 A1 01 E0 */	stw r5, 0x1e0(r1)
/* 802C3898 002C07F8  D1 01 01 E4 */	stfs f8, 0x1e4(r1)
/* 802C389C 002C07FC  D0 E1 01 E8 */	stfs f7, 0x1e8(r1)
/* 802C38A0 002C0800  D0 C1 01 EC */	stfs f6, 0x1ec(r1)
/* 802C38A4 002C0804  D0 A1 01 F0 */	stfs f5, 0x1f0(r1)
/* 802C38A8 002C0808  D0 81 01 F4 */	stfs f4, 0x1f4(r1)
/* 802C38AC 002C080C  D0 61 01 F8 */	stfs f3, 0x1f8(r1)
/* 802C38B0 002C0810  D0 41 01 FC */	stfs f2, 0x1fc(r1)
/* 802C38B4 002C0814  90 81 02 00 */	stw r4, 0x200(r1)
/* 802C38B8 002C0818  90 61 02 04 */	stw r3, 0x204(r1)
/* 802C38BC 002C081C  D0 21 02 08 */	stfs f1, 0x208(r1)
/* 802C38C0 002C0820  D0 01 02 0C */	stfs f0, 0x20c(r1)
/* 802C38C4 002C0824  98 01 02 10 */	stb r0, 0x210(r1)
/* 802C38C8 002C0828  48 00 02 38 */	b lbl_802C3B00
lbl_802C38CC:
/* 802C38CC 002C082C  38 61 00 D4 */	addi r3, r1, 0xd4
/* 802C38D0 002C0830  38 81 00 28 */	addi r4, r1, 0x28
/* 802C38D4 002C0834  38 A1 00 0C */	addi r5, r1, 0xc
/* 802C38D8 002C0838  48 04 2B 5D */	bl BuildPoint__6CLightFRC9CVector3fRC6CColor
/* 802C38DC 002C083C  81 81 00 D4 */	lwz r12, 0xd4(r1)
/* 802C38E0 002C0840  81 61 00 D8 */	lwz r11, 0xd8(r1)
/* 802C38E4 002C0844  81 41 00 DC */	lwz r10, 0xdc(r1)
/* 802C38E8 002C0848  81 21 00 E0 */	lwz r9, 0xe0(r1)
/* 802C38EC 002C084C  81 01 00 E4 */	lwz r8, 0xe4(r1)
/* 802C38F0 002C0850  80 E1 00 E8 */	lwz r7, 0xe8(r1)
/* 802C38F4 002C0854  80 C1 00 EC */	lwz r6, 0xec(r1)
/* 802C38F8 002C0858  80 A1 00 F0 */	lwz r5, 0xf0(r1)
/* 802C38FC 002C085C  C1 01 00 F4 */	lfs f8, 0xf4(r1)
/* 802C3900 002C0860  C0 E1 00 F8 */	lfs f7, 0xf8(r1)
/* 802C3904 002C0864  C0 C1 00 FC */	lfs f6, 0xfc(r1)
/* 802C3908 002C0868  C0 A1 01 00 */	lfs f5, 0x100(r1)
/* 802C390C 002C086C  C0 81 01 04 */	lfs f4, 0x104(r1)
/* 802C3910 002C0870  C0 61 01 08 */	lfs f3, 0x108(r1)
/* 802C3914 002C0874  C0 41 01 0C */	lfs f2, 0x10c(r1)
/* 802C3918 002C0878  80 81 01 10 */	lwz r4, 0x110(r1)
/* 802C391C 002C087C  80 61 01 14 */	lwz r3, 0x114(r1)
/* 802C3920 002C0880  C0 21 01 18 */	lfs f1, 0x118(r1)
/* 802C3924 002C0884  C0 01 01 1C */	lfs f0, 0x11c(r1)
/* 802C3928 002C0888  88 01 01 20 */	lbz r0, 0x120(r1)
/* 802C392C 002C088C  91 81 01 C4 */	stw r12, 0x1c4(r1)
/* 802C3930 002C0890  91 61 01 C8 */	stw r11, 0x1c8(r1)
/* 802C3934 002C0894  91 41 01 CC */	stw r10, 0x1cc(r1)
/* 802C3938 002C0898  91 21 01 D0 */	stw r9, 0x1d0(r1)
/* 802C393C 002C089C  91 01 01 D4 */	stw r8, 0x1d4(r1)
/* 802C3940 002C08A0  90 E1 01 D8 */	stw r7, 0x1d8(r1)
/* 802C3944 002C08A4  90 C1 01 DC */	stw r6, 0x1dc(r1)
/* 802C3948 002C08A8  90 A1 01 E0 */	stw r5, 0x1e0(r1)
/* 802C394C 002C08AC  D1 01 01 E4 */	stfs f8, 0x1e4(r1)
/* 802C3950 002C08B0  D0 E1 01 E8 */	stfs f7, 0x1e8(r1)
/* 802C3954 002C08B4  D0 C1 01 EC */	stfs f6, 0x1ec(r1)
/* 802C3958 002C08B8  D0 A1 01 F0 */	stfs f5, 0x1f0(r1)
/* 802C395C 002C08BC  D0 81 01 F4 */	stfs f4, 0x1f4(r1)
/* 802C3960 002C08C0  D0 61 01 F8 */	stfs f3, 0x1f8(r1)
/* 802C3964 002C08C4  D0 41 01 FC */	stfs f2, 0x1fc(r1)
/* 802C3968 002C08C8  90 81 02 00 */	stw r4, 0x200(r1)
/* 802C396C 002C08CC  90 61 02 04 */	stw r3, 0x204(r1)
/* 802C3970 002C08D0  D0 21 02 08 */	stfs f1, 0x208(r1)
/* 802C3974 002C08D4  D0 01 02 0C */	stfs f0, 0x20c(r1)
/* 802C3978 002C08D8  98 01 02 10 */	stb r0, 0x210(r1)
/* 802C397C 002C08DC  48 00 01 84 */	b lbl_802C3B00
lbl_802C3980:
/* 802C3980 002C08E0  38 61 00 84 */	addi r3, r1, 0x84
/* 802C3984 002C08E4  38 81 00 1C */	addi r4, r1, 0x1c
/* 802C3988 002C08E8  38 A1 00 0C */	addi r5, r1, 0xc
/* 802C398C 002C08EC  48 04 2A E1 */	bl BuildDirectional__6CLightFRC9CVector3fRC6CColor
/* 802C3990 002C08F0  81 81 00 84 */	lwz r12, 0x84(r1)
/* 802C3994 002C08F4  81 61 00 88 */	lwz r11, 0x88(r1)
/* 802C3998 002C08F8  81 41 00 8C */	lwz r10, 0x8c(r1)
/* 802C399C 002C08FC  81 21 00 90 */	lwz r9, 0x90(r1)
/* 802C39A0 002C0900  81 01 00 94 */	lwz r8, 0x94(r1)
/* 802C39A4 002C0904  80 E1 00 98 */	lwz r7, 0x98(r1)
/* 802C39A8 002C0908  80 C1 00 9C */	lwz r6, 0x9c(r1)
/* 802C39AC 002C090C  80 A1 00 A0 */	lwz r5, 0xa0(r1)
/* 802C39B0 002C0910  C1 01 00 A4 */	lfs f8, 0xa4(r1)
/* 802C39B4 002C0914  C0 E1 00 A8 */	lfs f7, 0xa8(r1)
/* 802C39B8 002C0918  C0 C1 00 AC */	lfs f6, 0xac(r1)
/* 802C39BC 002C091C  C0 A1 00 B0 */	lfs f5, 0xb0(r1)
/* 802C39C0 002C0920  C0 81 00 B4 */	lfs f4, 0xb4(r1)
/* 802C39C4 002C0924  C0 61 00 B8 */	lfs f3, 0xb8(r1)
/* 802C39C8 002C0928  C0 41 00 BC */	lfs f2, 0xbc(r1)
/* 802C39CC 002C092C  80 81 00 C0 */	lwz r4, 0xc0(r1)
/* 802C39D0 002C0930  80 61 00 C4 */	lwz r3, 0xc4(r1)
/* 802C39D4 002C0934  C0 21 00 C8 */	lfs f1, 0xc8(r1)
/* 802C39D8 002C0938  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 802C39DC 002C093C  88 01 00 D0 */	lbz r0, 0xd0(r1)
/* 802C39E0 002C0940  91 81 01 C4 */	stw r12, 0x1c4(r1)
/* 802C39E4 002C0944  91 61 01 C8 */	stw r11, 0x1c8(r1)
/* 802C39E8 002C0948  91 41 01 CC */	stw r10, 0x1cc(r1)
/* 802C39EC 002C094C  91 21 01 D0 */	stw r9, 0x1d0(r1)
/* 802C39F0 002C0950  91 01 01 D4 */	stw r8, 0x1d4(r1)
/* 802C39F4 002C0954  90 E1 01 D8 */	stw r7, 0x1d8(r1)
/* 802C39F8 002C0958  90 C1 01 DC */	stw r6, 0x1dc(r1)
/* 802C39FC 002C095C  90 A1 01 E0 */	stw r5, 0x1e0(r1)
/* 802C3A00 002C0960  D1 01 01 E4 */	stfs f8, 0x1e4(r1)
/* 802C3A04 002C0964  D0 E1 01 E8 */	stfs f7, 0x1e8(r1)
/* 802C3A08 002C0968  D0 C1 01 EC */	stfs f6, 0x1ec(r1)
/* 802C3A0C 002C096C  D0 A1 01 F0 */	stfs f5, 0x1f0(r1)
/* 802C3A10 002C0970  D0 81 01 F4 */	stfs f4, 0x1f4(r1)
/* 802C3A14 002C0974  D0 61 01 F8 */	stfs f3, 0x1f8(r1)
/* 802C3A18 002C0978  D0 41 01 FC */	stfs f2, 0x1fc(r1)
/* 802C3A1C 002C097C  90 81 02 00 */	stw r4, 0x200(r1)
/* 802C3A20 002C0980  90 61 02 04 */	stw r3, 0x204(r1)
/* 802C3A24 002C0984  D0 21 02 08 */	stfs f1, 0x208(r1)
/* 802C3A28 002C0988  D0 01 02 0C */	stfs f0, 0x20c(r1)
/* 802C3A2C 002C098C  98 01 02 10 */	stb r0, 0x210(r1)
/* 802C3A30 002C0990  48 00 00 D0 */	b lbl_802C3B00
lbl_802C3A34:
/* 802C3A34 002C0994  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 802C3A38 002C0998  38 61 00 34 */	addi r3, r1, 0x34
/* 802C3A3C 002C099C  C0 5F 00 C4 */	lfs f2, 0xc4(r31)
/* 802C3A40 002C09A0  38 81 00 28 */	addi r4, r1, 0x28
/* 802C3A44 002C09A4  C0 7F 00 C8 */	lfs f3, 0xc8(r31)
/* 802C3A48 002C09A8  38 A1 00 1C */	addi r5, r1, 0x1c
/* 802C3A4C 002C09AC  C0 9F 00 CC */	lfs f4, 0xcc(r31)
/* 802C3A50 002C09B0  38 C1 00 0C */	addi r6, r1, 0xc
/* 802C3A54 002C09B4  C0 BF 00 D0 */	lfs f5, 0xd0(r31)
/* 802C3A58 002C09B8  C0 DF 00 D4 */	lfs f6, 0xd4(r31)
/* 802C3A5C 002C09BC  48 04 29 81 */	bl BuildCustom__6CLightFRC9CVector3fRC9CVector3fRC6CColorffffff
/* 802C3A60 002C09C0  81 81 00 34 */	lwz r12, 0x34(r1)
/* 802C3A64 002C09C4  81 61 00 38 */	lwz r11, 0x38(r1)
/* 802C3A68 002C09C8  81 41 00 3C */	lwz r10, 0x3c(r1)
/* 802C3A6C 002C09CC  81 21 00 40 */	lwz r9, 0x40(r1)
/* 802C3A70 002C09D0  81 01 00 44 */	lwz r8, 0x44(r1)
/* 802C3A74 002C09D4  80 E1 00 48 */	lwz r7, 0x48(r1)
/* 802C3A78 002C09D8  80 C1 00 4C */	lwz r6, 0x4c(r1)
/* 802C3A7C 002C09DC  80 A1 00 50 */	lwz r5, 0x50(r1)
/* 802C3A80 002C09E0  C1 01 00 54 */	lfs f8, 0x54(r1)
/* 802C3A84 002C09E4  C0 E1 00 58 */	lfs f7, 0x58(r1)
/* 802C3A88 002C09E8  C0 C1 00 5C */	lfs f6, 0x5c(r1)
/* 802C3A8C 002C09EC  C0 A1 00 60 */	lfs f5, 0x60(r1)
/* 802C3A90 002C09F0  C0 81 00 64 */	lfs f4, 0x64(r1)
/* 802C3A94 002C09F4  C0 61 00 68 */	lfs f3, 0x68(r1)
/* 802C3A98 002C09F8  C0 41 00 6C */	lfs f2, 0x6c(r1)
/* 802C3A9C 002C09FC  80 81 00 70 */	lwz r4, 0x70(r1)
/* 802C3AA0 002C0A00  80 61 00 74 */	lwz r3, 0x74(r1)
/* 802C3AA4 002C0A04  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 802C3AA8 002C0A08  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 802C3AAC 002C0A0C  88 01 00 80 */	lbz r0, 0x80(r1)
/* 802C3AB0 002C0A10  91 81 01 C4 */	stw r12, 0x1c4(r1)
/* 802C3AB4 002C0A14  91 61 01 C8 */	stw r11, 0x1c8(r1)
/* 802C3AB8 002C0A18  91 41 01 CC */	stw r10, 0x1cc(r1)
/* 802C3ABC 002C0A1C  91 21 01 D0 */	stw r9, 0x1d0(r1)
/* 802C3AC0 002C0A20  91 01 01 D4 */	stw r8, 0x1d4(r1)
/* 802C3AC4 002C0A24  90 E1 01 D8 */	stw r7, 0x1d8(r1)
/* 802C3AC8 002C0A28  90 C1 01 DC */	stw r6, 0x1dc(r1)
/* 802C3ACC 002C0A2C  90 A1 01 E0 */	stw r5, 0x1e0(r1)
/* 802C3AD0 002C0A30  D1 01 01 E4 */	stfs f8, 0x1e4(r1)
/* 802C3AD4 002C0A34  D0 E1 01 E8 */	stfs f7, 0x1e8(r1)
/* 802C3AD8 002C0A38  D0 C1 01 EC */	stfs f6, 0x1ec(r1)
/* 802C3ADC 002C0A3C  D0 A1 01 F0 */	stfs f5, 0x1f0(r1)
/* 802C3AE0 002C0A40  D0 81 01 F4 */	stfs f4, 0x1f4(r1)
/* 802C3AE4 002C0A44  D0 61 01 F8 */	stfs f3, 0x1f8(r1)
/* 802C3AE8 002C0A48  D0 41 01 FC */	stfs f2, 0x1fc(r1)
/* 802C3AEC 002C0A4C  90 81 02 00 */	stw r4, 0x200(r1)
/* 802C3AF0 002C0A50  90 61 02 04 */	stw r3, 0x204(r1)
/* 802C3AF4 002C0A54  D0 21 02 08 */	stfs f1, 0x208(r1)
/* 802C3AF8 002C0A58  D0 01 02 0C */	stfs f0, 0x20c(r1)
/* 802C3AFC 002C0A5C  98 01 02 10 */	stb r0, 0x210(r1)
lbl_802C3B00:
/* 802C3B00 002C0A60  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 802C3B04 002C0A64  38 61 01 C4 */	addi r3, r1, 0x1c4
/* 802C3B08 002C0A68  C0 5F 00 C4 */	lfs f2, 0xc4(r31)
/* 802C3B0C 002C0A6C  C0 7F 00 C8 */	lfs f3, 0xc8(r31)
/* 802C3B10 002C0A70  48 04 28 A1 */	bl SetAttenuation__6CLightFfff
/* 802C3B14 002C0A74  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 802C3B18 002C0A78  38 61 01 C4 */	addi r3, r1, 0x1c4
/* 802C3B1C 002C0A7C  C0 5F 00 D0 */	lfs f2, 0xd0(r31)
/* 802C3B20 002C0A80  C0 7F 00 D4 */	lfs f3, 0xd4(r31)
/* 802C3B24 002C0A84  48 04 28 61 */	bl SetAngleAttenuation__6CLightFfff
/* 802C3B28 002C0A88  80 1F 00 D8 */	lwz r0, 0xd8(r31)
/* 802C3B2C 002C0A8C  7F C3 F3 78 */	mr r3, r30
/* 802C3B30 002C0A90  38 81 01 C4 */	addi r4, r1, 0x1c4
/* 802C3B34 002C0A94  90 01 02 04 */	stw r0, 0x204(r1)
/* 802C3B38 002C0A98  4B D7 7A 39 */	bl __ct__6CLightFCR6CLight
/* 802C3B3C 002C0A9C  80 01 02 24 */	lwz r0, 0x224(r1)
/* 802C3B40 002C0AA0  83 E1 02 1C */	lwz r31, 0x21c(r1)
/* 802C3B44 002C0AA4  83 C1 02 18 */	lwz r30, 0x218(r1)
/* 802C3B48 002C0AA8  7C 08 03 A6 */	mtlr r0
/* 802C3B4C 002C0AAC  38 21 02 20 */	addi r1, r1, 0x220
/* 802C3B50 002C0AB0  4E 80 00 20 */	blr

.global SetIsVisible__9CGuiLightFb
SetIsVisible__9CGuiLightFb:
/* 802C3B54 002C0AB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C3B58 002C0AB8  7C 08 02 A6 */	mflr r0
/* 802C3B5C 002C0ABC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C3B60 002C0AC0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802C3B64 002C0AC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C3B68 002C0AC8  7C 9F 23 78 */	mr r31, r4
/* 802C3B6C 002C0ACC  93 C1 00 08 */	stw r30, 8(r1)
/* 802C3B70 002C0AD0  7C 7E 1B 78 */	mr r30, r3
/* 802C3B74 002C0AD4  41 82 00 14 */	beq lbl_802C3B88
/* 802C3B78 002C0AD8  80 7E 00 B0 */	lwz r3, 0xb0(r30)
/* 802C3B7C 002C0ADC  7F C4 F3 78 */	mr r4, r30
/* 802C3B80 002C0AE0  4B FF E9 BD */	bl AddLight__9CGuiFrameFP9CGuiLight
/* 802C3B84 002C0AE4  48 00 00 10 */	b lbl_802C3B94
lbl_802C3B88:
/* 802C3B88 002C0AE8  80 7E 00 B0 */	lwz r3, 0xb0(r30)
/* 802C3B8C 002C0AEC  7F C4 F3 78 */	mr r4, r30
/* 802C3B90 002C0AF0  4B FF E9 89 */	bl RemoveLight__9CGuiFrameFP9CGuiLight
lbl_802C3B94:
/* 802C3B94 002C0AF4  7F C3 F3 78 */	mr r3, r30
/* 802C3B98 002C0AF8  57 E4 06 3E */	clrlwi r4, r31, 0x18
/* 802C3B9C 002C0AFC  48 00 6A 91 */	bl SetIsVisible__10CGuiWidgetFb
/* 802C3BA0 002C0B00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C3BA4 002C0B04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C3BA8 002C0B08  83 C1 00 08 */	lwz r30, 8(r1)
/* 802C3BAC 002C0B0C  7C 08 03 A6 */	mtlr r0
/* 802C3BB0 002C0B10  38 21 00 10 */	addi r1, r1, 0x10
/* 802C3BB4 002C0B14  4E 80 00 20 */	blr

.global __dt__9CGuiLightFv
__dt__9CGuiLightFv:
/* 802C3BB8 002C0B18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C3BBC 002C0B1C  7C 08 02 A6 */	mflr r0
/* 802C3BC0 002C0B20  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C3BC4 002C0B24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C3BC8 002C0B28  7C 9F 23 78 */	mr r31, r4
/* 802C3BCC 002C0B2C  93 C1 00 08 */	stw r30, 8(r1)
/* 802C3BD0 002C0B30  7C 7E 1B 79 */	or. r30, r3, r3
/* 802C3BD4 002C0B34  41 82 00 38 */	beq lbl_802C3C0C
/* 802C3BD8 002C0B38  3C 60 80 3F */	lis r3, lbl_803EC848@ha
/* 802C3BDC 002C0B3C  7F C4 F3 78 */	mr r4, r30
/* 802C3BE0 002C0B40  38 03 C8 48 */	addi r0, r3, lbl_803EC848@l
/* 802C3BE4 002C0B44  90 1E 00 00 */	stw r0, 0(r30)
/* 802C3BE8 002C0B48  80 7E 00 B0 */	lwz r3, 0xb0(r30)
/* 802C3BEC 002C0B4C  4B FF E9 2D */	bl RemoveLight__9CGuiFrameFP9CGuiLight
/* 802C3BF0 002C0B50  7F C3 F3 78 */	mr r3, r30
/* 802C3BF4 002C0B54  38 80 00 00 */	li r4, 0
/* 802C3BF8 002C0B58  48 00 6F BD */	bl __dt__10CGuiWidgetFv
/* 802C3BFC 002C0B5C  7F E0 07 35 */	extsh. r0, r31
/* 802C3C00 002C0B60  40 81 00 0C */	ble lbl_802C3C0C
/* 802C3C04 002C0B64  7F C3 F3 78 */	mr r3, r30
/* 802C3C08 002C0B68  48 05 1D 29 */	bl Free__7CMemoryFPCv
lbl_802C3C0C:
/* 802C3C0C 002C0B6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C3C10 002C0B70  7F C3 F3 78 */	mr r3, r30
/* 802C3C14 002C0B74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C3C18 002C0B78  83 C1 00 08 */	lwz r30, 8(r1)
/* 802C3C1C 002C0B7C  7C 08 03 A6 */	mtlr r0
/* 802C3C20 002C0B80  38 21 00 10 */	addi r1, r1, 0x10
/* 802C3C24 002C0B84  4E 80 00 20 */	blr

.global __ct__9CGuiLightFRCQ210CGuiWidget15CGuiWidgetParmsRC6CLight
__ct__9CGuiLightFRCQ210CGuiWidget15CGuiWidgetParmsRC6CLight:
/* 802C3C28 002C0B88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C3C2C 002C0B8C  7C 08 02 A6 */	mflr r0
/* 802C3C30 002C0B90  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C3C34 002C0B94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C3C38 002C0B98  7C BF 2B 78 */	mr r31, r5
/* 802C3C3C 002C0B9C  93 C1 00 08 */	stw r30, 8(r1)
/* 802C3C40 002C0BA0  7C 7E 1B 78 */	mr r30, r3
/* 802C3C44 002C0BA4  48 00 6F E1 */	bl __ct__10CGuiWidgetFRCQ210CGuiWidget15CGuiWidgetParms
/* 802C3C48 002C0BA8  3C 60 80 3F */	lis r3, lbl_803EC848@ha
/* 802C3C4C 002C0BAC  38 03 C8 48 */	addi r0, r3, lbl_803EC848@l
/* 802C3C50 002C0BB0  90 1E 00 00 */	stw r0, 0(r30)
/* 802C3C54 002C0BB4  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 802C3C58 002C0BB8  90 1E 00 B8 */	stw r0, 0xb8(r30)
/* 802C3C5C 002C0BBC  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 802C3C60 002C0BC0  D0 1E 00 BC */	stfs f0, 0xbc(r30)
/* 802C3C64 002C0BC4  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 802C3C68 002C0BC8  D0 1E 00 C0 */	stfs f0, 0xc0(r30)
/* 802C3C6C 002C0BCC  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 802C3C70 002C0BD0  D0 1E 00 C4 */	stfs f0, 0xc4(r30)
/* 802C3C74 002C0BD4  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 802C3C78 002C0BD8  D0 1E 00 C8 */	stfs f0, 0xc8(r30)
/* 802C3C7C 002C0BDC  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 802C3C80 002C0BE0  D0 1E 00 CC */	stfs f0, 0xcc(r30)
/* 802C3C84 002C0BE4  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 802C3C88 002C0BE8  D0 1E 00 D0 */	stfs f0, 0xd0(r30)
/* 802C3C8C 002C0BEC  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 802C3C90 002C0BF0  D0 1E 00 D4 */	stfs f0, 0xd4(r30)
/* 802C3C94 002C0BF4  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 802C3C98 002C0BF8  90 1E 00 D8 */	stw r0, 0xd8(r30)
/* 802C3C9C 002C0BFC  48 08 63 19 */	bl Black__6CColorFv
/* 802C3CA0 002C0C00  80 03 00 00 */	lwz r0, 0(r3)
/* 802C3CA4 002C0C04  7F C3 F3 78 */	mr r3, r30
/* 802C3CA8 002C0C08  90 1E 00 DC */	stw r0, 0xdc(r30)
/* 802C3CAC 002C0C0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C3CB0 002C0C10  83 C1 00 08 */	lwz r30, 8(r1)
/* 802C3CB4 002C0C14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C3CB8 002C0C18  7C 08 03 A6 */	mtlr r0
/* 802C3CBC 002C0C1C  38 21 00 10 */	addi r1, r1, 0x10
/* 802C3CC0 002C0C20  4E 80 00 20 */	blr

.global Create__9CGuiLightFP9CGuiFrameR12CInputStreamb
Create__9CGuiLightFP9CGuiFrameR12CInputStreamb:
/* 802C3CC4 002C0C24  94 21 FD 90 */	stwu r1, -0x270(r1)
/* 802C3CC8 002C0C28  7C 08 02 A6 */	mflr r0
/* 802C3CCC 002C0C2C  90 01 02 74 */	stw r0, 0x274(r1)
/* 802C3CD0 002C0C30  39 61 02 70 */	addi r11, r1, 0x270
/* 802C3CD4 002C0C34  48 0C 5D 0D */	bl _savefpr_26
/* 802C3CD8 002C0C38  BF 61 02 2C */	stmw r27, 0x22c(r1)
/* 802C3CDC 002C0C3C  7C 7E 1B 78 */	mr r30, r3
/* 802C3CE0 002C0C40  7C 9F 23 78 */	mr r31, r4
/* 802C3CE4 002C0C44  7F C4 F3 78 */	mr r4, r30
/* 802C3CE8 002C0C48  38 61 00 0C */	addi r3, r1, 0xc
/* 802C3CEC 002C0C4C  7F E5 FB 78 */	mr r5, r31
/* 802C3CF0 002C0C50  48 00 70 61 */	bl ReadWidgetHeader__10CGuiWidgetFP9CGuiFrameR12CInputStreamb
/* 802C3CF4 002C0C54  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 802C3CF8 002C0C58  7F E3 FB 78 */	mr r3, r31
/* 802C3CFC 002C0C5C  83 81 00 0C */	lwz r28, 0xc(r1)
/* 802C3D00 002C0C60  89 81 00 10 */	lbz r12, 0x10(r1)
/* 802C3D04 002C0C64  A9 61 00 12 */	lha r11, 0x12(r1)
/* 802C3D08 002C0C68  A9 41 00 14 */	lha r10, 0x14(r1)
/* 802C3D0C 002C0C6C  89 21 00 16 */	lbz r9, 0x16(r1)
/* 802C3D10 002C0C70  89 01 00 17 */	lbz r8, 0x17(r1)
/* 802C3D14 002C0C74  88 E1 00 18 */	lbz r7, 0x18(r1)
/* 802C3D18 002C0C78  88 C1 00 19 */	lbz r6, 0x19(r1)
/* 802C3D1C 002C0C7C  88 A1 00 1A */	lbz r5, 0x1a(r1)
/* 802C3D20 002C0C80  80 01 00 20 */	lwz r0, 0x20(r1)
/* 802C3D24 002C0C84  93 81 00 24 */	stw r28, 0x24(r1)
/* 802C3D28 002C0C88  99 81 00 28 */	stb r12, 0x28(r1)
/* 802C3D2C 002C0C8C  B1 61 00 2A */	sth r11, 0x2a(r1)
/* 802C3D30 002C0C90  B1 41 00 2C */	sth r10, 0x2c(r1)
/* 802C3D34 002C0C94  99 21 00 2E */	stb r9, 0x2e(r1)
/* 802C3D38 002C0C98  99 01 00 2F */	stb r8, 0x2f(r1)
/* 802C3D3C 002C0C9C  98 E1 00 30 */	stb r7, 0x30(r1)
/* 802C3D40 002C0CA0  98 C1 00 31 */	stb r6, 0x31(r1)
/* 802C3D44 002C0CA4  98 A1 00 32 */	stb r5, 0x32(r1)
/* 802C3D48 002C0CA8  90 81 00 34 */	stw r4, 0x34(r1)
/* 802C3D4C 002C0CAC  90 01 00 38 */	stw r0, 0x38(r1)
/* 802C3D50 002C0CB0  90 81 00 08 */	stw r4, 8(r1)
/* 802C3D54 002C0CB4  48 07 AF 31 */	bl ReadLong__12CInputStreamFv
/* 802C3D58 002C0CB8  7C 7C 1B 78 */	mr r28, r3
/* 802C3D5C 002C0CBC  7F E3 FB 78 */	mr r3, r31
/* 802C3D60 002C0CC0  48 07 AE C9 */	bl ReadFloat__12CInputStreamFv
/* 802C3D64 002C0CC4  FF E0 08 90 */	fmr f31, f1
/* 802C3D68 002C0CC8  7F E3 FB 78 */	mr r3, r31
/* 802C3D6C 002C0CCC  48 07 AE BD */	bl ReadFloat__12CInputStreamFv
/* 802C3D70 002C0CD0  FF C0 08 90 */	fmr f30, f1
/* 802C3D74 002C0CD4  7F E3 FB 78 */	mr r3, r31
/* 802C3D78 002C0CD8  48 07 AE B1 */	bl ReadFloat__12CInputStreamFv
/* 802C3D7C 002C0CDC  FF A0 08 90 */	fmr f29, f1
/* 802C3D80 002C0CE0  7F E3 FB 78 */	mr r3, r31
/* 802C3D84 002C0CE4  48 07 AE A5 */	bl ReadFloat__12CInputStreamFv
/* 802C3D88 002C0CE8  FF 80 08 90 */	fmr f28, f1
/* 802C3D8C 002C0CEC  7F E3 FB 78 */	mr r3, r31
/* 802C3D90 002C0CF0  48 07 AE 99 */	bl ReadFloat__12CInputStreamFv
/* 802C3D94 002C0CF4  FF 60 08 90 */	fmr f27, f1
/* 802C3D98 002C0CF8  7F E3 FB 78 */	mr r3, r31
/* 802C3D9C 002C0CFC  48 07 AE 8D */	bl ReadFloat__12CInputStreamFv
/* 802C3DA0 002C0D00  FF 40 08 90 */	fmr f26, f1
/* 802C3DA4 002C0D04  7F E3 FB 78 */	mr r3, r31
/* 802C3DA8 002C0D08  48 07 AE DD */	bl ReadLong__12CInputStreamFv
/* 802C3DAC 002C0D0C  2C 1C 00 01 */	cmpwi r28, 1
/* 802C3DB0 002C0D10  7C 7D 1B 78 */	mr r29, r3
/* 802C3DB4 002C0D14  3B 60 00 00 */	li r27, 0
/* 802C3DB8 002C0D18  41 82 00 AC */	beq lbl_802C3E64
/* 802C3DBC 002C0D1C  40 80 00 10 */	bge lbl_802C3DCC
/* 802C3DC0 002C0D20  2C 1C 00 00 */	cmpwi r28, 0
/* 802C3DC4 002C0D24  40 80 00 14 */	bge lbl_802C3DD8
/* 802C3DC8 002C0D28  48 00 01 5C */	b lbl_802C3F24
lbl_802C3DCC:
/* 802C3DCC 002C0D2C  2C 1C 00 03 */	cmpwi r28, 3
/* 802C3DD0 002C0D30  40 80 01 54 */	bge lbl_802C3F24
/* 802C3DD4 002C0D34  48 00 00 FC */	b lbl_802C3ED0
lbl_802C3DD8:
/* 802C3DD8 002C0D38  7F E3 FB 78 */	mr r3, r31
/* 802C3DDC 002C0D3C  48 07 AE 4D */	bl ReadFloat__12CInputStreamFv
/* 802C3DE0 002C0D40  3C 80 80 5A */	lis r4, skZero3f@ha
/* 802C3DE4 002C0D44  38 61 00 DC */	addi r3, r1, 0xdc
/* 802C3DE8 002C0D48  38 84 66 A0 */	addi r4, r4, skZero3f@l
/* 802C3DEC 002C0D4C  38 C1 00 08 */	addi r6, r1, 8
/* 802C3DF0 002C0D50  7C 85 23 78 */	mr r5, r4
/* 802C3DF4 002C0D54  48 04 26 09 */	bl BuildSpot__6CLightFRC9CVector3fRC9CVector3fRC6CColorf
/* 802C3DF8 002C0D58  38 61 01 CC */	addi r3, r1, 0x1cc
/* 802C3DFC 002C0D5C  38 81 00 DC */	addi r4, r1, 0xdc
/* 802C3E00 002C0D60  4B D7 77 71 */	bl __ct__6CLightFCR6CLight
/* 802C3E04 002C0D64  FC 20 F8 90 */	fmr f1, f31
/* 802C3E08 002C0D68  38 61 01 CC */	addi r3, r1, 0x1cc
/* 802C3E0C 002C0D6C  FC 40 F0 90 */	fmr f2, f30
/* 802C3E10 002C0D70  FC 60 E8 90 */	fmr f3, f29
/* 802C3E14 002C0D74  48 04 25 9D */	bl SetAttenuation__6CLightFfff
/* 802C3E18 002C0D78  FC 20 E0 90 */	fmr f1, f28
/* 802C3E1C 002C0D7C  38 61 01 CC */	addi r3, r1, 0x1cc
/* 802C3E20 002C0D80  FC 40 D8 90 */	fmr f2, f27
/* 802C3E24 002C0D84  FC 60 D0 90 */	fmr f3, f26
/* 802C3E28 002C0D88  48 04 25 5D */	bl SetAngleAttenuation__6CLightFfff
/* 802C3E2C 002C0D8C  3C 60 80 3D */	lis r3, lbl_803D68A8@ha
/* 802C3E30 002C0D90  93 A1 02 0C */	stw r29, 0x20c(r1)
/* 802C3E34 002C0D94  38 83 68 A8 */	addi r4, r3, lbl_803D68A8@l
/* 802C3E38 002C0D98  38 A0 00 00 */	li r5, 0
/* 802C3E3C 002C0D9C  38 60 00 E0 */	li r3, 0xe0
/* 802C3E40 002C0DA0  48 05 1A 2D */	bl __nw__FUlPCcPCc
/* 802C3E44 002C0DA4  7C 60 1B 79 */	or. r0, r3, r3
/* 802C3E48 002C0DA8  41 82 00 14 */	beq lbl_802C3E5C
/* 802C3E4C 002C0DAC  38 81 00 24 */	addi r4, r1, 0x24
/* 802C3E50 002C0DB0  38 A1 01 CC */	addi r5, r1, 0x1cc
/* 802C3E54 002C0DB4  4B FF FD D5 */	bl __ct__9CGuiLightFRCQ210CGuiWidget15CGuiWidgetParmsRC6CLight
/* 802C3E58 002C0DB8  7C 60 1B 78 */	mr r0, r3
lbl_802C3E5C:
/* 802C3E5C 002C0DBC  7C 1B 03 78 */	mr r27, r0
/* 802C3E60 002C0DC0  48 00 00 C4 */	b lbl_802C3F24
lbl_802C3E64:
/* 802C3E64 002C0DC4  3C 80 80 5A */	lis r4, skZero3f@ha
/* 802C3E68 002C0DC8  38 61 00 8C */	addi r3, r1, 0x8c
/* 802C3E6C 002C0DCC  38 84 66 A0 */	addi r4, r4, skZero3f@l
/* 802C3E70 002C0DD0  38 A1 00 08 */	addi r5, r1, 8
/* 802C3E74 002C0DD4  48 04 25 C1 */	bl BuildPoint__6CLightFRC9CVector3fRC6CColor
/* 802C3E78 002C0DD8  38 61 01 7C */	addi r3, r1, 0x17c
/* 802C3E7C 002C0DDC  38 81 00 8C */	addi r4, r1, 0x8c
/* 802C3E80 002C0DE0  4B D7 76 F1 */	bl __ct__6CLightFCR6CLight
/* 802C3E84 002C0DE4  FC 20 F8 90 */	fmr f1, f31
/* 802C3E88 002C0DE8  38 61 01 7C */	addi r3, r1, 0x17c
/* 802C3E8C 002C0DEC  FC 40 F0 90 */	fmr f2, f30
/* 802C3E90 002C0DF0  FC 60 E8 90 */	fmr f3, f29
/* 802C3E94 002C0DF4  48 04 25 1D */	bl SetAttenuation__6CLightFfff
/* 802C3E98 002C0DF8  3C 60 80 3D */	lis r3, lbl_803D68A8@ha
/* 802C3E9C 002C0DFC  93 A1 01 BC */	stw r29, 0x1bc(r1)
/* 802C3EA0 002C0E00  38 83 68 A8 */	addi r4, r3, lbl_803D68A8@l
/* 802C3EA4 002C0E04  38 A0 00 00 */	li r5, 0
/* 802C3EA8 002C0E08  38 60 00 E0 */	li r3, 0xe0
/* 802C3EAC 002C0E0C  48 05 19 C1 */	bl __nw__FUlPCcPCc
/* 802C3EB0 002C0E10  7C 60 1B 79 */	or. r0, r3, r3
/* 802C3EB4 002C0E14  41 82 00 14 */	beq lbl_802C3EC8
/* 802C3EB8 002C0E18  38 81 00 24 */	addi r4, r1, 0x24
/* 802C3EBC 002C0E1C  38 A1 01 7C */	addi r5, r1, 0x17c
/* 802C3EC0 002C0E20  4B FF FD 69 */	bl __ct__9CGuiLightFRCQ210CGuiWidget15CGuiWidgetParmsRC6CLight
/* 802C3EC4 002C0E24  7C 60 1B 78 */	mr r0, r3
lbl_802C3EC8:
/* 802C3EC8 002C0E28  7C 1B 03 78 */	mr r27, r0
/* 802C3ECC 002C0E2C  48 00 00 58 */	b lbl_802C3F24
lbl_802C3ED0:
/* 802C3ED0 002C0E30  3C 80 80 5A */	lis r4, skZero3f@ha
/* 802C3ED4 002C0E34  38 61 00 3C */	addi r3, r1, 0x3c
/* 802C3ED8 002C0E38  38 84 66 A0 */	addi r4, r4, skZero3f@l
/* 802C3EDC 002C0E3C  38 A1 00 08 */	addi r5, r1, 8
/* 802C3EE0 002C0E40  48 04 25 8D */	bl BuildDirectional__6CLightFRC9CVector3fRC6CColor
/* 802C3EE4 002C0E44  38 61 01 2C */	addi r3, r1, 0x12c
/* 802C3EE8 002C0E48  38 81 00 3C */	addi r4, r1, 0x3c
/* 802C3EEC 002C0E4C  4B D7 76 85 */	bl __ct__6CLightFCR6CLight
/* 802C3EF0 002C0E50  3C 60 80 3D */	lis r3, lbl_803D68A8@ha
/* 802C3EF4 002C0E54  93 A1 01 6C */	stw r29, 0x16c(r1)
/* 802C3EF8 002C0E58  38 83 68 A8 */	addi r4, r3, lbl_803D68A8@l
/* 802C3EFC 002C0E5C  38 A0 00 00 */	li r5, 0
/* 802C3F00 002C0E60  38 60 00 E0 */	li r3, 0xe0
/* 802C3F04 002C0E64  48 05 19 69 */	bl __nw__FUlPCcPCc
/* 802C3F08 002C0E68  7C 60 1B 79 */	or. r0, r3, r3
/* 802C3F0C 002C0E6C  41 82 00 14 */	beq lbl_802C3F20
/* 802C3F10 002C0E70  38 81 00 24 */	addi r4, r1, 0x24
/* 802C3F14 002C0E74  38 A1 01 2C */	addi r5, r1, 0x12c
/* 802C3F18 002C0E78  4B FF FD 11 */	bl __ct__9CGuiLightFRCQ210CGuiWidget15CGuiWidgetParmsRC6CLight
/* 802C3F1C 002C0E7C  7C 60 1B 78 */	mr r0, r3
lbl_802C3F20:
/* 802C3F20 002C0E80  7C 1B 03 78 */	mr r27, r0
lbl_802C3F24:
/* 802C3F24 002C0E84  7F 63 DB 78 */	mr r3, r27
/* 802C3F28 002C0E88  7F C4 F3 78 */	mr r4, r30
/* 802C3F2C 002C0E8C  7F E5 FB 78 */	mr r5, r31
/* 802C3F30 002C0E90  38 C1 00 24 */	addi r6, r1, 0x24
/* 802C3F34 002C0E94  48 00 6B 55 */	bl ParseBaseInfo__10CGuiWidgetFP9CGuiFrameR12CInputStreamRCQ210CGuiWidget15CGuiWidgetParms
/* 802C3F38 002C0E98  7F C3 F3 78 */	mr r3, r30
/* 802C3F3C 002C0E9C  7F 64 DB 78 */	mr r4, r27
/* 802C3F40 002C0EA0  4B FF E5 FD */	bl AddLight__9CGuiFrameFP9CGuiLight
/* 802C3F44 002C0EA4  7F 63 DB 78 */	mr r3, r27
/* 802C3F48 002C0EA8  39 61 02 70 */	addi r11, r1, 0x270
/* 802C3F4C 002C0EAC  48 0C 5A E1 */	bl _restfpr_26
/* 802C3F50 002C0EB0  BB 61 02 2C */	lmw r27, 0x22c(r1)
/* 802C3F54 002C0EB4  80 01 02 74 */	lwz r0, 0x274(r1)
/* 802C3F58 002C0EB8  7C 08 03 A6 */	mtlr r0
/* 802C3F5C 002C0EBC  38 21 02 70 */	addi r1, r1, 0x270
/* 802C3F60 002C0EC0  4E 80 00 20 */	blr

.section .sdata2, "a"
.global lbl_805AE0A0
lbl_805AE0A0:
	# ROM: 0x3FA940
	.4byte 0

.global lbl_805AE0A4
lbl_805AE0A4:
	# ROM: 0x3FA944
	.float 1.0


.section .rodata
.global lbl_803D68A8
lbl_803D68A8:
	# ROM: 0x3D38A8
	.asciz "??(??)"
	.balign 4

