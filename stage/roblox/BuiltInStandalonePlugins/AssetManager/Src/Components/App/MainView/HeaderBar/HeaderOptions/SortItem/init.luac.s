PROTO_0:
  JUMPIFNOT R0 [+13]
  GETTABLEKS R2 R0 K0 ["Key"]
  JUMPIFNOTEQ R2 R1 [+10]
  GETTABLEKS R2 R0 K1 ["IsAscending"]
  JUMPIFNOT R2 [+3]
  LOADK R2 K2 ["Bold"]
  LOADK R3 K3 ["ArrowUp"]
  RETURN R2 2
  LOADK R2 K2 ["Bold"]
  LOADK R3 K4 ["ArrowDown"]
  RETURN R2 2
  LOADK R2 K5 [""]
  LOADK R3 K5 [""]
  RETURN R2 2

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["use"]
  CALL R2 0 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["use"]
  CALL R3 0 1
  GETUPVAL R4 3
  MOVE R5 R3
  CALL R4 1 1
  GETTABLEN R7 R4 1
  GETTABLEKS R8 R0 K2 ["Item"]
  JUMPIFNOT R7 [+13]
  GETTABLEKS R9 R7 K3 ["Key"]
  JUMPIFNOTEQ R9 R8 [+10]
  GETTABLEKS R9 R7 K4 ["IsAscending"]
  JUMPIFNOT R9 [+3]
  LOADK R5 K5 ["Bold"]
  LOADK R6 K6 ["ArrowUp"]
  JUMP [+5]
  LOADK R5 K5 ["Bold"]
  LOADK R6 K7 ["ArrowDown"]
  JUMP [+2]
  LOADK R5 K8 [""]
  LOADK R6 K8 [""]
  LOADK R9 K9 ["AssetProperty"]
  GETTABLEKS R10 R0 K2 ["Item"]
  NAMECALL R7 R2 K10 ["getText"]
  CALL R7 3 1
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K11 ["createElement"]
  GETUPVAL R9 5
  NEWTABLE R10 4 0
  GETTABLEKS R11 R0 K12 ["LayoutOrder"]
  SETTABLEKS R11 R10 K12 ["LayoutOrder"]
  GETTABLEKS R11 R0 K13 ["Activated"]
  SETTABLEKS R11 R10 K14 ["OnClick"]
  GETUPVAL R11 6
  LOADK R13 K15 ["SortItemSize"]
  NAMECALL R11 R11 K16 ["GetAttribute"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K17 ["Size"]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K18 ["Tag"]
  LOADK R12 K19 ["SortItem X-Fit Secondary X-Row X-Left X-Middle"]
  SETTABLE R12 R10 R11
  DUPTABLE R11 K22 [{"Label", "ArrowIcon"}]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K11 ["createElement"]
  GETUPVAL R13 7
  NEWTABLE R14 4 0
  NAMECALL R15 R1 K23 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K12 ["LayoutOrder"]
  SETTABLEKS R7 R14 K24 ["Text"]
  GETIMPORT R15 K28 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R15 R14 K26 ["TextTruncate"]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K18 ["Tag"]
  LOADK R17 K29 ["X-Fit Left X-Pad %*"]
  MOVE R19 R5
  NAMECALL R17 R17 K30 ["format"]
  CALL R17 2 1
  MOVE R16 R17
  SETTABLE R16 R14 R15
  CALL R12 2 1
  SETTABLEKS R12 R11 K20 ["Label"]
  JUMPIFEQKS R5 K8 [""] [+24]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K11 ["createElement"]
  GETUPVAL R13 8
  NEWTABLE R14 2 0
  NAMECALL R15 R1 K23 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K12 ["LayoutOrder"]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K18 ["Tag"]
  LOADK R17 K31 ["Icon16 %*"]
  MOVE R19 R6
  NAMECALL R17 R17 K30 ["format"]
  CALL R17 2 1
  MOVE R16 R17
  SETTABLE R16 R14 R15
  CALL R12 2 1
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K21 ["ArrowIcon"]
  CALL R8 3 -1
  RETURN R8 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["ContextServices"]
  GETTABLEKS R4 R3 K10 ["Localization"]
  GETTABLEKS R5 R2 K11 ["UI"]
  GETTABLEKS R6 R5 K12 ["Image"]
  GETTABLEKS R7 R5 K13 ["Pane"]
  GETTABLEKS R8 R5 K14 ["TextLabel"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K15 ["Src"]
  GETTABLEKS R11 R12 K16 ["Controllers"]
  GETTABLEKS R10 R11 K17 ["ItemsController"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K15 ["Src"]
  GETTABLEKS R12 R13 K18 ["Hooks"]
  GETTABLEKS R11 R12 K19 ["useSortFilter"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R0 K15 ["Src"]
  GETTABLEKS R12 R13 K20 ["Types"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETIMPORT R14 K1 [script]
  GETTABLEKS R13 R14 K21 ["styles"]
  CALL R12 1 1
  GETTABLEKS R14 R2 K22 ["Util"]
  GETTABLEKS R13 R14 K23 ["LayoutOrderIterator"]
  DUPCLOSURE R14 K24 [PROTO_0]
  DUPCLOSURE R15 K25 [PROTO_1]
  CAPTURE VAL R13
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R12
  CAPTURE VAL R8
  CAPTURE VAL R6
  RETURN R15 1