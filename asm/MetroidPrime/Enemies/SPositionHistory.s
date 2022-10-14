.include "macros.inc"

.section .text, "ax"

.global GetValue__16SPositionHistoryFRC9CVector3fRC9CVector3f
GetValue__16SPositionHistoryFRC9CVector3fRC9CVector3f:
/* 802A07F0 0029D750  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 802A07F4 0029D754  7C 08 02 A6 */	mflr r0
/* 802A07F8 0029D758  90 01 00 84 */	stw r0, 0x84(r1)
/* 802A07FC 0029D75C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 802A0800 0029D760  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 802A0804 0029D764  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 802A0808 0029D768  F3 C1 00 68 */	psq_st f30, 104(r1), 0, qr0
/* 802A080C 0029D76C  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 802A0810 0029D770  F3 A1 00 58 */	psq_st f29, 88(r1), 0, qr0
/* 802A0814 0029D774  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 802A0818 0029D778  F3 81 00 48 */	psq_st f28, 72(r1), 0, qr0
/* 802A081C 0029D77C  BF 61 00 2C */	stmw r27, 0x2c(r1)
/* 802A0820 0029D780  3C E0 80 5A */	lis r7, sZeroVector__9CVector3f@ha
/* 802A0824 0029D784  7C 9C 23 78 */	mr r28, r4
/* 802A0828 0029D788  38 87 66 A0 */	addi r4, r7, sZeroVector__9CVector3f@l
/* 802A082C 0029D78C  C3 82 C1 18 */	lfs f28, lbl_805ADE38@sda21(r2)
/* 802A0830 0029D790  C3 E4 00 00 */	lfs f31, 0(r4)
/* 802A0834 0029D794  7C 7B 1B 78 */	mr r27, r3
/* 802A0838 0029D798  C3 C4 00 04 */	lfs f30, 4(r4)
/* 802A083C 0029D79C  7C BD 2B 78 */	mr r29, r5
/* 802A0840 0029D7A0  C3 A4 00 08 */	lfs f29, 8(r4)
/* 802A0844 0029D7A4  7C DE 33 78 */	mr r30, r6
/* 802A0848 0029D7A8  3B FC 00 08 */	addi r31, r28, 8
/* 802A084C 0029D7AC  48 00 00 98 */	b lbl_802A08E4
lbl_802A0850:
/* 802A0850 0029D7B0  38 03 FF FF */	addi r0, r3, -1
/* 802A0854 0029D7B4  C0 BD 00 04 */	lfs f5, 4(r29)
/* 802A0858 0029D7B8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 802A085C 0029D7BC  C0 5D 00 00 */	lfs f2, 0(r29)
/* 802A0860 0029D7C0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 802A0864 0029D7C4  C0 9D 00 08 */	lfs f4, 8(r29)
/* 802A0868 0029D7C8  7C 7F 02 14 */	add r3, r31, r0
/* 802A086C 0029D7CC  C0 3E 00 00 */	lfs f1, 0(r30)
/* 802A0870 0029D7D0  C0 C3 00 04 */	lfs f6, 4(r3)
/* 802A0874 0029D7D4  C0 63 00 00 */	lfs f3, 0(r3)
/* 802A0878 0029D7D8  EC C6 28 28 */	fsubs f6, f6, f5
/* 802A087C 0029D7DC  C0 A3 00 08 */	lfs f5, 8(r3)
/* 802A0880 0029D7E0  EC 63 10 28 */	fsubs f3, f3, f2
/* 802A0884 0029D7E4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 802A0888 0029D7E8  EC 85 20 28 */	fsubs f4, f5, f4
/* 802A088C 0029D7EC  EC 06 00 32 */	fmuls f0, f6, f0
/* 802A0890 0029D7F0  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 802A0894 0029D7F4  EC 03 00 7A */	fmadds f0, f3, f1, f0
/* 802A0898 0029D7F8  D0 C1 00 18 */	stfs f6, 0x18(r1)
/* 802A089C 0029D7FC  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 802A08A0 0029D800  EC 04 00 BA */	fmadds f0, f4, f2, f0
/* 802A08A4 0029D804  FC 00 E0 40 */	fcmpo cr0, f0, f28
/* 802A08A8 0029D808  40 81 00 30 */	ble lbl_802A08D8
/* 802A08AC 0029D80C  38 61 00 14 */	addi r3, r1, 0x14
/* 802A08B0 0029D810  48 07 3E DD */	bl IsMagnitudeSafe__9CVector3fCFv
/* 802A08B4 0029D814  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802A08B8 0029D818  41 82 00 20 */	beq lbl_802A08D8
/* 802A08BC 0029D81C  38 61 00 08 */	addi r3, r1, 8
/* 802A08C0 0029D820  38 81 00 14 */	addi r4, r1, 0x14
/* 802A08C4 0029D824  48 07 3F 8D */	bl AsNormalized__9CVector3fCFv
/* 802A08C8 0029D828  C3 E1 00 08 */	lfs f31, 8(r1)
/* 802A08CC 0029D82C  C3 C1 00 0C */	lfs f30, 0xc(r1)
/* 802A08D0 0029D830  C3 A1 00 10 */	lfs f29, 0x10(r1)
/* 802A08D4 0029D834  48 00 00 1C */	b lbl_802A08F0
lbl_802A08D8:
/* 802A08D8 0029D838  80 7C 00 04 */	lwz r3, 4(r28)
/* 802A08DC 0029D83C  38 03 FF FF */	addi r0, r3, -1
/* 802A08E0 0029D840  90 1C 00 04 */	stw r0, 4(r28)
lbl_802A08E4:
/* 802A08E4 0029D844  80 7C 00 04 */	lwz r3, 4(r28)
/* 802A08E8 0029D848  2C 03 00 00 */	cmpwi r3, 0
/* 802A08EC 0029D84C  40 82 FF 64 */	bne lbl_802A0850
lbl_802A08F0:
/* 802A08F0 0029D850  D3 FB 00 00 */	stfs f31, 0(r27)
/* 802A08F4 0029D854  D3 DB 00 04 */	stfs f30, 4(r27)
/* 802A08F8 0029D858  D3 BB 00 08 */	stfs f29, 8(r27)
/* 802A08FC 0029D85C  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 802A0900 0029D860  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 802A0904 0029D864  E3 C1 00 68 */	psq_l f30, 104(r1), 0, qr0
/* 802A0908 0029D868  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 802A090C 0029D86C  E3 A1 00 58 */	psq_l f29, 88(r1), 0, qr0
/* 802A0910 0029D870  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 802A0914 0029D874  E3 81 00 48 */	psq_l f28, 72(r1), 0, qr0
/* 802A0918 0029D878  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 802A091C 0029D87C  BB 61 00 2C */	lmw r27, 0x2c(r1)
/* 802A0920 0029D880  80 01 00 84 */	lwz r0, 0x84(r1)
/* 802A0924 0029D884  7C 08 03 A6 */	mtlr r0
/* 802A0928 0029D888  38 21 00 80 */	addi r1, r1, 0x80
/* 802A092C 0029D88C  4E 80 00 20 */	blr

.global AddValue__16SPositionHistoryFRC9CVector3f
AddValue__16SPositionHistoryFRC9CVector3f:
/* 802A0930 0029D890  80 C3 00 04 */	lwz r6, 4(r3)
/* 802A0934 0029D894  2C 06 00 10 */	cmpwi r6, 0x10
/* 802A0938 0029D898  4C 80 00 20 */	bgelr
/* 802A093C 0029D89C  2C 06 00 00 */	cmpwi r6, 0
/* 802A0940 0029D8A0  40 82 00 3C */	bne lbl_802A097C
/* 802A0944 0029D8A4  1C 06 00 0C */	mulli r0, r6, 0xc
/* 802A0948 0029D8A8  7C A3 02 14 */	add r5, r3, r0
/* 802A094C 0029D8AC  34 A5 00 08 */	addic. r5, r5, 8
/* 802A0950 0029D8B0  41 82 00 1C */	beq lbl_802A096C
/* 802A0954 0029D8B4  C0 04 00 00 */	lfs f0, 0(r4)
/* 802A0958 0029D8B8  D0 05 00 00 */	stfs f0, 0(r5)
/* 802A095C 0029D8BC  C0 04 00 04 */	lfs f0, 4(r4)
/* 802A0960 0029D8C0  D0 05 00 04 */	stfs f0, 4(r5)
/* 802A0964 0029D8C4  C0 04 00 08 */	lfs f0, 8(r4)
/* 802A0968 0029D8C8  D0 05 00 08 */	stfs f0, 8(r5)
lbl_802A096C:
/* 802A096C 0029D8CC  80 83 00 04 */	lwz r4, 4(r3)
/* 802A0970 0029D8D0  38 04 00 01 */	addi r0, r4, 1
/* 802A0974 0029D8D4  90 03 00 04 */	stw r0, 4(r3)
/* 802A0978 0029D8D8  4E 80 00 20 */	blr
lbl_802A097C:
/* 802A097C 0029D8DC  38 06 FF FF */	addi r0, r6, -1
/* 802A0980 0029D8E0  38 E3 00 08 */	addi r7, r3, 8
/* 802A0984 0029D8E4  1C 00 00 0C */	mulli r0, r0, 0xc
/* 802A0988 0029D8E8  C0 64 00 04 */	lfs f3, 4(r4)
/* 802A098C 0029D8EC  C0 A4 00 00 */	lfs f5, 0(r4)
/* 802A0990 0029D8F0  C0 44 00 08 */	lfs f2, 8(r4)
/* 802A0994 0029D8F4  7C A7 02 14 */	add r5, r7, r0
/* 802A0998 0029D8F8  C0 03 00 00 */	lfs f0, 0(r3)
/* 802A099C 0029D8FC  C0 25 00 04 */	lfs f1, 4(r5)
/* 802A09A0 0029D900  C0 85 00 00 */	lfs f4, 0(r5)
/* 802A09A4 0029D904  EC 63 08 28 */	fsubs f3, f3, f1
/* 802A09A8 0029D908  C0 25 00 08 */	lfs f1, 8(r5)
/* 802A09AC 0029D90C  EC 85 20 28 */	fsubs f4, f5, f4
/* 802A09B0 0029D910  EC 42 08 28 */	fsubs f2, f2, f1
/* 802A09B4 0029D914  EC 23 00 F2 */	fmuls f1, f3, f3
/* 802A09B8 0029D918  EC 24 09 3A */	fmadds f1, f4, f4, f1
/* 802A09BC 0029D91C  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 802A09C0 0029D920  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802A09C4 0029D924  4C 81 00 20 */	blelr
/* 802A09C8 0029D928  1C 06 00 0C */	mulli r0, r6, 0xc
/* 802A09CC 0029D92C  7C A7 02 15 */	add. r5, r7, r0
/* 802A09D0 0029D930  41 82 00 18 */	beq lbl_802A09E8
/* 802A09D4 0029D934  D0 A5 00 00 */	stfs f5, 0(r5)
/* 802A09D8 0029D938  C0 04 00 04 */	lfs f0, 4(r4)
/* 802A09DC 0029D93C  D0 05 00 04 */	stfs f0, 4(r5)
/* 802A09E0 0029D940  C0 04 00 08 */	lfs f0, 8(r4)
/* 802A09E4 0029D944  D0 05 00 08 */	stfs f0, 8(r5)
lbl_802A09E8:
/* 802A09E8 0029D948  80 83 00 04 */	lwz r4, 4(r3)
/* 802A09EC 0029D94C  38 04 00 01 */	addi r0, r4, 1
/* 802A09F0 0029D950  90 03 00 04 */	stw r0, 4(r3)
/* 802A09F4 0029D954  4E 80 00 20 */	blr

.global __ct__16SPositionHistoryFf
__ct__16SPositionHistoryFf:
/* 802A09F8 0029D958  EC 01 00 72 */	fmuls f0, f1, f1
/* 802A09FC 0029D95C  38 00 00 00 */	li r0, 0
/* 802A0A00 0029D960  D0 03 00 00 */	stfs f0, 0(r3)
/* 802A0A04 0029D964  90 03 00 04 */	stw r0, 4(r3)
/* 802A0A08 0029D968  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805ADE38
lbl_805ADE38:
	# ROM: 0x3FA6D8
	.4byte 0
	.4byte 0
