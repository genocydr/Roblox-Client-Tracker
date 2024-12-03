PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFEQKNIL R0 [+11]
  GETIMPORT R0 K3 [task.cancel]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["current"]
  CALL R0 1 0
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["current"]
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R0 P0
  CAPTURE UPVAL U0
  RETURN R0 1

PROTO_2:
  GETUPVAL R0 0
  LOADK R2 K0 ["StudioService"]
  NAMECALL R0 R0 K1 ["getService"]
  CALL R0 2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["Text"]
  NAMECALL R1 R0 K3 ["CopyToClipboard"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Text"]
  JUMPIFNOTEQKS R0 K1 [""] [+2]
  RETURN R0 0
  GETIMPORT R0 K3 [pcall]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U0
  CALL R0 1 2
  GETUPVAL R2 2
  LOADB R3 1
  CALL R2 1 0
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K4 ["current"]
  JUMPIFNOT R2 [+10]
  GETIMPORT R2 K7 [task.cancel]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K4 ["current"]
  CALL R2 1 0
  GETUPVAL R2 3
  LOADNIL R3
  SETTABLEKS R3 R2 K4 ["current"]
  GETUPVAL R2 3
  GETIMPORT R3 K9 [task.delay]
  LOADN R4 1
  NEWCLOSURE R5 P1
  CAPTURE UPVAL U2
  CALL R3 2 1
  SETTABLEKS R3 R2 K4 ["current"]
  JUMPIF R0 [+4]
  GETIMPORT R2 K11 [warn]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useRef"]
  LOADNIL R2
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["useEffect"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R1
  NEWTABLE R4 0 0
  CALL R2 2 0
  GETUPVAL R2 1
  LOADK R4 K2 ["PromptGroupFooter"]
  NAMECALL R2 R2 K3 ["use"]
  CALL R2 2 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K3 ["use"]
  CALL R3 0 1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K3 ["use"]
  CALL R4 0 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["useState"]
  LOADB R6 0
  CALL R5 1 2
  JUMPIFNOT R5 [+6]
  LOADK R9 K2 ["PromptGroupFooter"]
  LOADK R10 K5 ["CopyPromptCopied"]
  NAMECALL R7 R4 K6 ["getText"]
  CALL R7 3 1
  JUMP [+5]
  LOADK R9 K2 ["PromptGroupFooter"]
  LOADK R10 K7 ["CopyPrompt"]
  NAMECALL R7 R4 K6 ["getText"]
  CALL R7 3 1
  GETTABLEKS R10 R2 K8 ["ButtonSize"]
  GETTABLEKS R9 R10 K9 ["X"]
  GETTABLEKS R8 R9 K10 ["Offset"]
  MULK R10 R8 K11 [1]
  GETTABLEKS R12 R2 K13 ["ButtonSpacing"]
  MULK R11 R12 K12 [0]
  ADD R9 R10 R11
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K14 ["useCallback"]
  NEWCLOSURE R11 P1
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R1
  NEWTABLE R12 0 1
  GETTABLEKS R13 R0 K15 ["Text"]
  SETLIST R12 R13 1 [1]
  CALL R10 2 1
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K16 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K24 [{"BackgroundColor", "HorizontalAlignment", "Layout", "Padding", "Position", "Size", "Style"}]
  GETTABLEKS R14 R2 K17 ["BackgroundColor"]
  SETTABLEKS R14 R13 K17 ["BackgroundColor"]
  GETIMPORT R14 K27 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R14 R13 K18 ["HorizontalAlignment"]
  GETIMPORT R14 K30 [Enum.FillDirection.Horizontal]
  SETTABLEKS R14 R13 K19 ["Layout"]
  GETTABLEKS R14 R2 K20 ["Padding"]
  SETTABLEKS R14 R13 K20 ["Padding"]
  GETTABLEKS R14 R0 K21 ["Position"]
  SETTABLEKS R14 R13 K21 ["Position"]
  GETTABLEKS R14 R0 K22 ["Size"]
  SETTABLEKS R14 R13 K22 ["Size"]
  GETTABLEKS R14 R2 K23 ["Style"]
  SETTABLEKS R14 R13 K23 ["Style"]
  DUPTABLE R14 K33 [{"PromptLabel", "PromptGroupButtons"}]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K16 ["createElement"]
  GETUPVAL R16 5
  DUPTABLE R17 K41 [{"LayoutOrder", "Size", "Text", "TextXAlignment", "TextYAlignment", "TextTruncate", "TextSelectable", "TextWrapped", "TextColor"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K34 ["LayoutOrder"]
  GETIMPORT R18 K44 [UDim2.new]
  LOADN R19 1
  MINUS R20 R9
  LOADN R21 1
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K22 ["Size"]
  GETTABLEKS R19 R0 K15 ["Text"]
  ORK R18 R19 K45 [""]
  SETTABLEKS R18 R17 K15 ["Text"]
  GETIMPORT R18 K46 [Enum.TextXAlignment.Left]
  SETTABLEKS R18 R17 K35 ["TextXAlignment"]
  GETIMPORT R18 K48 [Enum.TextYAlignment.Center]
  SETTABLEKS R18 R17 K36 ["TextYAlignment"]
  GETIMPORT R18 K50 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R18 R17 K37 ["TextTruncate"]
  LOADB R18 0
  SETTABLEKS R18 R17 K38 ["TextSelectable"]
  LOADB R18 0
  SETTABLEKS R18 R17 K39 ["TextWrapped"]
  GETTABLEKS R18 R2 K40 ["TextColor"]
  SETTABLEKS R18 R17 K40 ["TextColor"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K31 ["PromptLabel"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K16 ["createElement"]
  GETUPVAL R16 4
  DUPTABLE R17 K52 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing"}]
  GETIMPORT R18 K27 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R18 R17 K18 ["HorizontalAlignment"]
  GETIMPORT R18 K30 [Enum.FillDirection.Horizontal]
  SETTABLEKS R18 R17 K19 ["Layout"]
  LOADN R18 2
  SETTABLEKS R18 R17 K34 ["LayoutOrder"]
  GETIMPORT R18 K44 [UDim2.new]
  LOADN R19 0
  MOVE R20 R9
  LOADN R21 1
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K22 ["Size"]
  GETTABLEKS R18 R2 K13 ["ButtonSpacing"]
  SETTABLEKS R18 R17 K51 ["Spacing"]
  DUPTABLE R18 K54 [{"CopyPromptButton"}]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K16 ["createElement"]
  GETUPVAL R20 6
  DUPTABLE R21 K57 [{"Size", "Style", "Tooltip", "OnClick"}]
  GETTABLEKS R22 R2 K8 ["ButtonSize"]
  SETTABLEKS R22 R21 K22 ["Size"]
  LOADK R22 K58 ["RoundSubtle"]
  SETTABLEKS R22 R21 K23 ["Style"]
  SETTABLEKS R7 R21 K55 ["Tooltip"]
  SETTABLEKS R10 R21 K56 ["OnClick"]
  DUPTABLE R22 K60 [{"Icon"}]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K16 ["createElement"]
  GETUPVAL R24 7
  DUPTABLE R25 K65 [{"AnchorPoint", "BackgroundTransparency", "ImageColor3", "Image", "Position", "Size"}]
  GETIMPORT R26 K67 [Vector2.new]
  LOADK R27 K68 [0.5]
  LOADK R28 K68 [0.5]
  CALL R26 2 1
  SETTABLEKS R26 R25 K61 ["AnchorPoint"]
  LOADN R26 1
  SETTABLEKS R26 R25 K62 ["BackgroundTransparency"]
  GETTABLEKS R26 R2 K69 ["ButtonColor"]
  SETTABLEKS R26 R25 K63 ["ImageColor3"]
  GETTABLEKS R26 R2 K70 ["CopyPromptButtonImage"]
  SETTABLEKS R26 R25 K64 ["Image"]
  GETIMPORT R26 K72 [UDim2.fromScale]
  LOADK R27 K68 [0.5]
  LOADK R28 K68 [0.5]
  CALL R26 2 1
  SETTABLEKS R26 R25 K21 ["Position"]
  GETTABLEKS R26 R2 K73 ["ButtonImageSize"]
  SETTABLEKS R26 R25 K22 ["Size"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K59 ["Icon"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K53 ["CopyPromptButton"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K32 ["PromptGroupButtons"]
  CALL R11 3 -1
  RETURN R11 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["MaterialGenerator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["MaterialFramework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["React"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["Localization"]
  GETTABLEKS R6 R4 K12 ["Stylizer"]
  GETTABLEKS R7 R1 K13 ["UI"]
  GETTABLEKS R8 R7 K14 ["Button"]
  GETTABLEKS R9 R7 K15 ["Image"]
  GETTABLEKS R10 R7 K16 ["Pane"]
  GETTABLEKS R11 R7 K17 ["TextLabel"]
  GETTABLEKS R13 R2 K18 ["Context"]
  GETTABLEKS R12 R13 K19 ["StudioServices"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K20 ["Src"]
  GETTABLEKS R15 R16 K21 ["Resources"]
  GETTABLEKS R14 R15 K22 ["Theme"]
  CALL R13 1 1
  DUPCLOSURE R14 K23 [PROTO_5]
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R12
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R9
  RETURN R14 1