MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["FindReplaceAll"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K10 [".Component-CheckButton"]
  DUPTABLE R5 K13 [{"BorderSizePixel", "Size"}]
  LOADN R6 0
  SETTABLEKS R6 R5 K11 ["BorderSizePixel"]
  GETIMPORT R6 K16 [UDim2.new]
  LOADN R7 0
  LOADN R8 16
  LOADN R9 0
  LOADN R10 32
  CALL R6 4 1
  SETTABLEKS R6 R5 K12 ["Size"]
  NEWTABLE R6 0 1
  MOVE R7 R2
  LOADK R8 K17 ["> .CheckButton-Image"]
  DUPTABLE R9 K18 [{"Size", "BorderSizePixel"}]
  GETIMPORT R10 K16 [UDim2.new]
  LOADN R11 0
  LOADN R12 16
  LOADN R13 0
  LOADN R14 16
  CALL R10 4 1
  SETTABLEKS R10 R9 K12 ["Size"]
  LOADN R10 0
  SETTABLEKS R10 R9 K11 ["BorderSizePixel"]
  CALL R7 2 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1