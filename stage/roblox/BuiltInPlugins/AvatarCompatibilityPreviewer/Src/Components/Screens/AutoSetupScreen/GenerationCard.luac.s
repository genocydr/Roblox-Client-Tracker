PROTO_0:
  GETIMPORT R1 K2 [string.format]
  LOADK R2 K3 ["%01i:%02i"]
  DIVK R4 R0 K4 [60]
  MODK R3 R4 K4 [60]
  MODK R4 R0 K4 [60]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_1:
  GETUPVAL R0 0
  JUMPIFEQKNIL R0 [+37]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["completionStart"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["completionEnd"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["progressPercentage"]
  GETUPVAL R5 1
  FASTCALL2 MATH_MAX R0 R5 [+4]
  MOVE R4 R0
  GETIMPORT R3 K5 [math.max]
  CALL R3 2 1
  GETUPVAL R4 2
  GETUPVAL R6 3
  FASTCALL2 MATH_MAX R6 R3 [+4]
  MOVE R7 R3
  GETIMPORT R5 K5 [math.max]
  CALL R5 2 1
  CALL R4 1 0
  GETUPVAL R4 4
  GETUPVAL R6 1
  SUB R9 R1 R0
  MUL R8 R2 R9
  ADD R7 R0 R8
  FASTCALL2 MATH_MAX R6 R7 [+3]
  GETIMPORT R5 K5 [math.max]
  CALL R5 2 1
  CALL R4 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["new"]
  CALL R2 0 1
  GETUPVAL R3 2
  LOADK R5 K2 ["GenerationCard"]
  NAMECALL R3 R3 K0 ["use"]
  CALL R3 2 1
  GETUPVAL R4 3
  LOADB R5 0
  CALL R4 1 1
  GETUPVAL R5 3
  LOADB R6 0
  CALL R5 1 1
  GETTABLEKS R7 R0 K3 ["autoSetupState"]
  GETTABLEKS R6 R7 K4 ["progressState"]
  JUMPIFEQKNIL R6 [+18]
  GETTABLEKS R8 R6 K5 ["progressName"]
  JUMPIFEQKNIL R8 [+14]
  GETTABLEKS R9 R6 K5 ["progressName"]
  LENGTH R8 R9
  LOADN R9 0
  JUMPIFNOTLT R9 R8 [+8]
  LOADK R9 K6 ["ProgressBar"]
  GETTABLEKS R10 R6 K5 ["progressName"]
  NAMECALL R7 R1 K7 ["getText"]
  CALL R7 3 1
  JUMP [+1]
  LOADNIL R7
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K8 ["useState"]
  LOADN R9 0
  CALL R8 1 2
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K8 ["useState"]
  LOADN R11 0
  CALL R10 1 2
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K9 ["useEffect"]
  NEWCLOSURE R13 P0
  CAPTURE VAL R6
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R11
  NEWTABLE R14 0 1
  MOVE R15 R6
  SETLIST R14 R15 1 [1]
  CALL R12 2 0
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K10 ["createElement"]
  GETUPVAL R13 5
  NEWTABLE R14 16 0
  GETIMPORT R15 K12 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K13 ["Size"]
  GETIMPORT R15 K15 [Vector2.new]
  LOADK R16 K16 [0.5]
  LOADN R17 0
  CALL R15 2 1
  SETTABLEKS R15 R14 K17 ["AnchorPoint"]
  GETIMPORT R15 K12 [UDim2.new]
  LOADK R16 K16 [0.5]
  LOADN R17 0
  LOADN R18 1
  LOADN R19 136
  CALL R15 4 1
  SETTABLEKS R15 R14 K18 ["Position"]
  GETIMPORT R15 K22 [Enum.AutomaticSize.Y]
  SETTABLEKS R15 R14 K20 ["AutomaticSize"]
  GETIMPORT R15 K25 [Enum.FillDirection.Vertical]
  SETTABLEKS R15 R14 K26 ["Layout"]
  LOADN R15 0
  SETTABLEKS R15 R14 K27 ["BackgroundTransparency"]
  GETTABLEKS R16 R4 K28 ["enabled"]
  JUMPIFNOT R16 [+12]
  GETTABLEKS R16 R5 K28 ["enabled"]
  JUMPIF R16 [+9]
  GETUPVAL R16 6
  GETTABLEKS R15 R16 K29 ["darker"]
  GETTABLEKS R16 R3 K30 ["BackgroundColor"]
  GETTABLEKS R17 R3 K31 ["BackgroundColorHoverDarkerMultiplier"]
  CALL R15 2 1
  JUMP [+2]
  GETTABLEKS R15 R3 K30 ["BackgroundColor"]
  SETTABLEKS R15 R14 K32 ["BackgroundColor3"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K33 ["Event"]
  GETTABLEKS R15 R16 K34 ["MouseEnter"]
  GETTABLEKS R16 R4 K35 ["enable"]
  SETTABLE R16 R14 R15
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K33 ["Event"]
  GETTABLEKS R15 R16 K36 ["MouseLeave"]
  GETTABLEKS R16 R4 K37 ["disable"]
  SETTABLE R16 R14 R15
  GETTABLEKS R16 R0 K38 ["cancelDialogOpen"]
  GETTABLEKS R15 R16 K35 ["enable"]
  SETTABLEKS R15 R14 K39 ["OnClick"]
  LOADN R15 2
  SETTABLEKS R15 R14 K40 ["Spacing"]
  GETTABLEKS R15 R3 K41 ["InnerPadding"]
  SETTABLEKS R15 R14 K42 ["Padding"]
  DUPTABLE R15 K48 [{"TitlePane", "UISizeConstraint", "ProgressBar", "ProgressPane", "UICorner", "UIStroke"}]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K10 ["createElement"]
  GETUPVAL R17 5
  DUPTABLE R18 K50 [{"AutomaticSize", "LayoutOrder", "Layout", "Spacing"}]
  GETIMPORT R19 K22 [Enum.AutomaticSize.Y]
  SETTABLEKS R19 R18 K20 ["AutomaticSize"]
  NAMECALL R19 R2 K51 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K49 ["LayoutOrder"]
  GETIMPORT R19 K53 [Enum.FillDirection.Horizontal]
  SETTABLEKS R19 R18 K26 ["Layout"]
  LOADN R19 2
  SETTABLEKS R19 R18 K40 ["Spacing"]
  DUPTABLE R19 K56 [{"Title", "PrimaryAction"}]
  GETUPVAL R21 4
  GETTABLEKS R20 R21 K10 ["createElement"]
  GETUPVAL R21 7
  DUPTABLE R22 K64 [{"Size", "AutomaticSize", "LayoutOrder", "Font", "Text", "TextColor", "TextWrapped", "TextSize", "TextXAlignment", "TextYAlignment"}]
  GETIMPORT R23 K66 [UDim2.fromScale]
  LOADN R24 0
  LOADN R25 0
  CALL R23 2 1
  SETTABLEKS R23 R22 K13 ["Size"]
  GETIMPORT R23 K68 [Enum.AutomaticSize.XY]
  SETTABLEKS R23 R22 K20 ["AutomaticSize"]
  NAMECALL R23 R2 K51 ["getNextOrder"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K49 ["LayoutOrder"]
  GETTABLEKS R23 R3 K69 ["TitleFont"]
  SETTABLEKS R23 R22 K57 ["Font"]
  LOADK R25 K70 ["AvatarScreen"]
  LOADK R26 K71 ["AutoSetupInProgressTitle"]
  NAMECALL R23 R1 K7 ["getText"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K58 ["Text"]
  GETTABLEKS R23 R3 K59 ["TextColor"]
  SETTABLEKS R23 R22 K59 ["TextColor"]
  LOADB R23 1
  SETTABLEKS R23 R22 K60 ["TextWrapped"]
  GETTABLEKS R23 R3 K61 ["TextSize"]
  SETTABLEKS R23 R22 K61 ["TextSize"]
  GETIMPORT R23 K73 [Enum.TextXAlignment.Left]
  SETTABLEKS R23 R22 K62 ["TextXAlignment"]
  GETIMPORT R23 K75 [Enum.TextYAlignment.Top]
  SETTABLEKS R23 R22 K63 ["TextYAlignment"]
  DUPTABLE R23 K77 [{"UIFlexItem"}]
  GETUPVAL R25 4
  GETTABLEKS R24 R25 K10 ["createElement"]
  LOADK R25 K76 ["UIFlexItem"]
  DUPTABLE R26 K79 [{"FlexMode"}]
  GETIMPORT R27 K82 [Enum.UIFlexMode.Fill]
  SETTABLEKS R27 R26 K78 ["FlexMode"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K76 ["UIFlexItem"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K54 ["Title"]
  GETUPVAL R21 4
  GETTABLEKS R20 R21 K10 ["createElement"]
  GETUPVAL R21 7
  DUPTABLE R22 K84 [{"AutomaticSize", "Font", "LayoutOrder", "RichText", "Text", "TextColor"}]
  GETIMPORT R23 K68 [Enum.AutomaticSize.XY]
  SETTABLEKS R23 R22 K20 ["AutomaticSize"]
  GETTABLEKS R23 R3 K85 ["PrimaryActionFont"]
  SETTABLEKS R23 R22 K57 ["Font"]
  NAMECALL R23 R2 K51 ["getNextOrder"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K49 ["LayoutOrder"]
  LOADB R23 1
  SETTABLEKS R23 R22 K83 ["RichText"]
  LOADK R24 K86 ["<u>%*</u>"]
  LOADK R28 K70 ["AvatarScreen"]
  LOADK R29 K87 ["AutoSetupInProgressActionText"]
  NAMECALL R26 R1 K7 ["getText"]
  CALL R26 3 1
  NAMECALL R24 R24 K88 ["format"]
  CALL R24 2 1
  MOVE R23 R24
  SETTABLEKS R23 R22 K58 ["Text"]
  GETTABLEKS R23 R3 K59 ["TextColor"]
  SETTABLEKS R23 R22 K59 ["TextColor"]
  DUPTABLE R23 K77 [{"UIFlexItem"}]
  GETUPVAL R25 4
  GETTABLEKS R24 R25 K10 ["createElement"]
  LOADK R25 K76 ["UIFlexItem"]
  DUPTABLE R26 K79 [{"FlexMode"}]
  GETIMPORT R27 K90 [Enum.UIFlexMode.Shrink]
  SETTABLEKS R27 R26 K78 ["FlexMode"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K76 ["UIFlexItem"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K55 ["PrimaryAction"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K43 ["TitlePane"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K10 ["createElement"]
  LOADK R17 K44 ["UISizeConstraint"]
  DUPTABLE R18 K92 [{"MaxSize"}]
  GETIMPORT R19 K15 [Vector2.new]
  GETTABLEKS R20 R3 K93 ["MaxWidth"]
  LOADK R21 K94 [∞]
  CALL R19 2 1
  SETTABLEKS R19 R18 K91 ["MaxSize"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K44 ["UISizeConstraint"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K10 ["createElement"]
  GETUPVAL R17 8
  DUPTABLE R18 K99 [{"LayoutOrder", "estimatedTotalTime", "startProgress", "holdProgress", "displayPercentLabel"}]
  NAMECALL R19 R2 K51 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K49 ["LayoutOrder"]
  LOADN R19 150
  SETTABLEKS R19 R18 K95 ["estimatedTotalTime"]
  SETTABLEKS R8 R18 K96 ["startProgress"]
  SETTABLEKS R10 R18 K97 ["holdProgress"]
  GETUPVAL R19 9
  SETTABLEKS R19 R18 K98 ["displayPercentLabel"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K6 ["ProgressBar"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K10 ["createElement"]
  GETUPVAL R17 5
  DUPTABLE R18 K50 [{"AutomaticSize", "LayoutOrder", "Layout", "Spacing"}]
  GETIMPORT R19 K68 [Enum.AutomaticSize.XY]
  SETTABLEKS R19 R18 K20 ["AutomaticSize"]
  NAMECALL R19 R2 K51 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K49 ["LayoutOrder"]
  GETIMPORT R19 K53 [Enum.FillDirection.Horizontal]
  SETTABLEKS R19 R18 K26 ["Layout"]
  LOADN R19 2
  SETTABLEKS R19 R18 K40 ["Spacing"]
  DUPTABLE R19 K102 [{"CurrentStage", "EstimatedTime"}]
  GETTABLEKS R22 R0 K3 ["autoSetupState"]
  GETTABLEKS R21 R22 K4 ["progressState"]
  JUMPIFNOT R21 [+52]
  JUMPIFEQKNIL R7 [+51]
  GETUPVAL R21 4
  GETTABLEKS R20 R21 K10 ["createElement"]
  GETUPVAL R21 7
  DUPTABLE R22 K103 [{"AutomaticSize", "LayoutOrder", "Size", "Text", "TextColor", "TextWrapped", "TextXAlignment"}]
  GETIMPORT R23 K22 [Enum.AutomaticSize.Y]
  SETTABLEKS R23 R22 K20 ["AutomaticSize"]
  NAMECALL R23 R2 K51 ["getNextOrder"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K49 ["LayoutOrder"]
  GETIMPORT R23 K66 [UDim2.fromScale]
  GETUPVAL R25 10
  JUMPIFNOT R25 [+2]
  LOADN R24 1
  JUMP [+1]
  LOADK R24 K16 [0.5]
  LOADN R25 0
  CALL R23 2 1
  SETTABLEKS R23 R22 K13 ["Size"]
  SETTABLEKS R7 R22 K58 ["Text"]
  GETTABLEKS R23 R3 K59 ["TextColor"]
  SETTABLEKS R23 R22 K59 ["TextColor"]
  LOADB R23 1
  SETTABLEKS R23 R22 K60 ["TextWrapped"]
  GETIMPORT R23 K73 [Enum.TextXAlignment.Left]
  SETTABLEKS R23 R22 K62 ["TextXAlignment"]
  DUPTABLE R23 K77 [{"UIFlexItem"}]
  GETUPVAL R25 4
  GETTABLEKS R24 R25 K10 ["createElement"]
  LOADK R25 K76 ["UIFlexItem"]
  NEWTABLE R26 0 0
  CALL R24 2 1
  SETTABLEKS R24 R23 K76 ["UIFlexItem"]
  CALL R20 3 1
  JUMP [+1]
  LOADNIL R20
  SETTABLEKS R20 R19 K100 ["CurrentStage"]
  GETUPVAL R21 10
  NOT R20 R21
  JUMPIFNOT R20 [+66]
  GETUPVAL R21 4
  GETTABLEKS R20 R21 K10 ["createElement"]
  GETUPVAL R21 7
  DUPTABLE R22 K104 [{"AutomaticSize", "Font", "LayoutOrder", "RichText", "Size", "Text", "TextXAlignment", "TextColor"}]
  GETIMPORT R23 K22 [Enum.AutomaticSize.Y]
  SETTABLEKS R23 R22 K20 ["AutomaticSize"]
  GETTABLEKS R23 R3 K85 ["PrimaryActionFont"]
  SETTABLEKS R23 R22 K57 ["Font"]
  NAMECALL R23 R2 K51 ["getNextOrder"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K49 ["LayoutOrder"]
  LOADB R23 1
  SETTABLEKS R23 R22 K83 ["RichText"]
  GETIMPORT R23 K66 [UDim2.fromScale]
  LOADK R24 K16 [0.5]
  LOADN R25 0
  CALL R23 2 1
  SETTABLEKS R23 R22 K13 ["Size"]
  LOADK R29 K70 ["AvatarScreen"]
  LOADK R30 K105 ["AutoSetupEstimatedTime"]
  NAMECALL R27 R1 K7 ["getText"]
  CALL R27 3 1
  MOVE R24 R27
  LOADK R25 K106 ["	"]
  GETIMPORT R26 K108 [string.format]
  LOADK R27 K109 ["%01i:%02i"]
  LOADK R28 K110 [2.5]
  LOADN R29 30
  CALL R26 3 1
  CONCAT R23 R24 R26
  SETTABLEKS R23 R22 K58 ["Text"]
  GETIMPORT R23 K112 [Enum.TextXAlignment.Right]
  SETTABLEKS R23 R22 K62 ["TextXAlignment"]
  GETTABLEKS R23 R3 K59 ["TextColor"]
  SETTABLEKS R23 R22 K59 ["TextColor"]
  DUPTABLE R23 K77 [{"UIFlexItem"}]
  GETUPVAL R25 4
  GETTABLEKS R24 R25 K10 ["createElement"]
  LOADK R25 K76 ["UIFlexItem"]
  DUPTABLE R26 K79 [{"FlexMode"}]
  GETIMPORT R27 K90 [Enum.UIFlexMode.Shrink]
  SETTABLEKS R27 R26 K78 ["FlexMode"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K76 ["UIFlexItem"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K101 ["EstimatedTime"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K45 ["ProgressPane"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K10 ["createElement"]
  LOADK R17 K46 ["UICorner"]
  DUPTABLE R18 K114 [{"CornerRadius"}]
  GETTABLEKS R19 R3 K113 ["CornerRadius"]
  SETTABLEKS R19 R18 K113 ["CornerRadius"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K46 ["UICorner"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K10 ["createElement"]
  LOADK R17 K47 ["UIStroke"]
  DUPTABLE R18 K118 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R19 K120 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R19 R18 K115 ["ApplyStrokeMode"]
  GETTABLEKS R19 R3 K121 ["StrokeColor"]
  SETTABLEKS R19 R18 K116 ["Color"]
  GETTABLEKS R19 R3 K122 ["StrokeThickness"]
  SETTABLEKS R19 R18 K117 ["Thickness"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K47 ["UIStroke"]
  CALL R12 3 -1
  RETURN R12 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
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
  GETIMPORT R3 K5 [require]
  GETTABLEKS R8 R0 K9 ["Src"]
  GETTABLEKS R7 R8 K10 ["Components"]
  GETTABLEKS R6 R7 K11 ["Screens"]
  GETTABLEKS R5 R6 K12 ["AutoSetupScreen"]
  GETTABLEKS R4 R5 K13 ["FakeLoadingBarSegment"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K14 ["Resources"]
  GETTABLEKS R5 R6 K15 ["Theme"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K16 ["Types"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K9 ["Src"]
  GETTABLEKS R8 R9 K17 ["Hooks"]
  GETTABLEKS R7 R8 K18 ["useToggleState"]
  CALL R6 1 1
  GETIMPORT R7 K20 [game]
  LOADK R9 K21 ["DebugAvatarAutosetupProgressPercentLabel"]
  LOADB R10 0
  NAMECALL R7 R7 K22 ["DefineFastFlag"]
  CALL R7 3 1
  GETIMPORT R8 K20 [game]
  LOADK R10 K23 ["AvatarPreviewerDisableAutosetupEstimatedTime"]
  LOADB R11 0
  NAMECALL R8 R8 K22 ["DefineFastFlag"]
  CALL R8 3 1
  GETTABLEKS R10 R1 K24 ["ContextServices"]
  GETTABLEKS R9 R10 K25 ["Localization"]
  GETTABLEKS R11 R1 K24 ["ContextServices"]
  GETTABLEKS R10 R11 K26 ["Stylizer"]
  GETTABLEKS R12 R1 K27 ["Style"]
  GETTABLEKS R11 R12 K28 ["Colors"]
  GETTABLEKS R12 R1 K29 ["UI"]
  GETTABLEKS R13 R12 K30 ["Pane"]
  GETTABLEKS R14 R12 K31 ["TextLabel"]
  GETTABLEKS R16 R1 K32 ["Util"]
  GETTABLEKS R15 R16 K33 ["LayoutOrderIterator"]
  DUPCLOSURE R16 K34 [PROTO_0]
  DUPCLOSURE R17 K35 [PROTO_2]
  CAPTURE VAL R9
  CAPTURE VAL R15
  CAPTURE VAL R10
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R13
  CAPTURE VAL R11
  CAPTURE VAL R14
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R8
  RETURN R17 1