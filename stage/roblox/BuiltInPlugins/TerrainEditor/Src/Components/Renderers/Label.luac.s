PROTO_0:
  GETTABLEKS R1 R0 K0 ["Schema"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K5 [{"AutomaticSize", "Size", "Text"}]
  GETIMPORT R5 K8 [Enum.AutomaticSize.Y]
  SETTABLEKS R5 R4 K2 ["AutomaticSize"]
  GETIMPORT R5 K11 [UDim2.fromScale]
  LOADN R6 1
  LOADN R7 0
  CALL R5 2 1
  SETTABLEKS R5 R4 K3 ["Size"]
  GETTABLEKS R5 R1 K4 ["Text"]
  SETTABLEKS R5 R4 K4 ["Text"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETTABLEKS R4 R1 K9 ["UI"]
  GETTABLEKS R3 R4 K10 ["TextLabel"]
  DUPCLOSURE R4 K11 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  RETURN R4 1