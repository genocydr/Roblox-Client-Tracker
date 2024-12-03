PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["ShowTree"]
  JUMPIFNOT R1 [+4]
  GETTABLEKS R1 R0 K2 ["SetShowTree"]
  LOADB R2 0
  CALL R1 1 0
  GETTABLEKS R1 R0 K3 ["IKEnabled"]
  JUMPIFNOT R1 [+4]
  GETTABLEKS R1 R0 K4 ["SetIKEnabled"]
  LOADB R2 0
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  LOADK R3 K0 ["PluginGui"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+6]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["hideTree"]
  NAMECALL R1 R0 K3 ["BindToClose"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"treeArray"}]
  SETTABLEKS R0 R3 K0 ["treeArray"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["state"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["props"]
  GETTABLEKS R3 R1 K2 ["treeArray"]
  GETTABLEKS R4 R2 K3 ["SelectedTrack"]
  GETTABLEKS R5 R2 K4 ["SetSelectedTracks"]
  LOADN R6 0
  GETIMPORT R7 K6 [ipairs]
  MOVE R8 R3
  CALL R7 1 3
  FORGPREP_INEXT R7
  JUMPIFNOT R4 [+5]
  GETTABLEN R12 R4 1
  JUMPIFNOTEQ R12 R11 [+3]
  MOVE R6 R10
  JUMP [+2]
  FORGLOOP R7 2 [inext] [-7]
  ADD R8 R6 R0
  LOADN R9 1
  LENGTH R10 R3
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R7 K9 [math.clamp]
  CALL R7 3 1
  NEWTABLE R8 0 1
  GETTABLE R9 R3 R7
  SETLIST R8 R9 1 [1]
  MOVE R9 R5
  NEWTABLE R10 0 1
  MOVE R11 R8
  SETLIST R10 R11 1 [1]
  CALL R9 1 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R2 R1 K0 ["UserInputType"]
  GETIMPORT R3 K3 [Enum.UserInputType.Keyboard]
  JUMPIFNOTEQ R2 R3 [+26]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["isUp"]
  GETTABLEKS R3 R1 K5 ["KeyCode"]
  CALL R2 1 1
  JUMPIFNOT R2 [+6]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K6 ["changeSelectedTrack"]
  LOADN R3 255
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K7 ["isDown"]
  GETTABLEKS R3 R1 K5 ["KeyCode"]
  CALL R2 1 1
  JUMPIFNOT R2 [+5]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K6 ["changeSelectedTrack"]
  LOADN R3 1
  CALL R2 1 0
  RETURN R0 0

PROTO_5:
  DUPTABLE R1 K1 [{"treeArray"}]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K0 ["treeArray"]
  SETTABLEKS R1 R0 K2 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["hideTree"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["onDockWidgetLoaded"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["onTreeUpdated"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K6 ["changeSelectedTrack"]
  NEWCLOSURE R1 P4
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K7 ["onInputBegan"]
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["hideTree"]
  CALL R1 0 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Localization"]
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R3 R2 K2 ["Stylizer"]
  GETTABLEKS R4 R2 K3 ["RootInstance"]
  GETTABLEKS R5 R2 K4 ["PinnedParts"]
  GETTABLEKS R6 R2 K5 ["IsR15"]
  GETTABLEKS R7 R2 K6 ["IKMode"]
  GETTABLEKS R8 R2 K7 ["IKEnabled"]
  GETTABLEKS R9 R2 K8 ["SelectedTrack"]
  GETTABLEKS R10 R2 K9 ["SetSelectedTracks"]
  GETTABLEKS R11 R2 K10 ["TogglePinnedPart"]
  GETTABLEKS R12 R2 K11 ["ToggleIKEnabled"]
  GETTABLEKS R13 R2 K12 ["SetIKMode"]
  JUMPIFNOT R6 [+2]
  LOADN R14 40
  JUMP [+1]
  LOADN R14 0
  JUMPIFNOT R6 [+2]
  LOADN R15 160
  JUMP [+1]
  LOADN R15 200
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K13 ["createElement"]
  GETUPVAL R17 1
  NEWTABLE R18 16 0
  LOADK R19 K14 ["ManageIK"]
  SETTABLEKS R19 R18 K15 ["Id"]
  LOADK R21 K16 ["Title"]
  LOADK R22 K14 ["ManageIK"]
  NAMECALL R19 R1 K17 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K16 ["Title"]
  LOADK R19 K14 ["ManageIK"]
  SETTABLEKS R19 R18 K18 ["Name"]
  GETIMPORT R19 K22 [Enum.ZIndexBehavior.Global]
  SETTABLEKS R19 R18 K20 ["ZIndexBehavior"]
  GETIMPORT R19 K25 [Enum.InitialDockState.Left]
  SETTABLEKS R19 R18 K23 ["InitialDockState"]
  LOADB R19 1
  SETTABLEKS R19 R18 K26 ["InitialEnabled"]
  LOADB R19 1
  SETTABLEKS R19 R18 K27 ["InitialEnabledShouldOverrideRestore"]
  GETUPVAL R19 2
  SETTABLEKS R19 R18 K28 ["Size"]
  GETUPVAL R19 2
  SETTABLEKS R19 R18 K29 ["MinSize"]
  GETTABLEKS R19 R0 K30 ["hideTree"]
  SETTABLEKS R19 R18 K31 ["OnClose"]
  LOADB R19 1
  SETTABLEKS R19 R18 K32 ["Enabled"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K33 ["Ref"]
  GETTABLEKS R20 R0 K34 ["onDockWidgetLoaded"]
  SETTABLE R20 R18 R19
  DUPTABLE R19 K36 [{"Container"}]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K13 ["createElement"]
  LOADK R21 K37 ["Frame"]
  NEWTABLE R22 4 0
  LOADN R23 0
  SETTABLEKS R23 R22 K38 ["BorderSizePixel"]
  GETTABLEKS R23 R3 K39 ["backgroundColor"]
  SETTABLEKS R23 R22 K40 ["BackgroundColor3"]
  GETIMPORT R23 K43 [UDim2.new]
  LOADN R24 1
  LOADN R25 0
  LOADN R26 1
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K28 ["Size"]
  GETUPVAL R25 0
  GETTABLEKS R24 R25 K44 ["Event"]
  GETTABLEKS R23 R24 K45 ["InputBegan"]
  GETTABLEKS R24 R0 K46 ["onInputBegan"]
  SETTABLE R24 R22 R23
  DUPTABLE R23 K51 [{"IKModeControls", "TreeView", "EnableIKPrompt", "BottomFrame"}]
  MOVE R24 R6
  JUMPIFNOT R24 [+15]
  MOVE R24 R8
  JUMPIFNOT R24 [+13]
  GETUPVAL R25 0
  GETTABLEKS R24 R25 K13 ["createElement"]
  GETUPVAL R25 3
  DUPTABLE R26 K53 [{"Height", "IKMode", "SetIKMode"}]
  LOADN R27 32
  SETTABLEKS R27 R26 K52 ["Height"]
  SETTABLEKS R7 R26 K6 ["IKMode"]
  SETTABLEKS R13 R26 K12 ["SetIKMode"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K47 ["IKModeControls"]
  MOVE R24 R4
  JUMPIFNOT R24 [+52]
  MOVE R24 R8
  JUMPIFNOT R24 [+50]
  GETUPVAL R25 0
  GETTABLEKS R24 R25 K13 ["createElement"]
  GETUPVAL R25 4
  DUPTABLE R26 K58 [{"Size", "Position", "RootInstance", "PinnedParts", "TogglePinnedPart", "SelectedTrack", "SetSelectedTracks", "Chain", "IKMode", "TreeArray", "OnTreeUpdated"}]
  GETIMPORT R27 K43 [UDim2.new]
  LOADN R28 1
  LOADN R29 0
  LOADN R30 1
  MOVE R31 R15
  CALL R27 4 1
  SETTABLEKS R27 R26 K28 ["Size"]
  GETIMPORT R27 K43 [UDim2.new]
  LOADN R28 0
  LOADN R29 0
  LOADN R30 0
  MOVE R31 R14
  CALL R27 4 1
  SETTABLEKS R27 R26 K54 ["Position"]
  SETTABLEKS R4 R26 K3 ["RootInstance"]
  SETTABLEKS R5 R26 K4 ["PinnedParts"]
  SETTABLEKS R11 R26 K10 ["TogglePinnedPart"]
  SETTABLEKS R9 R26 K8 ["SelectedTrack"]
  SETTABLEKS R10 R26 K9 ["SetSelectedTracks"]
  GETTABLEKS R27 R2 K55 ["Chain"]
  SETTABLEKS R27 R26 K55 ["Chain"]
  SETTABLEKS R7 R26 K6 ["IKMode"]
  GETTABLEKS R28 R0 K59 ["state"]
  GETTABLEKS R27 R28 K60 ["treeArray"]
  SETTABLEKS R27 R26 K56 ["TreeArray"]
  GETTABLEKS R27 R0 K61 ["onTreeUpdated"]
  SETTABLEKS R27 R26 K57 ["OnTreeUpdated"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K48 ["TreeView"]
  NOT R24 R8
  JUMPIFNOT R24 [+68]
  GETUPVAL R25 0
  GETTABLEKS R24 R25 K13 ["createElement"]
  LOADK R25 K62 ["TextLabel"]
  DUPTABLE R26 K72 [{"AnchorPoint", "BackgroundTransparency", "Position", "Size", "TextXAlignment", "TextYAlignment", "TextSize", "TextColor3", "TextWrapped", "Font", "Text"}]
  GETIMPORT R27 K74 [Vector2.new]
  LOADK R28 K75 [0.5]
  LOADK R29 K75 [0.5]
  CALL R27 2 1
  SETTABLEKS R27 R26 K63 ["AnchorPoint"]
  LOADN R27 1
  SETTABLEKS R27 R26 K64 ["BackgroundTransparency"]
  GETIMPORT R27 K43 [UDim2.new]
  LOADK R28 K75 [0.5]
  LOADN R29 0
  LOADK R30 K75 [0.5]
  LOADN R31 0
  CALL R27 4 1
  SETTABLEKS R27 R26 K54 ["Position"]
  GETIMPORT R27 K43 [UDim2.new]
  LOADN R28 1
  LOADN R29 248
  LOADN R30 1
  LOADN R31 216
  CALL R27 4 1
  SETTABLEKS R27 R26 K28 ["Size"]
  GETIMPORT R27 K77 [Enum.TextXAlignment.Center]
  SETTABLEKS R27 R26 K65 ["TextXAlignment"]
  GETIMPORT R27 K78 [Enum.TextYAlignment.Center]
  SETTABLEKS R27 R26 K66 ["TextYAlignment"]
  GETTABLEKS R28 R3 K79 ["ikTheme"]
  GETTABLEKS R27 R28 K80 ["textSize"]
  SETTABLEKS R27 R26 K67 ["TextSize"]
  GETTABLEKS R28 R3 K79 ["ikTheme"]
  GETTABLEKS R27 R28 K81 ["textColor"]
  SETTABLEKS R27 R26 K68 ["TextColor3"]
  LOADB R27 1
  SETTABLEKS R27 R26 K69 ["TextWrapped"]
  GETTABLEKS R27 R3 K82 ["font"]
  SETTABLEKS R27 R26 K70 ["Font"]
  LOADK R29 K83 ["IKMenu"]
  LOADK R30 K84 ["Prompt"]
  NAMECALL R27 R1 K17 ["getText"]
  CALL R27 3 1
  SETTABLEKS R27 R26 K71 ["Text"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K49 ["EnableIKPrompt"]
  GETUPVAL R25 0
  GETTABLEKS R24 R25 K13 ["createElement"]
  LOADK R25 K37 ["Frame"]
  DUPTABLE R26 K86 [{"Size", "Position", "AnchorPoint", "BackgroundColor3", "BorderSizePixel", "BorderColor3"}]
  GETIMPORT R27 K43 [UDim2.new]
  LOADN R28 1
  LOADN R29 0
  LOADN R30 0
  LOADN R31 48
  CALL R27 4 1
  SETTABLEKS R27 R26 K28 ["Size"]
  GETIMPORT R27 K43 [UDim2.new]
  LOADN R28 0
  LOADN R29 0
  LOADN R30 1
  LOADN R31 0
  CALL R27 4 1
  SETTABLEKS R27 R26 K54 ["Position"]
  GETIMPORT R27 K74 [Vector2.new]
  LOADN R28 0
  LOADN R29 1
  CALL R27 2 1
  SETTABLEKS R27 R26 K63 ["AnchorPoint"]
  GETTABLEKS R28 R3 K79 ["ikTheme"]
  GETTABLEKS R27 R28 K87 ["headerColor"]
  SETTABLEKS R27 R26 K40 ["BackgroundColor3"]
  LOADN R27 1
  SETTABLEKS R27 R26 K38 ["BorderSizePixel"]
  GETTABLEKS R28 R3 K79 ["ikTheme"]
  GETTABLEKS R27 R28 K88 ["headerBorder"]
  SETTABLEKS R27 R26 K85 ["BorderColor3"]
  DUPTABLE R27 K90 [{"EnableIKButton"}]
  GETUPVAL R29 0
  GETTABLEKS R28 R29 K13 ["createElement"]
  GETUPVAL R29 5
  DUPTABLE R30 K93 [{"AnchorPoint", "Position", "IsRound", "Size", "OnClick"}]
  GETIMPORT R31 K74 [Vector2.new]
  LOADK R32 K75 [0.5]
  LOADN R33 1
  CALL R31 2 1
  SETTABLEKS R31 R30 K63 ["AnchorPoint"]
  GETIMPORT R31 K43 [UDim2.new]
  LOADK R32 K75 [0.5]
  LOADN R33 0
  LOADN R34 1
  LOADN R35 248
  CALL R31 4 1
  SETTABLEKS R31 R30 K54 ["Position"]
  LOADB R31 1
  SETTABLEKS R31 R30 K91 ["IsRound"]
  GETIMPORT R31 K43 [UDim2.new]
  LOADN R32 1
  LOADN R33 248
  LOADN R34 0
  LOADN R35 32
  CALL R31 4 1
  SETTABLEKS R31 R30 K28 ["Size"]
  SETTABLEKS R12 R30 K92 ["OnClick"]
  DUPTABLE R31 K94 [{"TextLabel"}]
  GETUPVAL R33 0
  GETTABLEKS R32 R33 K13 ["createElement"]
  LOADK R33 K62 ["TextLabel"]
  DUPTABLE R34 K95 [{"BackgroundTransparency", "Size", "TextYAlignment", "TextSize", "Text", "Font", "TextColor3"}]
  LOADN R35 1
  SETTABLEKS R35 R34 K64 ["BackgroundTransparency"]
  GETIMPORT R35 K43 [UDim2.new]
  LOADN R36 1
  LOADN R37 0
  LOADN R38 1
  LOADN R39 0
  CALL R35 4 1
  SETTABLEKS R35 R34 K28 ["Size"]
  GETIMPORT R35 K78 [Enum.TextYAlignment.Center]
  SETTABLEKS R35 R34 K66 ["TextYAlignment"]
  GETTABLEKS R36 R3 K79 ["ikTheme"]
  GETTABLEKS R35 R36 K80 ["textSize"]
  SETTABLEKS R35 R34 K67 ["TextSize"]
  JUMPIFNOT R8 [+6]
  LOADK R37 K83 ["IKMenu"]
  LOADK R38 K96 ["DisableIK"]
  NAMECALL R35 R1 K17 ["getText"]
  CALL R35 3 1
  JUMPIF R35 [+5]
  LOADK R37 K83 ["IKMenu"]
  LOADK R38 K97 ["EnableIK"]
  NAMECALL R35 R1 K17 ["getText"]
  CALL R35 3 1
  SETTABLEKS R35 R34 K71 ["Text"]
  GETTABLEKS R35 R3 K82 ["font"]
  SETTABLEKS R35 R34 K70 ["Font"]
  GETTABLEKS R36 R3 K79 ["ikTheme"]
  GETTABLEKS R35 R36 K81 ["textColor"]
  SETTABLEKS R35 R34 K68 ["TextColor3"]
  CALL R32 2 1
  SETTABLEKS R32 R31 K62 ["TextLabel"]
  CALL R28 3 1
  SETTABLEKS R28 R27 K89 ["EnableIKButton"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K50 ["BottomFrame"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K35 ["Container"]
  CALL R16 3 -1
  RETURN R16 -1

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
  GETTABLEKS R3 R2 K9 ["UI"]
  GETTABLEKS R4 R3 K10 ["Button"]
  GETTABLEKS R5 R3 K11 ["DockWidget"]
  GETTABLEKS R6 R2 K12 ["ContextServices"]
  GETTABLEKS R7 R6 K13 ["withContext"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K14 ["Src"]
  GETTABLEKS R10 R11 K15 ["Util"]
  GETTABLEKS R9 R10 K16 ["Input"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R13 R0 K14 ["Src"]
  GETTABLEKS R12 R13 K17 ["Components"]
  GETTABLEKS R11 R12 K18 ["IK"]
  GETTABLEKS R10 R11 K19 ["IKTreeView"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R14 R0 K14 ["Src"]
  GETTABLEKS R13 R14 K17 ["Components"]
  GETTABLEKS R12 R13 K18 ["IK"]
  GETTABLEKS R11 R12 K20 ["IKModeButtons"]
  CALL R10 1 1
  GETTABLEKS R11 R1 K21 ["PureComponent"]
  LOADK R13 K22 ["IKWindow"]
  NAMECALL R11 R11 K23 ["extend"]
  CALL R11 2 1
  GETIMPORT R12 K26 [Vector2.new]
  LOADN R13 4
  LOADN R14 184
  CALL R12 2 1
  DUPCLOSURE R13 K27 [PROTO_5]
  CAPTURE VAL R8
  SETTABLEKS R13 R11 K28 ["init"]
  DUPCLOSURE R13 K29 [PROTO_6]
  SETTABLEKS R13 R11 K30 ["willUnmount"]
  DUPCLOSURE R13 K31 [PROTO_7]
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R12
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R4
  SETTABLEKS R13 R11 K32 ["render"]
  MOVE R13 R7
  DUPTABLE R14 K36 [{"Stylizer", "Localization", "Plugin"}]
  GETTABLEKS R15 R6 K33 ["Stylizer"]
  SETTABLEKS R15 R14 K33 ["Stylizer"]
  GETTABLEKS R15 R6 K34 ["Localization"]
  SETTABLEKS R15 R14 K34 ["Localization"]
  GETTABLEKS R15 R6 K35 ["Plugin"]
  SETTABLEKS R15 R14 K35 ["Plugin"]
  CALL R13 1 1
  MOVE R14 R11
  CALL R13 1 1
  MOVE R11 R13
  RETURN R11 1