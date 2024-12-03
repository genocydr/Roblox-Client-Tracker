PROTO_0:
  LOADN R2 0
  LOADN R3 0
  MOVE R4 R0
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETTABLEKS R10 R8 K0 ["palette"]
  GETTABLEKS R9 R10 K1 ["PreferredLayer"]
  JUMPIFEQKNIL R9 [+18]
  JUMPIFNOTEQKNIL R9 [+2]
  LOADB R11 0 +1
  LOADB R11 1
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K2 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R11 R12 [+3]
  GETIMPORT R10 K4 [assert]
  CALL R10 2 0
  JUMPIFNOTLE R9 R1 [+4]
  JUMPIFNOTLE R3 R9 [+2]
  MOVE R2 R7
  FORGLOOP R4 2 [-24]
  ADDK R4 R2 K5 [1]
  RETURN R4 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["palette"]
  GETTABLEKS R1 R2 K1 ["OverrideEquipKey"]
  JUMPIF R1 [+4]
  GETTABLEKS R2 R0 K0 ["palette"]
  GETTABLEKS R1 R2 K2 ["Key"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["palette"]
  GETTABLEKS R2 R3 K1 ["OverrideEquipKey"]
  JUMPIF R2 [+5]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["palette"]
  GETTABLEKS R2 R3 K2 ["Key"]
  JUMPIFEQ R1 R2 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  RETURN R3 1

PROTO_2:
  GETIMPORT R1 K2 [table.clone]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["findIndex"]
  MOVE R3 R1
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U1
  CALL R2 2 1
  JUMPIFEQKNIL R2 [+6]
  GETIMPORT R3 K5 [table.remove]
  MOVE R4 R1
  MOVE R5 R2
  CALL R3 2 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K6 ["palette"]
  GETTABLEKS R3 R4 K7 ["PreferredLayer"]
  JUMPIFNOTEQKNIL R3 [+9]
  GETUPVAL R5 1
  FASTCALL2 TABLE_INSERT R1 R5 [+4]
  MOVE R4 R1
  GETIMPORT R3 K9 [table.insert]
  CALL R3 2 0
  RETURN R1 1
  GETUPVAL R5 2
  MOVE R6 R1
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K6 ["palette"]
  GETTABLEKS R7 R8 K7 ["PreferredLayer"]
  CALL R5 2 1
  GETUPVAL R6 1
  FASTCALL3 TABLE_INSERT R1 R5 R6
  MOVE R4 R1
  GETIMPORT R3 K9 [table.insert]
  CALL R3 3 0
  RETURN R1 1

PROTO_3:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useCallback"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  NEWTABLE R3 0 1
  MOVE R4 R0
  SETLIST R3 R4 1 [1]
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Dash"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["Constants"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K12 ["Types"]
  CALL R4 1 1
  DUPCLOSURE R5 K13 [PROTO_0]
  CAPTURE VAL R3
  DUPCLOSURE R6 K14 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R5
  RETURN R6 1