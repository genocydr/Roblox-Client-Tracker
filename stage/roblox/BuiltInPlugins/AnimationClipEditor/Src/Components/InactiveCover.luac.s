PROTO_0:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["OnFocused"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["Stylizer"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["Localization"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K6 [{"Priority"}]
  LOADN R7 100
  SETTABLEKS R7 R6 K5 ["Priority"]
  DUPTABLE R7 K8 [{"Text"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K4 ["createElement"]
  LOADK R9 K9 ["TextButton"]
  NEWTABLE R10 16 0
  GETIMPORT R11 K12 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 1
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K13 ["Size"]
  GETIMPORT R11 K15 [Color3.new]
  CALL R11 0 1
  SETTABLEKS R11 R10 K16 ["BackgroundColor3"]
  LOADK R11 K17 [0.35]
  SETTABLEKS R11 R10 K18 ["BackgroundTransparency"]
  LOADB R11 0
  SETTABLEKS R11 R10 K19 ["AutoButtonColor"]
  GETTABLEKS R11 R2 K20 ["font"]
  SETTABLEKS R11 R10 K21 ["Font"]
  GETTABLEKS R12 R2 K22 ["startScreenTheme"]
  GETTABLEKS R11 R12 K23 ["textSize"]
  SETTABLEKS R11 R10 K24 ["TextSize"]
  GETTABLEKS R12 R2 K22 ["startScreenTheme"]
  GETTABLEKS R11 R12 K25 ["darkTextColor"]
  SETTABLEKS R11 R10 K26 ["TextColor3"]
  LOADK R13 K27 ["Title"]
  LOADK R14 K28 ["ClickToContinue"]
  NAMECALL R11 R3 K29 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K7 ["Text"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K30 ["Event"]
  GETTABLEKS R11 R12 K31 ["Activated"]
  SETTABLE R1 R10 R11
  CALL R8 2 1
  SETTABLEKS R8 R7 K7 ["Text"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["ContextServices"]
  GETTABLEKS R4 R3 K10 ["withContext"]
  GETTABLEKS R6 R2 K11 ["UI"]
  GETTABLEKS R5 R6 K12 ["CaptureFocus"]
  GETTABLEKS R6 R1 K13 ["PureComponent"]
  LOADK R8 K14 ["InactiveCover"]
  NAMECALL R6 R6 K15 ["extend"]
  CALL R6 2 1
  DUPCLOSURE R7 K16 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R5
  SETTABLEKS R7 R6 K17 ["render"]
  MOVE R7 R4
  DUPTABLE R8 K20 [{"Stylizer", "Localization"}]
  GETTABLEKS R9 R3 K18 ["Stylizer"]
  SETTABLEKS R9 R8 K18 ["Stylizer"]
  GETTABLEKS R9 R3 K19 ["Localization"]
  SETTABLEKS R9 R8 K19 ["Localization"]
  CALL R7 1 1
  MOVE R8 R6
  CALL R7 1 1
  MOVE R6 R7
  RETURN R6 1