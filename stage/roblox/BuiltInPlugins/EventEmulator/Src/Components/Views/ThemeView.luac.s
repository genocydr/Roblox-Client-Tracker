PROTO_0:
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"SelectedKey"}]
  SETTABLEKS R0 R3 K0 ["SelectedKey"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  NEWTABLE R0 0 0
  GETIMPORT R1 K1 [pairs]
  GETUPVAL R4 0
  GETTABLEKS R2 R4 K2 ["Routes"]
  CALL R1 1 3
  FORGPREP_NEXT R1
  DUPTABLE R8 K5 [{"Key", "Text"}]
  SETTABLEKS R5 R8 K3 ["Key"]
  LOADK R10 K6 ["Use "]
  MOVE R11 R4
  CONCAT R9 R10 R11
  SETTABLEKS R9 R8 K4 ["Text"]
  FASTCALL2 TABLE_INSERT R0 R8 [+4]
  MOVE R7 R0
  GETIMPORT R6 K9 [table.insert]
  CALL R6 2 0
  FORGLOOP R1 2 [-15]
  RETURN R0 1

PROTO_3:
  DUPTABLE R1 K1 [{"SelectedKey"}]
  LOADNIL R2
  SETTABLEKS R2 R1 K0 ["SelectedKey"]
  SETTABLEKS R1 R0 K2 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["OnClick"]
  DUPCLOSURE R1 K4 [PROTO_2]
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K5 ["createRoutes"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["state"]
  GETTABLEKS R2 R0 K1 ["props"]
  GETTABLEKS R3 R1 K2 ["SelectedKey"]
  GETTABLEKS R4 R2 K3 ["Stylizer"]
  GETTABLEKS R5 R4 K4 ["Layout"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["createElement"]
  LOADK R7 K6 ["Frame"]
  DUPTABLE R8 K11 [{"Size", "LayoutOrder", "BackgroundTransparency", "ZIndex"}]
  GETIMPORT R9 K14 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 1
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K7 ["Size"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K15 ["View"]
  SETTABLEKS R9 R8 K8 ["LayoutOrder"]
  LOADN R9 1
  SETTABLEKS R9 R8 K9 ["BackgroundTransparency"]
  LOADN R9 251
  SETTABLEKS R9 R8 K10 ["ZIndex"]
  DUPTABLE R9 K18 [{"Layout", "TextInput", "Switch"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K5 ["createElement"]
  LOADK R11 K19 ["UIListLayout"]
  GETTABLEKS R12 R5 K20 ["Vertical"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K4 ["Layout"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K5 ["createElement"]
  GETUPVAL R11 2
  DUPTABLE R12 K24 [{"Label", "Text", "OnChange", "LayoutOrder"}]
  LOADK R13 K25 ["Theme Name"]
  SETTABLEKS R13 R12 K21 ["Label"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K26 ["ThemeName"]
  SETTABLEKS R13 R12 K22 ["Text"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K27 ["FocusLost"]
  SETTABLEKS R13 R12 K23 ["OnChange"]
  LOADN R13 1
  SETTABLEKS R13 R12 K8 ["LayoutOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K16 ["TextInput"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K5 ["createElement"]
  GETUPVAL R11 4
  DUPTABLE R12 K30 [{"Buttons", "OnClick", "SelectedKey", "LayoutOrder"}]
  GETTABLEKS R13 R0 K31 ["createRoutes"]
  CALL R13 0 1
  SETTABLEKS R13 R12 K28 ["Buttons"]
  GETTABLEKS R13 R0 K29 ["OnClick"]
  SETTABLEKS R13 R12 K29 ["OnClick"]
  SETTABLEKS R3 R12 K2 ["SelectedKey"]
  LOADN R13 2
  SETTABLEKS R13 R12 K8 ["LayoutOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K17 ["Switch"]
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["withContext"]
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["Components"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R7 R5 K12 ["TextInput"]
  CALL R6 1 1
  GETTABLEKS R7 R2 K13 ["UI"]
  GETTABLEKS R8 R7 K14 ["RadioButtonList"]
  GETIMPORT R9 K4 [require]
  GETTABLEKS R12 R0 K10 ["Src"]
  GETTABLEKS R11 R12 K15 ["Util"]
  GETTABLEKS R10 R11 K16 ["Constants"]
  CALL R9 1 1
  GETTABLEKS R10 R9 K17 ["INPUT_PANE_LAYOUT"]
  GETTABLEKS R11 R1 K18 ["PureComponent"]
  LOADK R13 K19 ["ThemeView"]
  NAMECALL R11 R11 K20 ["extend"]
  CALL R11 2 1
  DUPTABLE R12 K25 [{"Routes", "SelectedKey", "ThemeName", "FocusLost"}]
  NEWTABLE R13 0 0
  SETTABLEKS R13 R12 K21 ["Routes"]
  LOADK R13 K26 [""]
  SETTABLEKS R13 R12 K22 ["SelectedKey"]
  LOADK R13 K26 [""]
  SETTABLEKS R13 R12 K23 ["ThemeName"]
  DUPCLOSURE R13 K27 [PROTO_0]
  SETTABLEKS R13 R12 K24 ["FocusLost"]
  DUPCLOSURE R13 K28 [PROTO_3]
  CAPTURE VAL R12
  SETTABLEKS R13 R11 K29 ["init"]
  DUPCLOSURE R13 K30 [PROTO_4]
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R6
  CAPTURE VAL R12
  CAPTURE VAL R8
  SETTABLEKS R13 R11 K31 ["render"]
  MOVE R13 R4
  DUPTABLE R14 K33 [{"Stylizer"}]
  GETTABLEKS R15 R3 K32 ["Stylizer"]
  SETTABLEKS R15 R14 K32 ["Stylizer"]
  CALL R13 1 1
  MOVE R14 R11
  CALL R13 1 1
  MOVE R11 R13
  RETURN R11 1