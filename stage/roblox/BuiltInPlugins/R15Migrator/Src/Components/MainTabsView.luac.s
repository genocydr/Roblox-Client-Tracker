PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["setSelectedTab"]
  GETTABLEKS R2 R0 K1 ["Key"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["props"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R1
  SETTABLEKS R2 R0 K1 ["onTabSelected"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  JUMPIFNOT R2 [+8]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["Summary"]
  JUMPIFEQ R0 R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1
  LOADB R1 1
  RETURN R1 1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["isSuccessfullyPublished"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["getAllTabsData"]
  MOVE R5 R2
  NEWCLOSURE R6 P0
  CAPTURE VAL R3
  CAPTURE UPVAL U0
  CALL R4 2 1
  GETTABLEKS R5 R1 K4 ["setAllTabsData"]
  MOVE R6 R4
  CALL R5 1 0
  GETTABLEKS R5 R1 K5 ["setSelectedTab"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K6 ["Summary"]
  CALL R5 1 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["selectedTab"]
  GETTABLEKS R3 R1 K2 ["allTabsData"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K3 ["Stylizer"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K4 ["LayoutOrder"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["new"]
  CALL R6 0 1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K6 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K11 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "LayoutOrder", "BackgroundColor"}]
  GETIMPORT R10 K15 [Enum.FillDirection.Horizontal]
  SETTABLEKS R10 R9 K7 ["Layout"]
  GETIMPORT R10 K17 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R10 R9 K8 ["HorizontalAlignment"]
  GETIMPORT R10 K19 [Enum.VerticalAlignment.Top]
  SETTABLEKS R10 R9 K9 ["VerticalAlignment"]
  SETTABLEKS R5 R9 K4 ["LayoutOrder"]
  GETTABLEKS R10 R4 K10 ["BackgroundColor"]
  SETTABLEKS R10 R9 K10 ["BackgroundColor"]
  DUPTABLE R10 K22 [{"Tabs", "View"}]
  JUMPIFNOT R3 [+34]
  JUMPIFNOT R2 [+33]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K6 ["createElement"]
  GETUPVAL R12 3
  DUPTABLE R13 K26 [{"LayoutOrder", "Tabs", "SelectedTab", "OnTabSelected", "FillDirection", "TabComponent"}]
  NAMECALL R14 R6 K27 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K4 ["LayoutOrder"]
  SETTABLEKS R3 R13 K20 ["Tabs"]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K28 ["findTabData"]
  MOVE R15 R2
  MOVE R16 R3
  CALL R14 2 1
  SETTABLEKS R14 R13 K23 ["SelectedTab"]
  GETTABLEKS R14 R0 K29 ["onTabSelected"]
  SETTABLEKS R14 R13 K24 ["OnTabSelected"]
  GETIMPORT R14 K31 [Enum.FillDirection.Vertical]
  SETTABLEKS R14 R13 K13 ["FillDirection"]
  GETUPVAL R14 5
  SETTABLEKS R14 R13 K25 ["TabComponent"]
  CALL R11 2 1
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K20 ["Tabs"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K6 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K33 [{"LayoutOrder", "Size", "BackgroundColor"}]
  NAMECALL R14 R6 K27 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K4 ["LayoutOrder"]
  GETTABLEKS R14 R4 K34 ["TabPaneSize"]
  SETTABLEKS R14 R13 K32 ["Size"]
  GETTABLEKS R14 R4 K35 ["ViewBackgroundColor"]
  SETTABLEKS R14 R13 K10 ["BackgroundColor"]
  DUPTABLE R14 K40 [{"SummaryPane", "ScriptConversionPane", "CharacterConversion", "AnimationConversionPane"}]
  JUMPIFNOT R2 [+16]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K41 ["Summary"]
  JUMPIFNOTEQ R2 R16 [+12]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K6 ["createElement"]
  GETUPVAL R16 6
  DUPTABLE R17 K43 [{"OnResetPlugin"}]
  GETTABLEKS R18 R1 K42 ["OnResetPlugin"]
  SETTABLEKS R18 R17 K42 ["OnResetPlugin"]
  CALL R15 2 1
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K36 ["SummaryPane"]
  JUMPIFNOT R2 [+16]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K44 ["ScriptConversion"]
  JUMPIFNOTEQ R2 R16 [+12]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K6 ["createElement"]
  GETUPVAL R16 7
  DUPTABLE R17 K43 [{"OnResetPlugin"}]
  GETTABLEKS R18 R1 K42 ["OnResetPlugin"]
  SETTABLEKS R18 R17 K42 ["OnResetPlugin"]
  CALL R15 2 1
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K37 ["ScriptConversionPane"]
  JUMPIFNOT R2 [+16]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K38 ["CharacterConversion"]
  JUMPIFNOTEQ R2 R16 [+12]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K6 ["createElement"]
  GETUPVAL R16 8
  DUPTABLE R17 K43 [{"OnResetPlugin"}]
  GETTABLEKS R18 R1 K42 ["OnResetPlugin"]
  SETTABLEKS R18 R17 K42 ["OnResetPlugin"]
  CALL R15 2 1
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K38 ["CharacterConversion"]
  JUMPIFNOT R2 [+16]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K45 ["AnimationConversion"]
  JUMPIFNOTEQ R2 R16 [+12]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K6 ["createElement"]
  GETUPVAL R16 9
  DUPTABLE R17 K43 [{"OnResetPlugin"}]
  GETTABLEKS R18 R1 K42 ["OnResetPlugin"]
  SETTABLEKS R18 R17 K42 ["OnResetPlugin"]
  CALL R15 2 1
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K39 ["AnimationConversionPane"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K21 ["View"]
  CALL R7 3 -1
  RETURN R7 -1

PROTO_5:
  DUPTABLE R1 K3 [{"selectedTab", "allTabsData", "isSuccessfullyPublished"}]
  GETTABLEKS R3 R0 K4 ["PanelSelection"]
  GETTABLEKS R2 R3 K0 ["selectedTab"]
  SETTABLEKS R2 R1 K0 ["selectedTab"]
  GETTABLEKS R3 R0 K4 ["PanelSelection"]
  GETTABLEKS R2 R3 K1 ["allTabsData"]
  SETTABLEKS R2 R1 K1 ["allTabsData"]
  GETTABLEKS R3 R0 K5 ["ConversionProgress"]
  GETTABLEKS R2 R3 K2 ["isSuccessfullyPublished"]
  SETTABLEKS R2 R1 K2 ["isSuccessfullyPublished"]
  RETURN R1 1

PROTO_6:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_8:
  DUPTABLE R1 K2 [{"setSelectedTab", "setAllTabsData"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["setSelectedTab"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["setAllTabsData"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["RoactRodux"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K10 ["ContextServices"]
  GETTABLEKS R5 R1 K11 ["UI"]
  GETTABLEKS R6 R5 K12 ["Pane"]
  GETTABLEKS R7 R5 K13 ["Tabs"]
  GETTABLEKS R8 R1 K14 ["Util"]
  GETTABLEKS R9 R8 K15 ["LayoutOrderIterator"]
  GETTABLEKS R11 R0 K16 ["Src"]
  GETTABLEKS R10 R11 K17 ["Actions"]
  GETIMPORT R11 K5 [require]
  GETTABLEKS R12 R10 K18 ["SetSelectedTab"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R13 R10 K19 ["SetAllTabsData"]
  CALL R12 1 1
  GETTABLEKS R14 R0 K16 ["Src"]
  GETTABLEKS R13 R14 K14 ["Util"]
  GETIMPORT R14 K5 [require]
  GETTABLEKS R15 R13 K20 ["TabsData"]
  CALL R14 1 1
  GETTABLEKS R16 R0 K16 ["Src"]
  GETTABLEKS R15 R16 K21 ["Components"]
  GETIMPORT R16 K5 [require]
  GETTABLEKS R18 R15 K22 ["Summary"]
  GETTABLEKS R17 R18 K23 ["SummaryPane"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R18 R15 K24 ["CharacterConversionPane"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R19 R15 K25 ["ScriptConversionPane"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R20 R15 K26 ["ScriptPane"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R21 R15 K27 ["AnimationConversionPane"]
  CALL R20 1 1
  GETIMPORT R21 K5 [require]
  GETTABLEKS R22 R15 K28 ["IconTab"]
  CALL R21 1 1
  GETTABLEKS R22 R2 K29 ["PureComponent"]
  LOADK R24 K30 ["MainTabsView"]
  NAMECALL R22 R22 K31 ["extend"]
  CALL R22 2 1
  DUPCLOSURE R23 K32 [PROTO_1]
  SETTABLEKS R23 R22 K33 ["init"]
  DUPCLOSURE R23 K34 [PROTO_3]
  CAPTURE VAL R14
  SETTABLEKS R23 R22 K35 ["didMount"]
  DUPCLOSURE R23 K36 [PROTO_4]
  CAPTURE VAL R9
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R14
  CAPTURE VAL R21
  CAPTURE VAL R16
  CAPTURE VAL R19
  CAPTURE VAL R17
  CAPTURE VAL R20
  SETTABLEKS R23 R22 K37 ["render"]
  DUPCLOSURE R23 K38 [PROTO_5]
  DUPCLOSURE R24 K39 [PROTO_8]
  CAPTURE VAL R11
  CAPTURE VAL R12
  GETTABLEKS R25 R4 K40 ["withContext"]
  DUPTABLE R26 K43 [{"Localization", "Stylizer"}]
  GETTABLEKS R27 R4 K41 ["Localization"]
  SETTABLEKS R27 R26 K41 ["Localization"]
  GETTABLEKS R27 R4 K42 ["Stylizer"]
  SETTABLEKS R27 R26 K42 ["Stylizer"]
  CALL R25 1 1
  MOVE R26 R22
  CALL R25 1 1
  MOVE R22 R25
  GETTABLEKS R25 R3 K44 ["connect"]
  MOVE R26 R23
  MOVE R27 R24
  CALL R25 2 1
  MOVE R26 R22
  CALL R25 1 -1
  RETURN R25 -1