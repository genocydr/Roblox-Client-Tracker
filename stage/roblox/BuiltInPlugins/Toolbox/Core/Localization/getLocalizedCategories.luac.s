PROTO_0:
  NEWTABLE R2 0 0
  GETUPVAL R3 0
  MOVE R4 R0
  CALL R3 1 1
  MOVE R4 R1
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETIMPORT R9 K2 [table.clone]
  MOVE R10 R8
  CALL R9 1 1
  GETTABLEKS R11 R8 K3 ["name"]
  GETTABLE R10 R3 R11
  SETTABLEKS R10 R9 K3 ["name"]
  FASTCALL2 TABLE_INSERT R2 R9 [+5]
  MOVE R11 R2
  MOVE R12 R9
  GETIMPORT R10 K5 [table.insert]
  CALL R10 2 0
  FORGLOOP R4 2 [-17]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Core"]
  GETTABLEKS R3 R4 K7 ["Localization"]
  GETTABLEKS R2 R3 K8 ["getLocalizedCategoryMap"]
  CALL R1 1 1
  DUPCLOSURE R2 K9 [PROTO_0]
  CAPTURE VAL R1
  RETURN R2 1