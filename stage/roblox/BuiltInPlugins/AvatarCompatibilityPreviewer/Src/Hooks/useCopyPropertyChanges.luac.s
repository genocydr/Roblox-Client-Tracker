PROTO_0:
  NEWTABLE R3 0 0
  MOVE R4 R1
  JUMPIFNOTEQKNIL R4 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  FASTCALL2K ASSERT R6 K0 [+4]
  LOADK R7 K0 ["Iterating reference is nil"]
  GETIMPORT R5 K2 [assert]
  CALL R5 2 0
  GETTABLEKS R7 R4 K3 ["Name"]
  FASTCALL2 TABLE_INSERT R3 R7 [+4]
  MOVE R6 R3
  GETIMPORT R5 K6 [table.insert]
  CALL R5 2 0
  GETTABLEKS R4 R4 K7 ["Parent"]
  JUMPIFNOTEQKNIL R4 [+12]
  GETIMPORT R5 K9 [error]
  LOADK R7 K10 ["Reference child wasn't a part of reference. Was looking for %*"]
  NAMECALL R9 R1 K11 ["GetFullName"]
  CALL R9 1 1
  NAMECALL R7 R7 K12 ["format"]
  CALL R7 2 1
  MOVE R6 R7
  CALL R5 1 0
  JUMPIFEQ R4 R0 [+2]
  JUMPBACK [-36]
  MOVE R5 R2
  LENGTH R8 R3
  LOADN R6 1
  LOADN R7 255
  FORNPREP R6
  GETTABLE R11 R3 R8
  NAMECALL R9 R5 K13 ["FindFirstChild"]
  CALL R9 2 1
  JUMPIFNOTEQKNIL R9 [+3]
  LOADNIL R10
  RETURN R10 1
  JUMPIFNOTEQKNIL R9 [+2]
  LOADB R11 0 +1
  LOADB R11 1
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K14 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R11 R12 [+3]
  GETIMPORT R10 K2 [assert]
  CALL R10 2 0
  MOVE R5 R9
  FORNLOOP R6
  GETTABLEKS R6 R5 K15 ["ClassName"]
  GETTABLEKS R7 R1 K15 ["ClassName"]
  JUMPIFEQ R6 R7 [+3]
  LOADNIL R6
  RETURN R6 1
  RETURN R5 1

PROTO_1:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  GETUPVAL R5 2
  CALL R2 3 1
  JUMPIFNOTEQKNIL R2 [+2]
  RETURN R0 0
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K0 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R4 R5 [+3]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  GETTABLE R3 R0 R1
  SETTABLE R3 R2 R1
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  GETIMPORT R2 K1 [game]
  NAMECALL R0 R0 K2 ["IsDescendantOf"]
  CALL R0 2 1
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETUPVAL R2 2
  MOVE R3 R0
  GETUPVAL R4 3
  CALL R1 3 1
  JUMPIFNOTEQKNIL R1 [+2]
  JUMP [+16]
  JUMPIFNOTEQKNIL R1 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K3 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R3 R4 [+3]
  GETIMPORT R2 K5 [assert]
  CALL R2 2 0
  GETTABLEKS R2 R0 K6 ["CFrame"]
  SETTABLEKS R2 R1 K6 ["CFrame"]
  GETUPVAL R0 5
  CALL R0 0 1
  JUMPIF R0 [+93]
  GETUPVAL R0 3
  NAMECALL R0 R0 K7 ["GetChildren"]
  CALL R0 1 3
  FORGPREP R0
  LOADK R7 K8 ["Accessory"]
  NAMECALL R5 R4 K9 ["IsA"]
  CALL R5 2 1
  JUMPIFNOT R5 [+81]
  LOADK R7 K10 ["Handle"]
  NAMECALL R5 R4 K11 ["FindFirstChild"]
  CALL R5 2 1
  JUMPIFEQKNIL R5 [+76]
  JUMPIFNOTEQKNIL R5 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K3 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R7 R8 [+3]
  GETIMPORT R6 K5 [assert]
  CALL R6 2 0
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K12 ["Name"]
  NAMECALL R6 R5 K11 ["FindFirstChild"]
  CALL R6 2 1
  JUMPIFEQKNIL R6 [+56]
  LOADK R9 K13 ["Attachment"]
  NAMECALL R7 R6 K9 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+50]
  LOADB R8 0
  JUMPIFEQKNIL R6 [+5]
  LOADK R10 K13 ["Attachment"]
  NAMECALL R8 R6 K9 ["IsA"]
  CALL R8 2 1
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K3 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R8 R9 [+3]
  GETIMPORT R7 K5 [assert]
  CALL R7 2 0
  LOADK R9 K14 ["AccessoryWeld"]
  NAMECALL R7 R5 K11 ["FindFirstChild"]
  CALL R7 2 1
  JUMPIFEQKNIL R7 [+30]
  LOADK R10 K15 ["Weld"]
  NAMECALL R8 R7 K9 ["IsA"]
  CALL R8 2 1
  JUMPIFNOT R8 [+24]
  LOADB R9 0
  JUMPIFEQKNIL R7 [+5]
  LOADK R11 K15 ["Weld"]
  NAMECALL R9 R7 K9 ["IsA"]
  CALL R9 2 1
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K3 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R9 R10 [+3]
  GETIMPORT R8 K5 [assert]
  CALL R8 2 0
  GETTABLEKS R8 R6 K6 ["CFrame"]
  SETTABLEKS R8 R7 K16 ["C0"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K6 ["CFrame"]
  SETTABLEKS R8 R7 K17 ["C1"]
  FORGLOOP R0 2 [-87]
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETUPVAL R2 2
  MOVE R3 R0
  GETUPVAL R4 3
  CALL R1 3 1
  JUMPIFNOTEQKNIL R1 [+2]
  JUMP [+16]
  JUMPIFNOTEQKNIL R1 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K0 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R3 R4 [+3]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  GETTABLEKS R2 R0 K3 ["Value"]
  SETTABLEKS R2 R1 K3 ["Value"]
  GETUPVAL R0 5
  JUMPIFEQKNIL R0 [+14]
  GETUPVAL R0 6
  CALL R0 0 1
  JUMPIFNOT R0 [+8]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K4 ["Name"]
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K5 ["ORIGINAL_POSITION_VALUE"]
  JUMPIFEQ R0 R1 [+3]
  GETUPVAL R0 5
  CALL R0 0 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETUPVAL R2 1
  GETUPVAL R3 2
  GETUPVAL R4 3
  CALL R1 3 1
  JUMPIFNOTEQKNIL R1 [+2]
  RETURN R0 0
  LOADK R5 K0 ["BaseWrap"]
  NAMECALL R3 R1 K1 ["IsA"]
  CALL R3 2 1
  FASTCALL2K ASSERT R3 K2 [+4]
  LOADK R4 K2 ["Corresponding instance does not match class name"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  GETIMPORT R4 K8 [Enum.CageType.Outer]
  MOVE R5 R0
  NAMECALL R2 R1 K9 ["ModifyVertices"]
  CALL R2 3 0
  RETURN R0 0

PROTO_5:
  LOADK R3 K0 ["Attachment"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+25]
  GETUPVAL R1 0
  NEWTABLE R2 0 0
  SETTABLE R2 R1 R0
  GETUPVAL R3 0
  GETTABLE R2 R3 R0
  LOADK R5 K2 ["CFrame"]
  NAMECALL R3 R0 K3 ["GetPropertyChangedSignal"]
  CALL R3 2 1
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  NAMECALL R3 R3 K4 ["Connect"]
  CALL R3 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R1 K7 [table.insert]
  CALL R1 -1 0
  RETURN R0 0
  LOADK R3 K8 ["ValueBase"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+22]
  GETUPVAL R1 0
  NEWTABLE R2 0 1
  LOADK R5 K9 ["Value"]
  NAMECALL R3 R0 K3 ["GetPropertyChangedSignal"]
  CALL R3 2 1
  NEWCLOSURE R5 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U6
  CAPTURE UPVAL U5
  NAMECALL R3 R3 K4 ["Connect"]
  CALL R3 2 -1
  SETLIST R2 R3 -1 [1]
  SETTABLE R2 R1 R0
  RETURN R0 0
  GETUPVAL R1 7
  CALL R1 0 1
  JUMPIFNOT R1 [+21]
  LOADK R3 K10 ["BaseWrap"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+16]
  GETUPVAL R1 0
  NEWTABLE R2 0 1
  GETTABLEKS R3 R0 K11 ["VerticesModified"]
  NEWCLOSURE R5 P2
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  NAMECALL R3 R3 K4 ["Connect"]
  CALL R3 2 -1
  SETLIST R2 R3 -1 [1]
  SETTABLE R2 R1 R0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLE R1 R2 R0
  JUMPIFNOTEQKNIL R1 [+2]
  RETURN R0 0
  MOVE R2 R1
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  NAMECALL R7 R6 K0 ["Disconnect"]
  CALL R7 1 0
  FORGLOOP R2 2 [-4]
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 2
  LOADNIL R1
  LOADNIL R2
  FORGPREP R0
  MOVE R5 R4
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  NAMECALL R10 R9 K0 ["Disconnect"]
  CALL R10 1 0
  FORGLOOP R5 2 [-4]
  FORGLOOP R0 2 [-10]
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  JUMPIFNOTEQKNIL R0 [+3]
  LOADNIL R0
  RETURN R0 1
  GETUPVAL R2 0
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R1 R2 [+3]
  GETIMPORT R0 K2 [assert]
  CALL R0 2 0
  GETUPVAL R0 2
  CALL R0 0 1
  JUMPIFNOT R0 [+5]
  GETUPVAL R0 3
  JUMPIFNOTEQKNIL R0 [+3]
  LOADNIL R0
  RETURN R0 1
  GETUPVAL R2 3
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R1 R2 [+3]
  GETIMPORT R0 K2 [assert]
  CALL R0 2 0
  NEWTABLE R0 0 0
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U3
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U3
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U2
  GETUPVAL R3 3
  NAMECALL R3 R3 K3 ["GetDescendants"]
  CALL R3 1 3
  FORGPREP R3
  MOVE R8 R2
  MOVE R9 R7
  CALL R8 1 0
  FORGLOOP R3 2 [-4]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K4 ["DescendantAdded"]
  MOVE R5 R2
  NAMECALL R3 R3 K5 ["Connect"]
  CALL R3 2 1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K6 ["DescendantRemoving"]
  NEWCLOSURE R6 P2
  CAPTURE VAL R0
  NAMECALL R4 R4 K5 ["Connect"]
  CALL R4 2 1
  NEWCLOSURE R5 P3
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R0
  RETURN R5 1

PROTO_9:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["useEffect"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R2
  NEWTABLE R5 0 2
  MOVE R6 R0
  MOVE R7 R1
  SETLIST R5 R6 2 [1]
  CALL R3 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["Constants"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K11 ["Types"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K12 ["Flags"]
  GETTABLEKS R5 R6 K13 ["getFFlagAvatarPreviewerCageEditingTools"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K8 ["Src"]
  GETTABLEKS R7 R8 K12 ["Flags"]
  GETTABLEKS R6 R7 K13 ["getFFlagAvatarPreviewerCageEditingTools"]
  CALL R5 1 1
  DUPCLOSURE R6 K14 [PROTO_0]
  CAPTURE VAL R2
  DUPCLOSURE R7 K15 [PROTO_9]
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R5
  RETURN R7 1