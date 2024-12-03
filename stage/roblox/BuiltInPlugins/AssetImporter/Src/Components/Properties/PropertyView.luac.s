PROTO_0:
  JUMPIFNOTEQKNIL R1 [+4]
  NEWTABLE R2 0 0
  RETURN R2 1
  NEWTABLE R2 0 0
  GETIMPORT R3 K1 [ipairs]
  MOVE R4 R1
  CALL R3 1 3
  FORGPREP_INEXT R3
  GETTABLE R8 R0 R7
  SETTABLE R8 R2 R7
  FORGLOOP R3 2 [inext] [-3]
  RETURN R2 1

PROTO_1:
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETTABLE R7 R1 R5
  JUMPIFEQ R7 R6 [+3]
  LOADB R7 1
  RETURN R7 1
  FORGLOOP R2 2 [-6]
  LOADB R2 0
  RETURN R2 1

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["PropertyMetadata"]
  GETTABLEKS R1 R2 K1 ["Name"]
  JUMPIFEQ R0 R1 [+15]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["state"]
  GETTABLEKS R1 R2 K3 ["dependencies"]
  JUMPIFNOT R1 [+36]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["state"]
  GETTABLEKS R2 R3 K3 ["dependencies"]
  GETTABLE R1 R2 R0
  JUMPIFEQKNIL R1 [+29]
  GETUPVAL R1 1
  DUPTABLE R3 K5 [{"value", "dependencies"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["Instance"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["PropertyMetadata"]
  GETTABLEKS R6 R7 K1 ["Name"]
  GETTABLE R4 R5 R6
  SETTABLEKS R4 R3 K4 ["value"]
  GETUPVAL R4 2
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["Instance"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["PropertyMetadata"]
  GETTABLEKS R6 R7 K7 ["Dependencies"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K3 ["dependencies"]
  NAMECALL R1 R1 K8 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Instance"]
  JUMPIFNOT R1 [+15]
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Instance"]
  GETTABLEKS R2 R3 K2 ["Changed"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  NAMECALL R3 R2 K3 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K4 ["_changedConnection"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["_changedConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["_changedConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_changedConnection"]
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["UpdatePreviewInstance"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["Instance"]
  NAMECALL R1 R1 K3 ["GetPreview"]
  CALL R1 1 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["PropertyMetadata"]
  GETTABLEKS R2 R0 K2 ["Instance"]
  GETTABLEKS R3 R1 K3 ["Name"]
  GETTABLEKS R6 R0 K2 ["Instance"]
  GETTABLEKS R7 R1 K3 ["Name"]
  GETTABLE R5 R6 R7
  NOT R4 R5
  SETTABLE R4 R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K4 ["UpdatePreviewInstance"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K2 ["Instance"]
  NAMECALL R3 R3 K5 ["GetPreview"]
  CALL R3 1 -1
  CALL R2 -1 0
  GETTABLEKS R2 R0 K6 ["SetErrorNodeChecked"]
  GETUPVAL R3 1
  GETTABLEKS R4 R0 K7 ["ImportTree"]
  CALL R3 1 -1
  CALL R2 -1 0
  GETUPVAL R2 2
  CALL R2 0 1
  JUMPIFNOT R2 [+14]
  GETTABLEKS R2 R0 K8 ["UpdateSessionInfo"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K9 ["update"]
  GETTABLEKS R4 R0 K10 ["ActiveQueueItem"]
  DUPTABLE R5 K12 [{"settingsChanged"}]
  LOADB R6 1
  SETTABLEKS R6 R5 K11 ["settingsChanged"]
  CALL R3 2 -1
  CALL R2 -1 0
  JUMP [+4]
  GETTABLEKS R2 R0 K13 ["SetSettingsChanged"]
  LOADB R3 1
  CALL R2 1 0
  GETTABLEKS R2 R0 K14 ["OnInteract"]
  CALL R2 0 0
  GETUPVAL R2 0
  NEWTABLE R4 0 0
  NAMECALL R2 R2 K15 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["PropertyMetadata"]
  GETTABLEKS R3 R2 K2 ["Name"]
  JUMPIFNOTEQKS R3 K3 ["ImportName"] [+28]
  GETTABLEKS R4 R1 K4 ["Instance"]
  GETTABLEKS R3 R4 K3 ["ImportName"]
  JUMPIFEQ R3 R0 [+22]
  GETUPVAL R3 1
  CALL R3 0 1
  JUMPIFNOT R3 [+14]
  GETTABLEKS R3 R1 K5 ["UpdateSessionInfo"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K6 ["update"]
  GETTABLEKS R5 R1 K7 ["ActiveQueueItem"]
  DUPTABLE R6 K9 [{"settingsChanged"}]
  LOADB R7 1
  SETTABLEKS R7 R6 K8 ["settingsChanged"]
  CALL R4 2 -1
  CALL R3 -1 0
  JUMP [+4]
  GETTABLEKS R3 R1 K10 ["SetSettingsChanged"]
  LOADB R4 1
  CALL R3 1 0
  GETTABLEKS R3 R1 K4 ["Instance"]
  GETTABLEKS R4 R2 K2 ["Name"]
  SETTABLE R0 R3 R4
  GETUPVAL R3 3
  CALL R3 0 1
  JUMPIFNOT R3 [+14]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K11 ["UpdatePreviewInstance"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K4 ["Instance"]
  NAMECALL R4 R4 K12 ["GetPreview"]
  CALL R4 1 -1
  CALL R3 -1 0
  GETTABLEKS R3 R1 K13 ["SetErrorNodeChecked"]
  GETUPVAL R4 4
  GETTABLEKS R5 R1 K14 ["ImportTree"]
  CALL R4 1 -1
  CALL R3 -1 0
  GETTABLEKS R3 R1 K15 ["OnInteract"]
  CALL R3 0 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["PropertyMetadata"]
  GETTABLEKS R6 R1 K2 ["Instance"]
  GETTABLEKS R7 R2 K3 ["Name"]
  GETTABLE R5 R6 R7
  GETTABLEKS R4 R5 K4 ["EnumType"]
  GETTABLE R3 R4 R0
  GETTABLEKS R5 R1 K2 ["Instance"]
  GETTABLEKS R6 R2 K3 ["Name"]
  GETTABLE R4 R5 R6
  JUMPIFNOTEQ R3 R4 [+2]
  RETURN R0 0
  GETTABLEKS R4 R1 K2 ["Instance"]
  GETTABLEKS R5 R2 K3 ["Name"]
  SETTABLE R3 R4 R5
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K5 ["UpdatePreviewInstance"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["props"]
  GETTABLEKS R5 R6 K2 ["Instance"]
  NAMECALL R5 R5 K6 ["GetPreview"]
  CALL R5 1 -1
  CALL R4 -1 0
  GETTABLEKS R4 R1 K7 ["SetErrorNodeChecked"]
  GETUPVAL R5 1
  GETTABLEKS R6 R1 K8 ["ImportTree"]
  CALL R5 1 -1
  CALL R4 -1 0
  GETUPVAL R4 2
  CALL R4 0 1
  JUMPIFNOT R4 [+14]
  GETTABLEKS R4 R1 K9 ["UpdateSessionInfo"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K10 ["update"]
  GETTABLEKS R6 R1 K11 ["ActiveQueueItem"]
  DUPTABLE R7 K13 [{"settingsChanged"}]
  LOADB R8 1
  SETTABLEKS R8 R7 K12 ["settingsChanged"]
  CALL R5 2 -1
  CALL R4 -1 0
  JUMP [+4]
  GETTABLEKS R4 R1 K14 ["SetSettingsChanged"]
  LOADB R5 1
  CALL R4 1 0
  GETTABLEKS R4 R1 K15 ["OnInteract"]
  CALL R4 0 0
  RETURN R0 0

PROTO_9:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R2 R0 K0 ["onToggleItem"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U0
  SETTABLEKS R2 R0 K1 ["onSetItem"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R2 R0 K2 ["onSelectItem"]
  DUPTABLE R4 K5 [{"value", "dependencies"}]
  GETTABLEKS R7 R0 K6 ["props"]
  GETTABLEKS R6 R7 K7 ["Instance"]
  GETTABLEKS R9 R0 K6 ["props"]
  GETTABLEKS R8 R9 K8 ["PropertyMetadata"]
  GETTABLEKS R7 R8 K9 ["Name"]
  GETTABLE R5 R6 R7
  SETTABLEKS R5 R4 K3 ["value"]
  GETUPVAL R5 4
  GETTABLEKS R7 R0 K6 ["props"]
  GETTABLEKS R6 R7 K7 ["Instance"]
  GETTABLEKS R9 R0 K6 ["props"]
  GETTABLEKS R8 R9 K8 ["PropertyMetadata"]
  GETTABLEKS R7 R8 K10 ["Dependencies"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K4 ["dependencies"]
  NAMECALL R2 R0 K11 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_10:
  NAMECALL R1 R0 K0 ["_connect"]
  CALL R1 1 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R1 R0 K0 ["state"]
  LOADNIL R2
  SETTABLEKS R2 R1 K1 ["connections"]
  NAMECALL R1 R0 K2 ["_disconnect"]
  CALL R1 1 0
  RETURN R0 0

PROTO_12:
  GETTABLEKS R3 R1 K0 ["Instance"]
  GETTABLEKS R5 R0 K1 ["props"]
  GETTABLEKS R4 R5 K0 ["Instance"]
  JUMPIFEQ R3 R4 [+7]
  NAMECALL R3 R0 K2 ["_disconnect"]
  CALL R3 1 0
  NAMECALL R3 R0 K3 ["_connect"]
  CALL R3 1 0
  RETURN R0 0

PROTO_13:
  DUPTABLE R2 K2 [{"value", "dependencies"}]
  GETTABLEKS R4 R0 K3 ["Instance"]
  GETTABLEKS R6 R0 K4 ["PropertyMetadata"]
  GETTABLEKS R5 R6 K5 ["Name"]
  GETTABLE R3 R4 R5
  SETTABLEKS R3 R2 K0 ["value"]
  GETUPVAL R3 0
  GETTABLEKS R4 R0 K3 ["Instance"]
  GETTABLEKS R6 R0 K4 ["PropertyMetadata"]
  GETTABLEKS R5 R6 K6 ["Dependencies"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K1 ["dependencies"]
  RETURN R2 1

PROTO_14:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  GETTABLEKS R4 R1 K3 ["PropertyMetadata"]
  GETTABLEKS R5 R1 K4 ["Instance"]
  LOADNIL R6
  LOADNIL R7
  LOADNIL R8
  GETTABLEKS R9 R1 K5 ["Status"]
  JUMPIFNOT R9 [+12]
  GETTABLEKS R9 R1 K5 ["Status"]
  GETTABLEKS R6 R9 K6 ["Level"]
  GETTABLEKS R9 R1 K5 ["Status"]
  GETTABLEKS R7 R9 K7 ["Type"]
  GETTABLEKS R9 R1 K5 ["Status"]
  GETTABLEKS R8 R9 K8 ["Context"]
  GETTABLEKS R9 R4 K9 ["Editable"]
  GETTABLEKS R10 R4 K10 ["Name"]
  GETTABLEKS R11 R4 K11 ["AllowPickFile"]
  GETTABLE R12 R5 R10
  LOADNIL R13
  GETTABLEKS R14 R4 K12 ["Dependencies"]
  JUMPIFNOT R14 [+6]
  GETUPVAL R14 0
  MOVE R15 R5
  GETTABLEKS R16 R4 K12 ["Dependencies"]
  CALL R14 2 1
  MOVE R13 R14
  LOADNIL R14
  GETTABLEKS R15 R4 K13 ["ComponentFactory"]
  JUMPIFNOT R15 [+3]
  GETTABLEKS R14 R4 K13 ["ComponentFactory"]
  JUMP [+4]
  GETUPVAL R15 1
  MOVE R16 R12
  CALL R15 1 1
  MOVE R14 R15
  GETTABLEKS R16 R3 K14 ["PropertyView"]
  GETTABLEKS R15 R16 K15 ["IconSize"]
  GETTABLEKS R17 R3 K14 ["PropertyView"]
  GETTABLEKS R16 R17 K16 ["Spacing"]
  ADD R17 R15 R16
  NEWTABLE R18 1 0
  GETUPVAL R19 2
  CALL R19 0 1
  JUMPIF R19 [+13]
  GETTABLEKS R19 R4 K17 ["Callouts"]
  JUMPIFNOT R19 [+10]
  GETUPVAL R19 3
  GETTABLEKS R20 R4 K17 ["Callouts"]
  MOVE R21 R10
  GETTABLEKS R23 R0 K0 ["props"]
  GETTABLEKS R22 R23 K18 ["AssetImportSession"]
  CALL R19 3 1
  MOVE R18 R19
  GETUPVAL R20 4
  GETTABLEKS R19 R20 K19 ["createElement"]
  GETUPVAL R20 5
  DUPTABLE R21 K21 [{"Text"}]
  LOADK R24 K22 ["PropertiesTooltip"]
  MOVE R25 R10
  NAMECALL R22 R2 K23 ["getText"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K20 ["Text"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K24 ["Tooltip"]
  GETUPVAL R20 4
  GETTABLEKS R19 R20 K19 ["createElement"]
  GETUPVAL R20 6
  DUPTABLE R21 K29 [{"LayoutOrder", "Size", "Layout", "HorizontalAlignment", "Spacing"}]
  GETTABLEKS R22 R1 K25 ["LayoutOrder"]
  SETTABLEKS R22 R21 K25 ["LayoutOrder"]
  GETIMPORT R22 K32 [UDim2.new]
  LOADN R23 1
  GETTABLEKS R26 R3 K14 ["PropertyView"]
  GETTABLEKS R25 R26 K33 ["ScrollBarOffset"]
  MINUS R24 R25
  LOADN R25 0
  GETTABLEKS R27 R3 K14 ["PropertyView"]
  GETTABLEKS R26 R27 K34 ["Height"]
  CALL R22 4 1
  SETTABLEKS R22 R21 K26 ["Size"]
  GETIMPORT R22 K38 [Enum.FillDirection.Horizontal]
  SETTABLEKS R22 R21 K27 ["Layout"]
  GETIMPORT R22 K40 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R22 R21 K28 ["HorizontalAlignment"]
  SETTABLEKS R16 R21 K16 ["Spacing"]
  DUPTABLE R22 K44 [{"StatusArea", "Label", "Editor"}]
  GETUPVAL R24 4
  GETTABLEKS R23 R24 K19 ["createElement"]
  GETUPVAL R24 6
  DUPTABLE R25 K46 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Padding"}]
  GETIMPORT R26 K40 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R26 R25 K28 ["HorizontalAlignment"]
  GETIMPORT R26 K38 [Enum.FillDirection.Horizontal]
  SETTABLEKS R26 R25 K27 ["Layout"]
  LOADN R26 3
  SETTABLEKS R26 R25 K25 ["LayoutOrder"]
  GETIMPORT R26 K32 [UDim2.new]
  LOADN R27 0
  MOVE R28 R17
  LOADN R29 1
  LOADN R30 0
  CALL R26 4 1
  SETTABLEKS R26 R25 K26 ["Size"]
  DUPTABLE R26 K47 [{"Left"}]
  SETTABLEKS R16 R26 K39 ["Left"]
  SETTABLEKS R26 R25 K45 ["Padding"]
  DUPTABLE R26 K49 [{"Icon"}]
  JUMPIFNOT R6 [+13]
  GETUPVAL R28 4
  GETTABLEKS R27 R28 K19 ["createElement"]
  GETUPVAL R28 7
  DUPTABLE R29 K53 [{"StatusLevel", "StatusMessage", "StatusContext"}]
  SETTABLEKS R6 R29 K50 ["StatusLevel"]
  SETTABLEKS R7 R29 K51 ["StatusMessage"]
  SETTABLEKS R8 R29 K52 ["StatusContext"]
  CALL R27 2 1
  JUMP [+1]
  LOADNIL R27
  SETTABLEKS R27 R26 K48 ["Icon"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K41 ["StatusArea"]
  GETUPVAL R24 4
  GETTABLEKS R23 R24 K19 ["createElement"]
  GETUPVAL R24 8
  DUPTABLE R25 K57 [{"AutomaticSize", "Text", "TextWrapped", "TextXAlignment", "LayoutOrder", "Size"}]
  GETIMPORT R26 K59 [Enum.AutomaticSize.Y]
  SETTABLEKS R26 R25 K54 ["AutomaticSize"]
  LOADK R28 K60 ["Properties"]
  MOVE R29 R10
  NAMECALL R26 R2 K23 ["getText"]
  CALL R26 3 1
  SETTABLEKS R26 R25 K20 ["Text"]
  LOADB R26 0
  SETTABLEKS R26 R25 K55 ["TextWrapped"]
  GETIMPORT R26 K61 [Enum.TextXAlignment.Left]
  SETTABLEKS R26 R25 K56 ["TextXAlignment"]
  LOADN R26 1
  SETTABLEKS R26 R25 K25 ["LayoutOrder"]
  GETIMPORT R26 K32 [UDim2.new]
  LOADK R27 K62 [0.5]
  MINUS R28 R17
  LOADN R29 0
  LOADN R30 0
  CALL R26 4 1
  SETTABLEKS R26 R25 K26 ["Size"]
  MOVE R26 R18
  CALL R23 3 1
  SETTABLEKS R23 R22 K42 ["Label"]
  GETUPVAL R24 4
  GETTABLEKS R23 R24 K19 ["createElement"]
  MOVE R24 R14
  DUPTABLE R25 K68 [{"DependentValues", "Editable", "LayoutOrder", "Name", "OnSelectItem", "OnSetItem", "OnToggleItem", "Size", "Value", "Localization", "PropertyMetadata", "AllowPickFile", "Instance", "AssetImportSession"}]
  SETTABLEKS R13 R25 K63 ["DependentValues"]
  SETTABLEKS R9 R25 K9 ["Editable"]
  LOADN R26 2
  SETTABLEKS R26 R25 K25 ["LayoutOrder"]
  SETTABLEKS R10 R25 K10 ["Name"]
  GETTABLEKS R26 R0 K69 ["onSelectItem"]
  SETTABLEKS R26 R25 K64 ["OnSelectItem"]
  GETTABLEKS R26 R0 K70 ["onSetItem"]
  SETTABLEKS R26 R25 K65 ["OnSetItem"]
  GETTABLEKS R26 R0 K71 ["onToggleItem"]
  SETTABLEKS R26 R25 K66 ["OnToggleItem"]
  GETIMPORT R26 K32 [UDim2.new]
  LOADK R27 K62 [0.5]
  GETTABLEKS R30 R3 K14 ["PropertyView"]
  GETTABLEKS R29 R30 K33 ["ScrollBarOffset"]
  MINUS R28 R29
  LOADN R29 0
  GETTABLEKS R31 R3 K14 ["PropertyView"]
  GETTABLEKS R30 R31 K72 ["EditorHeight"]
  CALL R26 4 1
  SETTABLEKS R26 R25 K26 ["Size"]
  SETTABLEKS R12 R25 K67 ["Value"]
  SETTABLEKS R2 R25 K1 ["Localization"]
  SETTABLEKS R4 R25 K3 ["PropertyMetadata"]
  SETTABLEKS R11 R25 K11 ["AllowPickFile"]
  SETTABLEKS R5 R25 K4 ["Instance"]
  GETTABLEKS R27 R0 K0 ["props"]
  GETTABLEKS R26 R27 K18 ["AssetImportSession"]
  SETTABLEKS R26 R25 K18 ["AssetImportSession"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K43 ["Editor"]
  CALL R19 3 -1
  RETURN R19 -1

PROTO_15:
  GETTABLEKS R3 R0 K0 ["state"]
  GETTABLEKS R4 R3 K1 ["value"]
  GETTABLEKS R5 R2 K1 ["value"]
  JUMPIFEQ R4 R5 [+3]
  LOADB R4 1
  RETURN R4 1
  GETTABLEKS R5 R3 K2 ["dependencies"]
  GETTABLEKS R6 R2 K2 ["dependencies"]
  MOVE R7 R5
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  GETTABLE R12 R6 R10
  JUMPIFEQ R12 R11 [+3]
  LOADB R4 1
  JUMP [+3]
  FORGLOOP R7 2 [-6]
  LOADB R4 0
  JUMPIFNOT R4 [+2]
  LOADB R4 1
  RETURN R4 1
  GETUPVAL R5 0
  GETTABLEKS R6 R0 K3 ["props"]
  MOVE R7 R1
  CALL R5 2 1
  NOT R4 R5
  RETURN R4 1

PROTO_16:
  DUPTABLE R1 K3 [{"AssetImportSession", "ImportTree", "ActiveQueueItem"}]
  GETTABLEKS R3 R0 K4 ["Preview"]
  GETTABLEKS R2 R3 K5 ["assetImportSession"]
  SETTABLEKS R2 R1 K0 ["AssetImportSession"]
  GETTABLEKS R3 R0 K4 ["Preview"]
  GETTABLEKS R2 R3 K6 ["importTree"]
  SETTABLEKS R2 R1 K1 ["ImportTree"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+5]
  GETTABLEKS R3 R0 K4 ["Preview"]
  GETTABLEKS R2 R3 K7 ["activeQueueItem"]
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K2 ["ActiveQueueItem"]
  RETURN R1 1

PROTO_17:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_21:
  DUPTABLE R1 K4 [{"SetSettingsChanged", "UpdatePreviewInstance", "SetErrorNodeChecked", "UpdateSessionInfo"}]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIF R3 [+4]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K0 ["SetSettingsChanged"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K1 ["UpdatePreviewInstance"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K2 ["SetErrorNodeChecked"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R2 R1 K3 ["UpdateSessionInfo"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Dash"]
  CALL R4 1 1
  GETTABLEKS R5 R3 K11 ["ContextServices"]
  GETTABLEKS R6 R5 K12 ["withContext"]
  GETTABLEKS R7 R5 K13 ["Localization"]
  GETTABLEKS R8 R5 K14 ["Stylizer"]
  GETTABLEKS R9 R3 K15 ["UI"]
  GETTABLEKS R10 R9 K16 ["Pane"]
  GETTABLEKS R11 R9 K17 ["TextLabel"]
  GETTABLEKS R12 R9 K18 ["Tooltip"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R17 R0 K19 ["Src"]
  GETTABLEKS R16 R17 K20 ["Components"]
  GETTABLEKS R15 R16 K21 ["Properties"]
  GETTABLEKS R14 R15 K22 ["PropertyStatus"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K19 ["Src"]
  GETTABLEKS R16 R17 K23 ["Thunks"]
  GETTABLEKS R15 R16 K24 ["UpdatePreviewInstance"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K19 ["Src"]
  GETTABLEKS R17 R18 K23 ["Thunks"]
  GETTABLEKS R16 R17 K25 ["UpdateSessionInfo"]
  CALL R15 1 1
  GETTABLEKS R16 R4 K26 ["shallowEqual"]
  GETTABLEKS R18 R0 K19 ["Src"]
  GETTABLEKS R17 R18 K27 ["Utility"]
  GETIMPORT R18 K5 [require]
  GETTABLEKS R19 R17 K28 ["createCalloutComponents"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R20 R17 K29 ["GetEditorFromType"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R21 R17 K30 ["GetErrorChecked"]
  CALL R20 1 1
  GETIMPORT R21 K5 [require]
  GETTABLEKS R24 R0 K19 ["Src"]
  GETTABLEKS R23 R24 K31 ["Actions"]
  GETTABLEKS R22 R23 K32 ["SetErrorNodeChecked"]
  CALL R21 1 1
  GETIMPORT R22 K5 [require]
  GETTABLEKS R25 R0 K19 ["Src"]
  GETTABLEKS R24 R25 K31 ["Actions"]
  GETTABLEKS R23 R24 K33 ["SetSettingsChanged"]
  CALL R22 1 1
  GETIMPORT R23 K5 [require]
  GETTABLEKS R26 R0 K19 ["Src"]
  GETTABLEKS R25 R26 K34 ["DataTypes"]
  GETTABLEKS R24 R25 K35 ["QueuedSession"]
  CALL R23 1 1
  GETIMPORT R24 K5 [require]
  GETTABLEKS R27 R0 K19 ["Src"]
  GETTABLEKS R26 R27 K36 ["Flags"]
  GETTABLEKS R25 R26 K37 ["getFFlagChooseAnimationForRestPose"]
  CALL R24 1 1
  GETIMPORT R25 K5 [require]
  GETTABLEKS R28 R0 K19 ["Src"]
  GETTABLEKS R27 R28 K36 ["Flags"]
  GETTABLEKS R26 R27 K38 ["getFFlagUnlinkImporterAndAvatarPreview"]
  CALL R25 1 1
  GETIMPORT R26 K5 [require]
  GETTABLEKS R29 R0 K19 ["Src"]
  GETTABLEKS R28 R29 K36 ["Flags"]
  GETTABLEKS R27 R28 K39 ["getFFlagAssetImportUploadWidgetCleanup"]
  CALL R26 1 1
  GETTABLEKS R27 R1 K40 ["PureComponent"]
  LOADK R29 K41 ["PropertyView"]
  NAMECALL R27 R27 K42 ["extend"]
  CALL R27 2 1
  DUPCLOSURE R28 K43 [PROTO_0]
  DUPCLOSURE R29 K44 [PROTO_1]
  DUPCLOSURE R30 K45 [PROTO_3]
  CAPTURE VAL R28
  SETTABLEKS R30 R27 K46 ["_connect"]
  DUPCLOSURE R30 K47 [PROTO_4]
  SETTABLEKS R30 R27 K48 ["_disconnect"]
  DUPCLOSURE R30 K49 [PROTO_9]
  CAPTURE VAL R20
  CAPTURE VAL R26
  CAPTURE VAL R23
  CAPTURE VAL R24
  CAPTURE VAL R28
  SETTABLEKS R30 R27 K50 ["init"]
  DUPCLOSURE R30 K51 [PROTO_10]
  SETTABLEKS R30 R27 K52 ["didMount"]
  DUPCLOSURE R30 K53 [PROTO_11]
  SETTABLEKS R30 R27 K54 ["willUnmount"]
  DUPCLOSURE R30 K55 [PROTO_12]
  SETTABLEKS R30 R27 K56 ["didUpdate"]
  DUPCLOSURE R30 K57 [PROTO_13]
  CAPTURE VAL R28
  SETTABLEKS R30 R27 K58 ["getDerivedStateFromProps"]
  DUPCLOSURE R30 K59 [PROTO_14]
  CAPTURE VAL R28
  CAPTURE VAL R19
  CAPTURE VAL R25
  CAPTURE VAL R18
  CAPTURE VAL R1
  CAPTURE VAL R12
  CAPTURE VAL R10
  CAPTURE VAL R13
  CAPTURE VAL R11
  SETTABLEKS R30 R27 K60 ["render"]
  DUPCLOSURE R30 K61 [PROTO_15]
  CAPTURE VAL R16
  SETTABLEKS R30 R27 K62 ["shouldUpdate"]
  MOVE R30 R6
  DUPTABLE R31 K63 [{"Localization", "Stylizer"}]
  SETTABLEKS R7 R31 K13 ["Localization"]
  SETTABLEKS R8 R31 K14 ["Stylizer"]
  CALL R30 1 1
  MOVE R31 R27
  CALL R30 1 1
  MOVE R27 R30
  DUPCLOSURE R30 K64 [PROTO_16]
  CAPTURE VAL R26
  DUPCLOSURE R31 K65 [PROTO_21]
  CAPTURE VAL R26
  CAPTURE VAL R22
  CAPTURE VAL R14
  CAPTURE VAL R21
  CAPTURE VAL R15
  GETTABLEKS R32 R2 K66 ["connect"]
  MOVE R33 R30
  MOVE R34 R31
  CALL R32 2 1
  MOVE R33 R27
  CALL R32 1 -1
  RETURN R32 -1