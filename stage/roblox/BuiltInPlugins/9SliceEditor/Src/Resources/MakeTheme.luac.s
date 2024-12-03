PROTO_0:
  LOADNIL R1
  JUMPIFNOT R0 [+8]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["mock"]
  GETUPVAL R3 1
  GETUPVAL R4 2
  CALL R2 2 1
  MOVE R1 R2
  JUMP [+7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["new"]
  GETUPVAL R3 1
  GETUPVAL R4 2
  CALL R2 2 1
  MOVE R1 R2
  GETUPVAL R4 3
  NAMECALL R2 R1 K2 ["extend"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K7 ["Style"]
  GETTABLEKS R4 R2 K8 ["Themes"]
  GETTABLEKS R3 R4 K9 ["StudioTheme"]
  GETTABLEKS R4 R2 K10 ["ComponentSymbols"]
  GETTABLEKS R5 R2 K11 ["StyleKey"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K12 ["Src"]
  GETTABLEKS R8 R9 K13 ["Util"]
  GETTABLEKS R7 R8 K14 ["Constants"]
  CALL R6 1 1
  LOADK R9 K15 ["AlertDialog"]
  NAMECALL R7 R4 K16 ["add"]
  CALL R7 2 0
  LOADK R9 K17 ["ImageDragger"]
  NAMECALL R7 R4 K16 ["add"]
  CALL R7 2 0
  LOADK R9 K18 ["SliceEditor"]
  NAMECALL R7 R4 K16 ["add"]
  CALL R7 2 0
  LOADK R9 K19 ["TextEditor"]
  NAMECALL R7 R4 K16 ["add"]
  CALL R7 2 0
  LOADK R9 K20 ["ImageEditor"]
  NAMECALL R7 R4 K16 ["add"]
  CALL R7 2 0
  NEWTABLE R7 1 0
  GETTABLEKS R8 R5 K21 ["SubtleBackgroundColor"]
  GETIMPORT R9 K24 [Color3.fromRGB]
  LOADN R10 40
  LOADN R11 40
  LOADN R12 40
  CALL R9 3 1
  SETTABLE R9 R7 R8
  NEWTABLE R8 1 0
  GETTABLEKS R9 R5 K21 ["SubtleBackgroundColor"]
  GETIMPORT R10 K24 [Color3.fromRGB]
  LOADN R11 249
  LOADN R12 249
  LOADN R13 249
  CALL R10 3 1
  SETTABLE R10 R8 R9
  NEWTABLE R9 8 0
  DUPTABLE R10 K26 [{"Size", "Style"}]
  GETIMPORT R11 K29 [UDim2.fromOffset]
  LOADN R12 75
  LOADN R13 28
  CALL R11 2 1
  SETTABLEKS R11 R10 K25 ["Size"]
  LOADK R11 K30 ["Round"]
  SETTABLEKS R11 R10 K7 ["Style"]
  SETTABLEKS R10 R9 K31 ["Button"]
  GETTABLEKS R10 R4 K19 ["TextEditor"]
  DUPTABLE R11 K34 [{"OffsetItemSpacing", "PixelDimensionsHeightPx"}]
  GETIMPORT R12 K37 [UDim.new]
  LOADN R13 0
  LOADN R14 7
  CALL R12 2 1
  SETTABLEKS R12 R11 K32 ["OffsetItemSpacing"]
  LOADN R12 40
  SETTABLEKS R12 R11 K33 ["PixelDimensionsHeightPx"]
  SETTABLE R11 R9 R10
  DUPTABLE R10 K42 [{"PaneSize", "LabelXWidth", "TextBoxSize", "LabelTextBoxSpacing", "Style"}]
  GETIMPORT R11 K29 [UDim2.fromOffset]
  LOADN R12 110
  LOADN R13 20
  CALL R11 2 1
  SETTABLEKS R11 R10 K38 ["PaneSize"]
  LOADN R11 50
  SETTABLEKS R11 R10 K39 ["LabelXWidth"]
  GETIMPORT R11 K29 [UDim2.fromOffset]
  LOADN R12 50
  LOADN R13 20
  CALL R11 2 1
  SETTABLEKS R11 R10 K40 ["TextBoxSize"]
  LOADN R11 10
  SETTABLEKS R11 R10 K41 ["LabelTextBoxSpacing"]
  LOADK R11 K43 ["RoundedBorder"]
  SETTABLEKS R11 R10 K7 ["Style"]
  SETTABLEKS R10 R9 K44 ["TextOffsetItem"]
  GETTABLEKS R10 R4 K15 ["AlertDialog"]
  DUPTABLE R11 K47 [{"PopupMessageSize", "TextSize"}]
  GETIMPORT R12 K49 [Vector2.new]
  LOADN R13 144
  LOADN R14 60
  CALL R12 2 1
  SETTABLEKS R12 R11 K45 ["PopupMessageSize"]
  LOADN R12 18
  SETTABLEKS R12 R11 K46 ["TextSize"]
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R4 K17 ["ImageDragger"]
  DUPTABLE R11 K52 [{"EdgeHandleSize", "EdgeHandleInsetPx"}]
  GETIMPORT R12 K29 [UDim2.fromOffset]
  LOADN R13 30
  LOADN R14 28
  CALL R12 2 1
  SETTABLEKS R12 R11 K50 ["EdgeHandleSize"]
  LOADN R12 2
  SETTABLEKS R12 R11 K51 ["EdgeHandleInsetPx"]
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R4 K20 ["ImageEditor"]
  DUPTABLE R11 K55 [{"PaneBackgroundColor", "PaneBorderColor"}]
  GETTABLEKS R12 R5 K21 ["SubtleBackgroundColor"]
  SETTABLEKS R12 R11 K53 ["PaneBackgroundColor"]
  GETTABLEKS R12 R5 K56 ["Border"]
  SETTABLEKS R12 R11 K54 ["PaneBorderColor"]
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R4 K18 ["SliceEditor"]
  DUPTABLE R11 K66 [{"TextAreaSize", "ImageAreaSize", "ButtonsAreaSize", "ButtonsSpacing", "VerticalSpacing", "HorizontalSpacing", "InfoBoxSize", "PaddingPx", "TextAreaXWindowScaleFactor"}]
  GETIMPORT R12 K29 [UDim2.fromOffset]
  GETTABLEKS R13 R6 K67 ["TEXTEDITOR_XSIZE"]
  GETTABLEKS R15 R6 K69 ["TEXTEDITOR_YSIZE"]
  ADDK R14 R15 K68 [60]
  CALL R12 2 1
  SETTABLEKS R12 R11 K57 ["TextAreaSize"]
  GETIMPORT R12 K29 [UDim2.fromOffset]
  GETTABLEKS R15 R6 K71 ["BACKGROUND_SIZE"]
  ADDK R14 R15 K70 [10]
  GETTABLEKS R15 R6 K67 ["TEXTEDITOR_XSIZE"]
  ADD R13 R14 R15
  GETTABLEKS R16 R6 K71 ["BACKGROUND_SIZE"]
  GETTABLEKS R17 R6 K72 ["TEXTSIZE"]
  ADD R15 R16 R17
  ADDK R14 R15 K70 [10]
  CALL R12 2 1
  SETTABLEKS R12 R11 K58 ["ImageAreaSize"]
  GETIMPORT R12 K29 [UDim2.fromOffset]
  GETTABLEKS R16 R6 K71 ["BACKGROUND_SIZE"]
  ADDK R15 R16 K70 [10]
  GETTABLEKS R16 R6 K67 ["TEXTEDITOR_XSIZE"]
  ADD R14 R15 R16
  ADDK R13 R14 K70 [10]
  LOADN R14 42
  CALL R12 2 1
  SETTABLEKS R12 R11 K59 ["ButtonsAreaSize"]
  GETIMPORT R12 K37 [UDim.new]
  LOADN R13 0
  LOADN R14 10
  CALL R12 2 1
  SETTABLEKS R12 R11 K60 ["ButtonsSpacing"]
  GETIMPORT R12 K37 [UDim.new]
  LOADN R13 0
  LOADN R14 5
  CALL R12 2 1
  SETTABLEKS R12 R11 K61 ["VerticalSpacing"]
  GETIMPORT R12 K37 [UDim.new]
  LOADN R13 0
  LOADN R14 5
  CALL R12 2 1
  SETTABLEKS R12 R11 K62 ["HorizontalSpacing"]
  GETIMPORT R12 K29 [UDim2.fromOffset]
  LOADN R13 44
  LOADN R14 200
  CALL R12 2 1
  SETTABLEKS R12 R11 K63 ["InfoBoxSize"]
  LOADN R12 2
  SETTABLEKS R12 R11 K64 ["PaddingPx"]
  LOADK R12 K73 [0.05]
  SETTABLEKS R12 R11 K65 ["TextAreaXWindowScaleFactor"]
  SETTABLE R11 R9 R10
  DUPCLOSURE R10 K74 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R9
  RETURN R10 1