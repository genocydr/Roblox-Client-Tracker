PROTO_0:
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

PROTO_1:
  GETIMPORT R1 K2 [table.clone]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["findIndex"]
  MOVE R3 R1
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U1
  CALL R2 2 1
  JUMPIFEQKNIL R2 [+9]
  GETIMPORT R3 K2 [table.clone]
  GETTABLE R4 R1 R2
  CALL R3 1 1
  GETUPVAL R4 2
  SETTABLEKS R4 R3 K4 ["isHidden"]
  SETTABLE R3 R1 R2
  RETURN R1 1

PROTO_2:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["useCallback"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  NEWTABLE R4 0 3
  MOVE R5 R0
  MOVE R6 R1
  GETUPVAL R8 2
  CALL R8 0 1
  JUMPIFNOT R8 [+2]
  MOVE R7 R0
  JUMP [+1]
  LOADNIL R7
  SETLIST R4 R5 3 [1]
  CALL R2 2 -1
  RETURN R2 -1

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
  GETTABLEKS R5 R0 K9 ["Src"]
  GETTABLEKS R4 R5 K10 ["Types"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K11 ["Flags"]
  GETTABLEKS R5 R6 K12 ["getFFlagAvatarPreviewerBetterUseSerializedState"]
  CALL R4 1 1
  DUPCLOSURE R5 K13 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R4
  RETURN R5 1