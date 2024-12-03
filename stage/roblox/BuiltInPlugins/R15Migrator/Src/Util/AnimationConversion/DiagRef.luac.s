PROTO_0:
  LOADB R2 0
  GETTABLEKS R3 R0 K0 ["scriptInstance"]
  GETTABLEKS R4 R1 K0 ["scriptInstance"]
  JUMPIFNOTEQ R3 R4 [+20]
  LOADB R2 0
  GETUPVAL R3 0
  GETTABLEKS R4 R0 K1 ["str"]
  CALL R3 1 1
  GETUPVAL R4 0
  GETTABLEKS R5 R1 K1 ["str"]
  CALL R4 1 1
  JUMPIFNOTEQ R3 R4 [+9]
  GETTABLEKS R3 R0 K2 ["range"]
  GETTABLEKS R4 R1 K2 ["range"]
  JUMPIFEQ R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["str"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_2:
  DUPTABLE R4 K4 [{"str", "name", "range", "scriptInstance"}]
  SETTABLEKS R0 R4 K0 ["str"]
  SETTABLEKS R0 R4 K1 ["name"]
  SETTABLEKS R1 R4 K2 ["range"]
  SETTABLEKS R2 R4 K3 ["scriptInstance"]
  GETUPVAL R5 0
  FASTCALL2 SETMETATABLE R4 R5 [+3]
  GETIMPORT R3 K6 [setmetatable]
  CALL R3 2 1
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R3 R0 K4 ["Src"]
  GETTABLEKS R2 R3 K5 ["Util"]
  GETTABLEKS R1 R2 K6 ["ScriptAnalysis"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R3 R1 K9 ["Constants"]
  CALL R2 1 1
  GETTABLEKS R5 R0 K4 ["Src"]
  GETTABLEKS R4 R5 K5 ["Util"]
  GETTABLEKS R3 R4 K10 ["AnimationConversion"]
  GETIMPORT R4 K8 [require]
  GETTABLEKS R5 R3 K11 ["normalizeAssetId"]
  CALL R4 1 1
  NEWTABLE R5 4 0
  SETTABLEKS R5 R5 K12 ["__index"]
  DUPCLOSURE R6 K13 [PROTO_0]
  CAPTURE VAL R4
  SETTABLEKS R6 R5 K14 ["__eq"]
  DUPCLOSURE R6 K15 [PROTO_1]
  CAPTURE VAL R4
  SETTABLEKS R6 R5 K16 ["id"]
  DUPCLOSURE R6 K17 [PROTO_2]
  CAPTURE VAL R5
  SETTABLEKS R6 R5 K18 ["new"]
  RETURN R5 1