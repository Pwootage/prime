.include "macros.inc"

.section .sdata
.balign 8

.global lbl_805A7328
lbl_805A7328:
	# ROM: 0x3F4CC8
	.byte 0x00

.global lbl_805A7329
lbl_805A7329:
	# ROM: 0x3F4CC9
	.balign 4
	.4byte 0

.section .text, "ax"

.global HasObject__14CScriptMailboxCF9TEditorId
HasObject__14CScriptMailboxCF9TEditorId:
/* 800E1A38 000DE998  80 03 00 00 */	lwz r0, 0(r3)
/* 800E1A3C 000DE99C  38 C3 00 04 */	addi r6, r3, 4
/* 800E1A40 000DE9A0  54 00 10 3A */	slwi r0, r0, 2
/* 800E1A44 000DE9A4  7C A3 02 14 */	add r5, r3, r0
/* 800E1A48 000DE9A8  38 A5 00 04 */	addi r5, r5, 4
/* 800E1A4C 000DE9AC  48 00 00 28 */	b lbl_800E1A74
lbl_800E1A50:
/* 800E1A50 000DE9B0  80 66 00 00 */	lwz r3, 0(r6)
/* 800E1A54 000DE9B4  80 04 00 00 */	lwz r0, 0(r4)
/* 800E1A58 000DE9B8  54 63 01 BE */	clrlwi r3, r3, 6
/* 800E1A5C 000DE9BC  54 00 01 BE */	clrlwi r0, r0, 6
/* 800E1A60 000DE9C0  7C 03 00 40 */	cmplw r3, r0
/* 800E1A64 000DE9C4  40 82 00 0C */	bne lbl_800E1A70
/* 800E1A68 000DE9C8  38 60 00 01 */	li r3, 1
/* 800E1A6C 000DE9CC  4E 80 00 20 */	blr
lbl_800E1A70:
/* 800E1A70 000DE9D0  38 C6 00 04 */	addi r6, r6, 4
lbl_800E1A74:
/* 800E1A74 000DE9D4  7C 06 28 40 */	cmplw r6, r5
/* 800E1A78 000DE9D8  40 82 FF D8 */	bne lbl_800E1A50
/* 800E1A7C 000DE9DC  38 60 00 00 */	li r3, 0
/* 800E1A80 000DE9E0  4E 80 00 20 */	blr

.global RemoveRelay__14CScriptMailboxF9TEditorId
RemoveRelay__14CScriptMailboxF9TEditorId:
/* 800E1A84 000DE9E4  80 03 00 00 */	lwz r0, 0(r3)
/* 800E1A88 000DE9E8  38 E3 00 04 */	addi r7, r3, 4
/* 800E1A8C 000DE9EC  54 00 10 3A */	slwi r0, r0, 2
/* 800E1A90 000DE9F0  7C C3 02 14 */	add r6, r3, r0
/* 800E1A94 000DE9F4  38 C6 00 04 */	addi r6, r6, 4
/* 800E1A98 000DE9F8  48 00 00 68 */	b lbl_800E1B00
lbl_800E1A9C:
/* 800E1A9C 000DE9FC  80 A7 00 00 */	lwz r5, 0(r7)
/* 800E1AA0 000DEA00  80 04 00 00 */	lwz r0, 0(r4)
/* 800E1AA4 000DEA04  54 A5 01 BE */	clrlwi r5, r5, 6
/* 800E1AA8 000DEA08  54 00 01 BE */	clrlwi r0, r0, 6
/* 800E1AAC 000DEA0C  7C 05 00 40 */	cmplw r5, r0
/* 800E1AB0 000DEA10  40 82 00 4C */	bne lbl_800E1AFC
/* 800E1AB4 000DEA14  38 03 00 04 */	addi r0, r3, 4
/* 800E1AB8 000DEA18  7C 07 00 40 */	cmplw r7, r0
/* 800E1ABC 000DEA1C  4D 80 00 20 */	bltlr
/* 800E1AC0 000DEA20  7C 07 30 40 */	cmplw r7, r6
/* 800E1AC4 000DEA24  4C 80 00 20 */	bgelr
/* 800E1AC8 000DEA28  7C E5 3B 78 */	mr r5, r7
/* 800E1ACC 000DEA2C  48 00 00 10 */	b lbl_800E1ADC
lbl_800E1AD0:
/* 800E1AD0 000DEA30  80 05 00 04 */	lwz r0, 4(r5)
/* 800E1AD4 000DEA34  90 05 00 00 */	stw r0, 0(r5)
/* 800E1AD8 000DEA38  38 A5 00 04 */	addi r5, r5, 4
lbl_800E1ADC:
/* 800E1ADC 000DEA3C  80 83 00 00 */	lwz r4, 0(r3)
/* 800E1AE0 000DEA40  54 80 10 3A */	slwi r0, r4, 2
/* 800E1AE4 000DEA44  7C 03 02 14 */	add r0, r3, r0
/* 800E1AE8 000DEA48  7C 05 00 40 */	cmplw r5, r0
/* 800E1AEC 000DEA4C  41 80 FF E4 */	blt lbl_800E1AD0
/* 800E1AF0 000DEA50  38 04 FF FF */	addi r0, r4, -1
/* 800E1AF4 000DEA54  90 03 00 00 */	stw r0, 0(r3)
/* 800E1AF8 000DEA58  4E 80 00 20 */	blr
lbl_800E1AFC:
/* 800E1AFC 000DEA5C  38 E7 00 04 */	addi r7, r7, 4
lbl_800E1B00:
/* 800E1B00 000DEA60  7C 07 30 40 */	cmplw r7, r6
/* 800E1B04 000DEA64  40 82 FF 98 */	bne lbl_800E1A9C
/* 800E1B08 000DEA68  4E 80 00 20 */	blr

.global AddRelay__14CScriptMailboxF9TEditorId
AddRelay__14CScriptMailboxF9TEditorId:
/* 800E1B0C 000DEA6C  80 03 00 00 */	lwz r0, 0(r3)
/* 800E1B10 000DEA70  38 E3 00 04 */	addi r7, r3, 4
/* 800E1B14 000DEA74  54 00 10 3A */	slwi r0, r0, 2
/* 800E1B18 000DEA78  7C C3 02 14 */	add r6, r3, r0
/* 800E1B1C 000DEA7C  38 C6 00 04 */	addi r6, r6, 4
/* 800E1B20 000DEA80  48 00 00 20 */	b lbl_800E1B40
lbl_800E1B24:
/* 800E1B24 000DEA84  80 A7 00 00 */	lwz r5, 0(r7)
/* 800E1B28 000DEA88  80 04 00 00 */	lwz r0, 0(r4)
/* 800E1B2C 000DEA8C  54 A5 01 BE */	clrlwi r5, r5, 6
/* 800E1B30 000DEA90  54 00 01 BE */	clrlwi r0, r0, 6
/* 800E1B34 000DEA94  7C 05 00 40 */	cmplw r5, r0
/* 800E1B38 000DEA98  4D 82 00 20 */	beqlr
/* 800E1B3C 000DEA9C  38 E7 00 04 */	addi r7, r7, 4
lbl_800E1B40:
/* 800E1B40 000DEAA0  7C 07 30 40 */	cmplw r7, r6
/* 800E1B44 000DEAA4  40 82 FF E0 */	bne lbl_800E1B24
/* 800E1B48 000DEAA8  28 06 00 00 */	cmplwi r6, 0
/* 800E1B4C 000DEAAC  41 82 00 0C */	beq lbl_800E1B58
/* 800E1B50 000DEAB0  80 04 00 00 */	lwz r0, 0(r4)
/* 800E1B54 000DEAB4  90 06 00 00 */	stw r0, 0(r6)
lbl_800E1B58:
/* 800E1B58 000DEAB8  80 83 00 00 */	lwz r4, 0(r3)
/* 800E1B5C 000DEABC  38 04 00 01 */	addi r0, r4, 1
/* 800E1B60 000DEAC0  90 03 00 00 */	stw r0, 0(r3)
/* 800E1B64 000DEAC4  4E 80 00 20 */	blr

.global SendMsgs__14CScriptMailboxFRC7TAreaIdR13CStateManager
SendMsgs__14CScriptMailboxFRC7TAreaIdR13CStateManager:
/* 800E1B68 000DEAC8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800E1B6C 000DEACC  7C 08 02 A6 */	mflr r0
/* 800E1B70 000DEAD0  90 01 00 54 */	stw r0, 0x54(r1)
/* 800E1B74 000DEAD4  BF 21 00 34 */	stmw r25, 0x34(r1)
/* 800E1B78 000DEAD8  7C BB 2B 78 */	mr r27, r5
/* 800E1B7C 000DEADC  7C 79 1B 78 */	mr r25, r3
/* 800E1B80 000DEAE0  7C 9A 23 78 */	mr r26, r4
/* 800E1B84 000DEAE4  83 E5 08 50 */	lwz r31, 0x850(r5)
/* 800E1B88 000DEAE8  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 800E1B8C 000DEAEC  2C 00 00 00 */	cmpwi r0, 0
/* 800E1B90 000DEAF0  40 81 01 18 */	ble lbl_800E1CA8
/* 800E1B94 000DEAF4  83 DF 00 38 */	lwz r30, 0x38(r31)
/* 800E1B98 000DEAF8  3B 80 00 00 */	li r28, 0
/* 800E1B9C 000DEAFC  48 00 00 78 */	b lbl_800E1C14
lbl_800E1BA0:
/* 800E1BA0 000DEB00  80 9E 00 04 */	lwz r4, 4(r30)
/* 800E1BA4 000DEB04  80 1A 00 00 */	lwz r0, 0(r26)
/* 800E1BA8 000DEB08  54 83 85 BE */	rlwinm r3, r4, 0x10, 0x16, 0x1f
/* 800E1BAC 000DEB0C  90 81 00 24 */	stw r4, 0x24(r1)
/* 800E1BB0 000DEB10  7C 03 00 00 */	cmpw r3, r0
/* 800E1BB4 000DEB14  40 82 00 5C */	bne lbl_800E1C10
/* 800E1BB8 000DEB18  80 1E 00 00 */	lwz r0, 0(r30)
/* 800E1BBC 000DEB1C  7F 23 CB 78 */	mr r3, r25
/* 800E1BC0 000DEB20  38 81 00 18 */	addi r4, r1, 0x18
/* 800E1BC4 000DEB24  90 01 00 20 */	stw r0, 0x20(r1)
/* 800E1BC8 000DEB28  90 01 00 18 */	stw r0, 0x18(r1)
/* 800E1BCC 000DEB2C  4B FF FE 6D */	bl HasObject__14CScriptMailboxCF9TEditorId
/* 800E1BD0 000DEB30  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E1BD4 000DEB34  41 82 00 3C */	beq lbl_800E1C10
/* 800E1BD8 000DEB38  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 800E1BDC 000DEB3C  7F 63 DB 78 */	mr r3, r27
/* 800E1BE0 000DEB40  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 800E1BE4 000DEB44  38 81 00 08 */	addi r4, r1, 8
/* 800E1BE8 000DEB48  90 A1 00 14 */	stw r5, 0x14(r1)
/* 800E1BEC 000DEB4C  38 A1 00 14 */	addi r5, r1, 0x14
/* 800E1BF0 000DEB50  38 E0 FF FF */	li r7, -1
/* 800E1BF4 000DEB54  B0 01 00 08 */	sth r0, 8(r1)
/* 800E1BF8 000DEB58  A0 DE 00 08 */	lhz r6, 8(r30)
/* 800E1BFC 000DEB5C  4B F6 5F 41 */	bl SendScriptMsg__13CStateManagerF9TUniqueId9TEditorId20EScriptObjectMessage18EScriptObjectState
/* 800E1C00 000DEB60  88 1E 00 0A */	lbz r0, 0xa(r30)
/* 800E1C04 000DEB64  28 00 00 00 */	cmplwi r0, 0
/* 800E1C08 000DEB68  41 82 00 08 */	beq lbl_800E1C10
/* 800E1C0C 000DEB6C  3B 80 00 01 */	li r28, 1
lbl_800E1C10:
/* 800E1C10 000DEB70  3B DE 00 0C */	addi r30, r30, 0xc
lbl_800E1C14:
/* 800E1C14 000DEB74  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 800E1C18 000DEB78  83 BF 00 38 */	lwz r29, 0x38(r31)
/* 800E1C1C 000DEB7C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 800E1C20 000DEB80  7C 1D 02 14 */	add r0, r29, r0
/* 800E1C24 000DEB84  7C 1E 00 40 */	cmplw r30, r0
/* 800E1C28 000DEB88  40 82 FF 78 */	bne lbl_800E1BA0
/* 800E1C2C 000DEB8C  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 800E1C30 000DEB90  41 82 00 78 */	beq lbl_800E1CA8
/* 800E1C34 000DEB94  48 00 00 5C */	b lbl_800E1C90
lbl_800E1C38:
/* 800E1C38 000DEB98  80 7D 00 04 */	lwz r3, 4(r29)
/* 800E1C3C 000DEB9C  80 1A 00 00 */	lwz r0, 0(r26)
/* 800E1C40 000DEBA0  54 63 85 BE */	rlwinm r3, r3, 0x10, 0x16, 0x1f
/* 800E1C44 000DEBA4  7C 03 00 00 */	cmpw r3, r0
/* 800E1C48 000DEBA8  40 82 00 44 */	bne lbl_800E1C8C
/* 800E1C4C 000DEBAC  80 1D 00 00 */	lwz r0, 0(r29)
/* 800E1C50 000DEBB0  7F 23 CB 78 */	mr r3, r25
/* 800E1C54 000DEBB4  38 81 00 10 */	addi r4, r1, 0x10
/* 800E1C58 000DEBB8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800E1C5C 000DEBBC  90 01 00 10 */	stw r0, 0x10(r1)
/* 800E1C60 000DEBC0  4B FF FD D9 */	bl HasObject__14CScriptMailboxCF9TEditorId
/* 800E1C64 000DEBC4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E1C68 000DEBC8  41 82 00 24 */	beq lbl_800E1C8C
/* 800E1C6C 000DEBCC  88 1D 00 0A */	lbz r0, 0xa(r29)
/* 800E1C70 000DEBD0  28 00 00 00 */	cmplwi r0, 0
/* 800E1C74 000DEBD4  41 82 00 18 */	beq lbl_800E1C8C
/* 800E1C78 000DEBD8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800E1C7C 000DEBDC  7F 23 CB 78 */	mr r3, r25
/* 800E1C80 000DEBE0  38 81 00 0C */	addi r4, r1, 0xc
/* 800E1C84 000DEBE4  90 01 00 0C */	stw r0, 0xc(r1)
/* 800E1C88 000DEBE8  4B FF FD FD */	bl RemoveRelay__14CScriptMailboxF9TEditorId
lbl_800E1C8C:
/* 800E1C8C 000DEBEC  3B BD 00 0C */	addi r29, r29, 0xc
lbl_800E1C90:
/* 800E1C90 000DEBF0  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 800E1C94 000DEBF4  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 800E1C98 000DEBF8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 800E1C9C 000DEBFC  7C 03 02 14 */	add r0, r3, r0
/* 800E1CA0 000DEC00  7C 1D 00 40 */	cmplw r29, r0
/* 800E1CA4 000DEC04  40 82 FF 94 */	bne lbl_800E1C38
lbl_800E1CA8:
/* 800E1CA8 000DEC08  BB 21 00 34 */	lmw r25, 0x34(r1)
/* 800E1CAC 000DEC0C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800E1CB0 000DEC10  7C 08 03 A6 */	mtlr r0
/* 800E1CB4 000DEC14  38 21 00 50 */	addi r1, r1, 0x50
/* 800E1CB8 000DEC18  4E 80 00 20 */	blr

.global PutTo__14CScriptMailboxCFR13COutputStream
PutTo__14CScriptMailboxCFR13COutputStream:
/* 800E1CBC 000DEC1C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800E1CC0 000DEC20  7C 08 02 A6 */	mflr r0
/* 800E1CC4 000DEC24  90 01 00 54 */	stw r0, 0x54(r1)
/* 800E1CC8 000DEC28  BF 41 00 38 */	stmw r26, 0x38(r1)
/* 800E1CCC 000DEC2C  7C BB 2B 78 */	mr r27, r5
/* 800E1CD0 000DEC30  7C 7A 1B 78 */	mr r26, r3
/* 800E1CD4 000DEC34  7C 9F 23 78 */	mr r31, r4
/* 800E1CD8 000DEC38  83 A5 00 18 */	lwz r29, 0x18(r5)
/* 800E1CDC 000DEC3C  2C 1D 00 00 */	cmpwi r29, 0
/* 800E1CE0 000DEC40  93 A1 00 20 */	stw r29, 0x20(r1)
/* 800E1CE4 000DEC44  93 A1 00 24 */	stw r29, 0x24(r1)
/* 800E1CE8 000DEC48  40 82 00 10 */	bne lbl_800E1CF8
/* 800E1CEC 000DEC4C  38 00 00 00 */	li r0, 0
/* 800E1CF0 000DEC50  90 01 00 28 */	stw r0, 0x28(r1)
/* 800E1CF4 000DEC54  48 00 00 1C */	b lbl_800E1D10
lbl_800E1CF8:
/* 800E1CF8 000DEC58  3C 80 80 3D */	lis r4, lbl_803CE5C0@ha
/* 800E1CFC 000DEC5C  7F A3 EB 78 */	mr r3, r29
/* 800E1D00 000DEC60  38 84 E5 C0 */	addi r4, r4, lbl_803CE5C0@l
/* 800E1D04 000DEC64  38 A0 00 00 */	li r5, 0
/* 800E1D08 000DEC68  48 23 3B 11 */	bl __nwa__FUlPCcPCc
/* 800E1D0C 000DEC6C  90 61 00 28 */	stw r3, 0x28(r1)
lbl_800E1D10:
/* 800E1D10 000DEC70  80 61 00 28 */	lwz r3, 0x28(r1)
/* 800E1D14 000DEC74  7F A9 03 A6 */	mtctr r29
/* 800E1D18 000DEC78  2C 1D 00 00 */	cmpwi r29, 0
/* 800E1D1C 000DEC7C  40 81 00 1C */	ble lbl_800E1D38
lbl_800E1D20:
/* 800E1D20 000DEC80  28 03 00 00 */	cmplwi r3, 0
/* 800E1D24 000DEC84  41 82 00 0C */	beq lbl_800E1D30
/* 800E1D28 000DEC88  88 0D 87 69 */	lbz r0, lbl_805A7329@sda21(r13)
/* 800E1D2C 000DEC8C  98 03 00 00 */	stb r0, 0(r3)
lbl_800E1D30:
/* 800E1D30 000DEC90  38 63 00 01 */	addi r3, r3, 1
/* 800E1D34 000DEC94  42 00 FF EC */	bdnz lbl_800E1D20
lbl_800E1D38:
/* 800E1D38 000DEC98  83 A1 00 28 */	lwz r29, 0x28(r1)
/* 800E1D3C 000DEC9C  3B 9A 00 04 */	addi r28, r26, 4
/* 800E1D40 000DECA0  3B C0 00 01 */	li r30, 1
/* 800E1D44 000DECA4  48 00 00 20 */	b lbl_800E1D64
lbl_800E1D48:
/* 800E1D48 000DECA8  80 1C 00 00 */	lwz r0, 0(r28)
/* 800E1D4C 000DECAC  7F 63 DB 78 */	mr r3, r27
/* 800E1D50 000DECB0  38 81 00 18 */	addi r4, r1, 0x18
/* 800E1D54 000DECB4  90 01 00 18 */	stw r0, 0x18(r1)
/* 800E1D58 000DECB8  48 18 94 81 */	bl GetRelayIndex__10CSaveWorldCFRC9TEditorId
/* 800E1D5C 000DECBC  7F DD 19 AE */	stbx r30, r29, r3
/* 800E1D60 000DECC0  3B 9C 00 04 */	addi r28, r28, 4
lbl_800E1D64:
/* 800E1D64 000DECC4  80 1A 00 00 */	lwz r0, 0(r26)
/* 800E1D68 000DECC8  54 00 10 3A */	slwi r0, r0, 2
/* 800E1D6C 000DECCC  7C 7A 02 14 */	add r3, r26, r0
/* 800E1D70 000DECD0  38 03 00 04 */	addi r0, r3, 4
/* 800E1D74 000DECD4  7C 1C 00 40 */	cmplw r28, r0
/* 800E1D78 000DECD8  40 82 FF D0 */	bne lbl_800E1D48
/* 800E1D7C 000DECDC  83 A1 00 28 */	lwz r29, 0x28(r1)
/* 800E1D80 000DECE0  3B 80 00 00 */	li r28, 0
/* 800E1D84 000DECE4  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 800E1D88 000DECE8  48 00 00 28 */	b lbl_800E1DB0
lbl_800E1D8C:
/* 800E1D8C 000DECEC  88 9D 00 00 */	lbz r4, 0(r29)
/* 800E1D90 000DECF0  7F E3 FB 78 */	mr r3, r31
/* 800E1D94 000DECF4  38 A0 00 01 */	li r5, 1
/* 800E1D98 000DECF8  7C 04 00 D0 */	neg r0, r4
/* 800E1D9C 000DECFC  7C 00 23 78 */	or r0, r0, r4
/* 800E1DA0 000DED00  54 04 0F FE */	srwi r4, r0, 0x1f
/* 800E1DA4 000DED04  48 25 D6 19 */	bl WriteBits__13COutputStreamFUiUi
/* 800E1DA8 000DED08  3B 9C 00 01 */	addi r28, r28, 1
/* 800E1DAC 000DED0C  3B BD 00 01 */	addi r29, r29, 1
lbl_800E1DB0:
/* 800E1DB0 000DED10  7C 1C F0 00 */	cmpw r28, r30
/* 800E1DB4 000DED14  41 80 FF D8 */	blt lbl_800E1D8C
/* 800E1DB8 000DED18  80 61 00 28 */	lwz r3, 0x28(r1)
/* 800E1DBC 000DED1C  80 01 00 20 */	lwz r0, 0x20(r1)
/* 800E1DC0 000DED20  90 61 00 0C */	stw r3, 0xc(r1)
/* 800E1DC4 000DED24  7C 83 02 14 */	add r4, r3, r0
/* 800E1DC8 000DED28  7C 03 20 50 */	subf r0, r3, r4
/* 800E1DCC 000DED2C  90 81 00 14 */	stw r4, 0x14(r1)
/* 800E1DD0 000DED30  90 81 00 10 */	stw r4, 0x10(r1)
/* 800E1DD4 000DED34  90 61 00 08 */	stw r3, 8(r1)
/* 800E1DD8 000DED38  7C 09 03 A6 */	mtctr r0
/* 800E1DDC 000DED3C  7C 03 20 40 */	cmplw r3, r4
/* 800E1DE0 000DED40  41 82 00 08 */	beq lbl_800E1DE8
lbl_800E1DE4:
/* 800E1DE4 000DED44  42 00 00 00 */	bdnz lbl_800E1DE4
lbl_800E1DE8:
/* 800E1DE8 000DED48  28 03 00 00 */	cmplwi r3, 0
/* 800E1DEC 000DED4C  41 82 00 08 */	beq lbl_800E1DF4
/* 800E1DF0 000DED50  48 23 3B 41 */	bl Free__7CMemoryFPCv
lbl_800E1DF4:
/* 800E1DF4 000DED54  BB 41 00 38 */	lmw r26, 0x38(r1)
/* 800E1DF8 000DED58  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800E1DFC 000DED5C  7C 08 03 A6 */	mtlr r0
/* 800E1E00 000DED60  38 21 00 50 */	addi r1, r1, 0x50
/* 800E1E04 000DED64  4E 80 00 20 */	blr

.global __dt__14CScriptMailboxFv
__dt__14CScriptMailboxFv:
/* 800E1E08 000DED68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E1E0C 000DED6C  7C 08 02 A6 */	mflr r0
/* 800E1E10 000DED70  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E1E14 000DED74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E1E18 000DED78  7C 9F 23 78 */	mr r31, r4
/* 800E1E1C 000DED7C  93 C1 00 08 */	stw r30, 8(r1)
/* 800E1E20 000DED80  7C 7E 1B 79 */	or. r30, r3, r3
/* 800E1E24 000DED84  41 82 00 78 */	beq lbl_800E1E9C
/* 800E1E28 000DED88  38 60 F7 FC */	li r3, -2052
/* 800E1E2C 000DED8C  48 23 3A 95 */	bl OffsetFakeStatics__7CMemoryFi
/* 800E1E30 000DED90  28 1E 00 00 */	cmplwi r30, 0
/* 800E1E34 000DED94  41 82 00 58 */	beq lbl_800E1E8C
/* 800E1E38 000DED98  80 BE 00 00 */	lwz r5, 0(r30)
/* 800E1E3C 000DED9C  38 60 00 00 */	li r3, 0
/* 800E1E40 000DEDA0  2C 05 00 00 */	cmpwi r5, 0
/* 800E1E44 000DEDA4  40 81 00 40 */	ble lbl_800E1E84
/* 800E1E48 000DEDA8  2C 05 00 08 */	cmpwi r5, 8
/* 800E1E4C 000DEDAC  38 85 FF F8 */	addi r4, r5, -8
/* 800E1E50 000DEDB0  40 81 00 20 */	ble lbl_800E1E70
/* 800E1E54 000DEDB4  38 04 00 07 */	addi r0, r4, 7
/* 800E1E58 000DEDB8  54 00 E8 FE */	srwi r0, r0, 3
/* 800E1E5C 000DEDBC  7C 09 03 A6 */	mtctr r0
/* 800E1E60 000DEDC0  2C 04 00 00 */	cmpwi r4, 0
/* 800E1E64 000DEDC4  40 81 00 0C */	ble lbl_800E1E70
lbl_800E1E68:
/* 800E1E68 000DEDC8  38 63 00 08 */	addi r3, r3, 8
/* 800E1E6C 000DEDCC  42 00 FF FC */	bdnz lbl_800E1E68
lbl_800E1E70:
/* 800E1E70 000DEDD0  7C 03 28 50 */	subf r0, r3, r5
/* 800E1E74 000DEDD4  7C 09 03 A6 */	mtctr r0
/* 800E1E78 000DEDD8  7C 03 28 00 */	cmpw r3, r5
/* 800E1E7C 000DEDDC  40 80 00 08 */	bge lbl_800E1E84
lbl_800E1E80:
/* 800E1E80 000DEDE0  42 00 00 00 */	bdnz lbl_800E1E80
lbl_800E1E84:
/* 800E1E84 000DEDE4  38 00 00 00 */	li r0, 0
/* 800E1E88 000DEDE8  90 1E 00 00 */	stw r0, 0(r30)
lbl_800E1E8C:
/* 800E1E8C 000DEDEC  7F E0 07 35 */	extsh. r0, r31
/* 800E1E90 000DEDF0  40 81 00 0C */	ble lbl_800E1E9C
/* 800E1E94 000DEDF4  7F C3 F3 78 */	mr r3, r30
/* 800E1E98 000DEDF8  48 23 3A 99 */	bl Free__7CMemoryFPCv
lbl_800E1E9C:
/* 800E1E9C 000DEDFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E1EA0 000DEE00  7F C3 F3 78 */	mr r3, r30
/* 800E1EA4 000DEE04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E1EA8 000DEE08  83 C1 00 08 */	lwz r30, 8(r1)
/* 800E1EAC 000DEE0C  7C 08 03 A6 */	mtlr r0
/* 800E1EB0 000DEE10  38 21 00 10 */	addi r1, r1, 0x10
/* 800E1EB4 000DEE14  4E 80 00 20 */	blr

.global __ct__14CScriptMailboxFR12CInputStreamRC10CSaveWorld
__ct__14CScriptMailboxFR12CInputStreamRC10CSaveWorld:
/* 800E1EB8 000DEE18  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800E1EBC 000DEE1C  7C 08 02 A6 */	mflr r0
/* 800E1EC0 000DEE20  90 01 00 44 */	stw r0, 0x44(r1)
/* 800E1EC4 000DEE24  38 00 00 00 */	li r0, 0
/* 800E1EC8 000DEE28  BF 41 00 28 */	stmw r26, 0x28(r1)
/* 800E1ECC 000DEE2C  7C 7E 1B 78 */	mr r30, r3
/* 800E1ED0 000DEE30  7C BF 2B 78 */	mr r31, r5
/* 800E1ED4 000DEE34  7C 9A 23 78 */	mr r26, r4
/* 800E1ED8 000DEE38  90 03 00 00 */	stw r0, 0(r3)
/* 800E1EDC 000DEE3C  83 85 00 18 */	lwz r28, 0x18(r5)
/* 800E1EE0 000DEE40  2C 1C 00 00 */	cmpwi r28, 0
/* 800E1EE4 000DEE44  93 81 00 1C */	stw r28, 0x1c(r1)
/* 800E1EE8 000DEE48  93 81 00 20 */	stw r28, 0x20(r1)
/* 800E1EEC 000DEE4C  40 82 00 0C */	bne lbl_800E1EF8
/* 800E1EF0 000DEE50  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E1EF4 000DEE54  48 00 00 1C */	b lbl_800E1F10
lbl_800E1EF8:
/* 800E1EF8 000DEE58  3C 80 80 3D */	lis r4, lbl_803CE5C0@ha
/* 800E1EFC 000DEE5C  7F 83 E3 78 */	mr r3, r28
/* 800E1F00 000DEE60  38 84 E5 C0 */	addi r4, r4, lbl_803CE5C0@l
/* 800E1F04 000DEE64  38 A0 00 00 */	li r5, 0
/* 800E1F08 000DEE68  48 23 39 11 */	bl __nwa__FUlPCcPCc
/* 800E1F0C 000DEE6C  90 61 00 24 */	stw r3, 0x24(r1)
lbl_800E1F10:
/* 800E1F10 000DEE70  80 61 00 24 */	lwz r3, 0x24(r1)
/* 800E1F14 000DEE74  7F 89 03 A6 */	mtctr r28
/* 800E1F18 000DEE78  2C 1C 00 00 */	cmpwi r28, 0
/* 800E1F1C 000DEE7C  40 81 00 1C */	ble lbl_800E1F38
lbl_800E1F20:
/* 800E1F20 000DEE80  28 03 00 00 */	cmplwi r3, 0
/* 800E1F24 000DEE84  41 82 00 0C */	beq lbl_800E1F30
/* 800E1F28 000DEE88  88 0D 87 68 */	lbz r0, lbl_805A7328@sda21(r13)
/* 800E1F2C 000DEE8C  98 03 00 00 */	stb r0, 0(r3)
lbl_800E1F30:
/* 800E1F30 000DEE90  38 63 00 01 */	addi r3, r3, 1
/* 800E1F34 000DEE94  42 00 FF EC */	bdnz lbl_800E1F20
lbl_800E1F38:
/* 800E1F38 000DEE98  83 81 00 24 */	lwz r28, 0x24(r1)
/* 800E1F3C 000DEE9C  3B 60 00 00 */	li r27, 0
/* 800E1F40 000DEEA0  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 800E1F44 000DEEA4  48 00 00 28 */	b lbl_800E1F6C
lbl_800E1F48:
/* 800E1F48 000DEEA8  7F 43 D3 78 */	mr r3, r26
/* 800E1F4C 000DEEAC  38 80 00 01 */	li r4, 1
/* 800E1F50 000DEEB0  48 25 CD E9 */	bl ReadBits__12CInputStreamFUi
/* 800E1F54 000DEEB4  7C 03 00 D0 */	neg r0, r3
/* 800E1F58 000DEEB8  3B 7B 00 01 */	addi r27, r27, 1
/* 800E1F5C 000DEEBC  7C 00 1B 78 */	or r0, r0, r3
/* 800E1F60 000DEEC0  54 00 0F FE */	srwi r0, r0, 0x1f
/* 800E1F64 000DEEC4  98 1C 00 00 */	stb r0, 0(r28)
/* 800E1F68 000DEEC8  3B 9C 00 01 */	addi r28, r28, 1
lbl_800E1F6C:
/* 800E1F6C 000DEECC  7C 1B E8 00 */	cmpw r27, r29
/* 800E1F70 000DEED0  41 80 FF D8 */	blt lbl_800E1F48
/* 800E1F74 000DEED4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800E1F78 000DEED8  38 C0 00 00 */	li r6, 0
/* 800E1F7C 000DEEDC  80 61 00 24 */	lwz r3, 0x24(r1)
/* 800E1F80 000DEEE0  7C 09 03 A6 */	mtctr r0
/* 800E1F84 000DEEE4  2C 00 00 00 */	cmpwi r0, 0
/* 800E1F88 000DEEE8  40 81 00 48 */	ble lbl_800E1FD0
lbl_800E1F8C:
/* 800E1F8C 000DEEEC  88 03 00 00 */	lbz r0, 0(r3)
/* 800E1F90 000DEEF0  28 00 00 00 */	cmplwi r0, 0
/* 800E1F94 000DEEF4  41 82 00 30 */	beq lbl_800E1FC4
/* 800E1F98 000DEEF8  80 1E 00 00 */	lwz r0, 0(r30)
/* 800E1F9C 000DEEFC  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 800E1FA0 000DEF00  54 00 10 3A */	slwi r0, r0, 2
/* 800E1FA4 000DEF04  7C BE 02 14 */	add r5, r30, r0
/* 800E1FA8 000DEF08  7C 04 30 2E */	lwzx r0, r4, r6
/* 800E1FAC 000DEF0C  34 A5 00 04 */	addic. r5, r5, 4
/* 800E1FB0 000DEF10  41 82 00 08 */	beq lbl_800E1FB8
/* 800E1FB4 000DEF14  90 05 00 00 */	stw r0, 0(r5)
lbl_800E1FB8:
/* 800E1FB8 000DEF18  80 9E 00 00 */	lwz r4, 0(r30)
/* 800E1FBC 000DEF1C  38 04 00 01 */	addi r0, r4, 1
/* 800E1FC0 000DEF20  90 1E 00 00 */	stw r0, 0(r30)
lbl_800E1FC4:
/* 800E1FC4 000DEF24  38 C6 00 04 */	addi r6, r6, 4
/* 800E1FC8 000DEF28  38 63 00 01 */	addi r3, r3, 1
/* 800E1FCC 000DEF2C  42 00 FF C0 */	bdnz lbl_800E1F8C
lbl_800E1FD0:
/* 800E1FD0 000DEF30  38 60 08 04 */	li r3, 0x804
/* 800E1FD4 000DEF34  48 23 38 ED */	bl OffsetFakeStatics__7CMemoryFi
/* 800E1FD8 000DEF38  80 61 00 24 */	lwz r3, 0x24(r1)
/* 800E1FDC 000DEF3C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800E1FE0 000DEF40  90 61 00 0C */	stw r3, 0xc(r1)
/* 800E1FE4 000DEF44  7C 83 02 14 */	add r4, r3, r0
/* 800E1FE8 000DEF48  7C 03 20 50 */	subf r0, r3, r4
/* 800E1FEC 000DEF4C  90 81 00 14 */	stw r4, 0x14(r1)
/* 800E1FF0 000DEF50  90 81 00 10 */	stw r4, 0x10(r1)
/* 800E1FF4 000DEF54  90 61 00 08 */	stw r3, 8(r1)
/* 800E1FF8 000DEF58  7C 09 03 A6 */	mtctr r0
/* 800E1FFC 000DEF5C  7C 03 20 40 */	cmplw r3, r4
/* 800E2000 000DEF60  41 82 00 08 */	beq lbl_800E2008
lbl_800E2004:
/* 800E2004 000DEF64  42 00 00 00 */	bdnz lbl_800E2004
lbl_800E2008:
/* 800E2008 000DEF68  28 03 00 00 */	cmplwi r3, 0
/* 800E200C 000DEF6C  41 82 00 08 */	beq lbl_800E2014
/* 800E2010 000DEF70  48 23 39 21 */	bl Free__7CMemoryFPCv
lbl_800E2014:
/* 800E2014 000DEF74  7F C3 F3 78 */	mr r3, r30
/* 800E2018 000DEF78  BB 41 00 28 */	lmw r26, 0x28(r1)
/* 800E201C 000DEF7C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800E2020 000DEF80  7C 08 03 A6 */	mtlr r0
/* 800E2024 000DEF84  38 21 00 40 */	addi r1, r1, 0x40
/* 800E2028 000DEF88  4E 80 00 20 */	blr

.global __ct__14CScriptMailboxFv
__ct__14CScriptMailboxFv:
/* 800E202C 000DEF8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E2030 000DEF90  7C 08 02 A6 */	mflr r0
/* 800E2034 000DEF94  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E2038 000DEF98  38 00 00 00 */	li r0, 0
/* 800E203C 000DEF9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E2040 000DEFA0  7C 7F 1B 78 */	mr r31, r3
/* 800E2044 000DEFA4  90 03 00 00 */	stw r0, 0(r3)
/* 800E2048 000DEFA8  38 60 08 04 */	li r3, 0x804
/* 800E204C 000DEFAC  48 23 38 75 */	bl OffsetFakeStatics__7CMemoryFi
/* 800E2050 000DEFB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E2054 000DEFB4  7F E3 FB 78 */	mr r3, r31
/* 800E2058 000DEFB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E205C 000DEFBC  7C 08 03 A6 */	mtlr r0
/* 800E2060 000DEFC0  38 21 00 10 */	addi r1, r1, 0x10
/* 800E2064 000DEFC4  4E 80 00 20 */	blr

.section .rodata
.balign 8
.global lbl_803CE5C0
lbl_803CE5C0:
	# ROM: 0x3CB5C0
	.asciz "??(??)"
	.balign 4
