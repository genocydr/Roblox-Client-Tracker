PROTO_0:
  JUMPIFNOT R1 [+24]
  LOADB R3 0
  SETTABLEKS R3 R1 K0 ["Enabled"]
  GETTABLEKS R4 R0 K1 ["Actions"]
  FASTCALL2 TABLE_INSERT R4 R1 [+4]
  MOVE R5 R1
  GETIMPORT R3 K4 [table.insert]
  CALL R3 2 0
  GETTABLEKS R4 R0 K5 ["Connections"]
  GETTABLEKS R5 R1 K6 ["Triggered"]
  MOVE R7 R2
  NAMECALL R5 R5 K7 ["Connect"]
  CALL R5 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K4 [table.insert]
  CALL R3 -1 0
  RETURN R1 1
  LOADNIL R3
  RETURN R3 1

PROTO_1:
  JUMPIFNOT R1 [+10]
  GETIMPORT R2 K1 [ipairs]
  MOVE R3 R1
  CALL R2 1 3
  FORGPREP_INEXT R2
  LOADB R7 1
  SETTABLEKS R7 R6 K2 ["Enabled"]
  FORGLOOP R2 2 [inext] [-4]
  RETURN R0 0

PROTO_2:
  JUMPIFNOT R1 [+10]
  GETIMPORT R2 K1 [ipairs]
  MOVE R3 R1
  CALL R2 1 3
  FORGPREP_INEXT R2
  LOADB R7 0
  SETTABLEKS R7 R6 K2 ["Enabled"]
  FORGLOOP R2 2 [inext] [-4]
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["Path2DToolMode"]
  JUMPIFNOTEQKS R0 K2 ["AddTangent"] [+32]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K3 ["SelectedControlPointIndex"]
  JUMPIFEQKN R0 K4 [0] [+31]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K5 ["SelectedTangentSide"]
  JUMPIFEQKNIL R0 [+24]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K6 ["dispatchClearControlPointTangent"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K3 ["SelectedControlPointIndex"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K5 ["SelectedTangentSide"]
  CALL R0 2 0
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K7 ["dispatchRemoveControlPoint"]
  CALL R0 0 0
  RETURN R0 0

PROTO_4:
  JUMPIFEQKS R0 K0 ["AbsolutePosition"] [+3]
  JUMPIFNOTEQKS R0 K1 ["AbsoluteSize"] [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["dispatchPathChanged"]
  LOADK R2 K3 ["Position"]
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+4]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["LogUsageReport"]
  CALL R0 0 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["dispatchSelectPathCleared"]
  CALL R0 0 0
  GETUPVAL R0 2
  JUMPIFNOT R0 [+8]
  GETUPVAL R0 3
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K2 ["Actions"]
  NAMECALL R0 R0 K3 ["disableActions"]
  CALL R0 2 0
  JUMP [+4]
  GETUPVAL R0 3
  NAMECALL R0 R0 K3 ["disableActions"]
  CALL R0 1 0
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K4 ["state"]
  GETTABLEKS R0 R1 K5 ["selectedObjectChangedConn"]
  JUMPIFEQKNIL R0 [+9]
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K4 ["state"]
  GETTABLEKS R0 R1 K5 ["selectedObjectChangedConn"]
  NAMECALL R0 R0 K6 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K4 ["state"]
  GETTABLEKS R0 R1 K7 ["selectedObjectParentChangedConn"]
  JUMPIFEQKNIL R0 [+9]
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K4 ["state"]
  GETTABLEKS R0 R1 K7 ["selectedObjectParentChangedConn"]
  NAMECALL R0 R0 K6 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 3
  LOADNIL R1
  SETTABLEKS R1 R0 K8 ["selectedObject"]
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["selectedObject"]
  JUMPIFNOTEQKNIL R1 [+2]
  RETURN R0 0
  JUMPIFEQKS R0 K1 ["Parent"] [+7]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["dispatchPathChanged"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["state"]
  GETTABLEKS R1 R2 K4 ["selectedObjectParentChangedConn"]
  JUMPIFEQKNIL R1 [+9]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["state"]
  GETTABLEKS R1 R2 K4 ["selectedObjectParentChangedConn"]
  NAMECALL R1 R1 K5 ["Disconnect"]
  CALL R1 1 0
  GETUPVAL R1 0
  DUPTABLE R3 K6 [{"selectedObjectParentChangedConn"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["selectedObject"]
  GETTABLEKS R5 R6 K1 ["Parent"]
  GETTABLEKS R4 R5 K7 ["Changed"]
  GETUPVAL R6 2
  NAMECALL R4 R4 K8 ["Connect"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K4 ["selectedObjectParentChangedConn"]
  NAMECALL R1 R1 K9 ["setState"]
  CALL R1 2 0
  GETIMPORT R2 K11 [game]
  LOADK R4 K12 ["PathEditorSurfaceGui"]
  NAMECALL R2 R2 K13 ["GetFastFlag"]
  CALL R2 2 1
  JUMPIFNOT R2 [+6]
  GETUPVAL R1 3
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["selectedObject"]
  CALL R1 1 1
  JUMP [+9]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["selectedObject"]
  GETTABLEKS R1 R2 K1 ["Parent"]
  LOADK R3 K14 ["GuiBase2d"]
  NAMECALL R1 R1 K15 ["IsA"]
  CALL R1 2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K16 ["props"]
  GETTABLEKS R2 R3 K17 ["SelectedObject"]
  JUMPIFEQKNIL R2 [+11]
  JUMPIF R1 [+9]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K18 ["dispatchSelectPathCleared"]
  CALL R2 0 0
  GETUPVAL R2 0
  NAMECALL R2 R2 K19 ["disableActions"]
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K16 ["props"]
  GETTABLEKS R2 R3 K17 ["SelectedObject"]
  JUMPIFNOTEQKNIL R2 [+17]
  JUMPIFNOT R1 [+15]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K20 ["dispatchSelectPath"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["selectedObject"]
  CALL R2 1 0
  GETUPVAL R2 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K21 ["UniversalActions"]
  NAMECALL R2 R2 K22 ["enableActions"]
  CALL R2 2 0
  RETURN R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["dispatchPathChanged"]
  MOVE R3 R0
  CALL R2 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Get"]
  CALL R0 1 1
  LENGTH R1 R0
  JUMPIFNOTEQKN R1 K1 [1] [+72]
  GETIMPORT R1 K3 [pairs]
  MOVE R2 R0
  CALL R1 1 3
  FORGPREP_NEXT R1
  LOADK R8 K4 ["Path2D"]
  NAMECALL R6 R5 K5 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+56]
  GETTABLEKS R6 R5 K6 ["Parent"]
  JUMPIFEQKNIL R6 [+53]
  GETUPVAL R7 1
  JUMPIFNOT R7 [+4]
  GETUPVAL R6 2
  MOVE R7 R5
  CALL R6 1 1
  JUMP [+6]
  GETTABLEKS R6 R5 K6 ["Parent"]
  LOADK R8 K7 ["GuiBase2d"]
  NAMECALL R6 R6 K5 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+12]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K8 ["dispatchSelectPath"]
  MOVE R8 R5
  CALL R7 1 0
  GETUPVAL R7 4
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K9 ["UniversalActions"]
  NAMECALL R7 R7 K10 ["enableActions"]
  CALL R7 2 0
  GETUPVAL R7 4
  SETTABLEKS R5 R7 K11 ["selectedObject"]
  GETUPVAL R7 4
  DUPTABLE R9 K14 [{"selectedObjectChangedConn", "selectedObjectParentChangedConn"}]
  GETTABLEKS R10 R5 K15 ["Changed"]
  GETUPVAL R12 5
  NAMECALL R10 R10 K16 ["Connect"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K12 ["selectedObjectChangedConn"]
  GETTABLEKS R11 R5 K6 ["Parent"]
  GETTABLEKS R10 R11 K15 ["Changed"]
  GETUPVAL R12 6
  NAMECALL R10 R10 K16 ["Connect"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K13 ["selectedObjectParentChangedConn"]
  NAMECALL R7 R7 K17 ["setState"]
  CALL R7 2 0
  JUMP [+2]
  GETUPVAL R6 7
  CALL R6 0 0
  FORGLOOP R1 2 [-64]
  RETURN R0 0
  GETUPVAL R1 7
  CALL R1 0 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R1 R0 K0 ["props"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K1 ["delete"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R1
  NEWCLOSURE R3 P2
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  NEWCLOSURE R4 P3
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE UPVAL U2
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K2 ["SelectionChanged"]
  NEWCLOSURE R7 P4
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R3
  NAMECALL R5 R5 K3 ["Connect"]
  CALL R5 2 1
  DUPTABLE R8 K5 [{"selectionChangedConn"}]
  SETTABLEKS R5 R8 K4 ["selectionChangedConn"]
  NAMECALL R6 R0 K6 ["setState"]
  CALL R6 2 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["PluginActions"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R0 K2 ["Connections"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R0 K3 ["Actions"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R0 K4 ["EditingActions"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R0 K5 ["UniversalActions"]
  GETTABLEKS R3 R0 K4 ["EditingActions"]
  LOADK R8 K6 ["DoneEditing"]
  NAMECALL R6 R1 K7 ["get"]
  CALL R6 2 1
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K8 ["dispatchToggleDone"]
  NAMECALL R4 R0 K9 ["addAction"]
  CALL R4 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R2 K12 [table.insert]
  CALL R2 -1 0
  GETTABLEKS R3 R0 K5 ["UniversalActions"]
  LOADK R8 K13 ["MoveTool"]
  NAMECALL R6 R1 K7 ["get"]
  CALL R6 2 1
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K14 ["dispatchToggleMoveTool"]
  NAMECALL R4 R0 K9 ["addAction"]
  CALL R4 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R2 K12 [table.insert]
  CALL R2 -1 0
  GETTABLEKS R3 R0 K5 ["UniversalActions"]
  LOADK R8 K15 ["AddPointMode"]
  NAMECALL R6 R1 K7 ["get"]
  CALL R6 2 1
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K16 ["dispatchToggleAddPointTool"]
  NAMECALL R4 R0 K9 ["addAction"]
  CALL R4 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R2 K12 [table.insert]
  CALL R2 -1 0
  GETTABLEKS R3 R0 K5 ["UniversalActions"]
  LOADK R8 K17 ["AddTangentMode"]
  NAMECALL R6 R1 K7 ["get"]
  CALL R6 2 1
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K18 ["dispatchToggleAddTangentTool"]
  NAMECALL R4 R0 K9 ["addAction"]
  CALL R4 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R2 K12 [table.insert]
  CALL R2 -1 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R2 R0 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["selectionChangedConn"]
  JUMPIFEQKNIL R1 [+8]
  GETTABLEKS R2 R0 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["selectionChangedConn"]
  NAMECALL R1 R1 K2 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K0 ["state"]
  GETTABLEKS R1 R2 K3 ["selectedObjectChangedConn"]
  JUMPIFEQKNIL R1 [+8]
  GETTABLEKS R2 R0 K0 ["state"]
  GETTABLEKS R1 R2 K3 ["selectedObjectChangedConn"]
  NAMECALL R1 R1 K2 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K0 ["state"]
  GETTABLEKS R1 R2 K4 ["selectedObjectParentChangedConn"]
  JUMPIFEQKNIL R1 [+8]
  GETTABLEKS R2 R0 K0 ["state"]
  GETTABLEKS R1 R2 K4 ["selectedObjectParentChangedConn"]
  NAMECALL R1 R1 K2 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K5 ["Connections"]
  JUMPIFNOT R1 [+15]
  GETIMPORT R1 K7 [ipairs]
  GETTABLEKS R2 R0 K5 ["Connections"]
  CALL R1 1 3
  FORGPREP_INEXT R1
  NAMECALL R6 R5 K2 ["Disconnect"]
  CALL R6 1 0
  FORGLOOP R1 2 [inext] [-4]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K5 ["Connections"]
  GETTABLEKS R1 R0 K8 ["Actions"]
  JUMPIFNOT R1 [+11]
  GETIMPORT R1 K7 [ipairs]
  GETTABLEKS R2 R0 K8 ["Actions"]
  CALL R1 1 3
  FORGPREP_INEXT R1
  LOADB R6 0
  SETTABLEKS R6 R5 K9 ["Enabled"]
  FORGLOOP R1 2 [inext] [-4]
  RETURN R0 0

PROTO_11:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["lastToolingMode"]
  GETTABLEKS R3 R1 K2 ["Path2DToolMode"]
  JUMPIFEQ R2 R3 [+20]
  GETTABLEKS R2 R1 K2 ["Path2DToolMode"]
  SETTABLEKS R2 R0 K1 ["lastToolingMode"]
  GETTABLEKS R2 R0 K1 ["lastToolingMode"]
  JUMPIFNOTEQKS R2 K3 ["DoneEditing"] [+7]
  GETTABLEKS R4 R0 K4 ["EditingActions"]
  NAMECALL R2 R0 K5 ["disableActions"]
  CALL R2 2 0
  JUMP [+5]
  GETTABLEKS R4 R0 K4 ["EditingActions"]
  NAMECALL R2 R0 K6 ["enableActions"]
  CALL R2 2 0
  LOADNIL R2
  RETURN R2 1

PROTO_12:
  DUPTABLE R2 K4 [{"SelectedObject", "SelectedControlPointIndex", "SelectedTangentSide", "Path2DToolMode"}]
  GETTABLEKS R4 R0 K5 ["PathReducer"]
  GETTABLEKS R3 R4 K0 ["SelectedObject"]
  SETTABLEKS R3 R2 K0 ["SelectedObject"]
  GETTABLEKS R4 R0 K5 ["PathReducer"]
  GETTABLEKS R3 R4 K1 ["SelectedControlPointIndex"]
  SETTABLEKS R3 R2 K1 ["SelectedControlPointIndex"]
  GETTABLEKS R4 R0 K5 ["PathReducer"]
  GETTABLEKS R3 R4 K2 ["SelectedTangentSide"]
  SETTABLEKS R3 R2 K2 ["SelectedTangentSide"]
  GETTABLEKS R4 R0 K5 ["PathReducer"]
  GETTABLEKS R3 R4 K3 ["Path2DToolMode"]
  SETTABLEKS R3 R2 K3 ["Path2DToolMode"]
  RETURN R2 1

PROTO_13:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R0 0
  GETTABLEKS R1 R0 K0 ["addPointModeCount"]
  ADDK R1 R1 K1 [1]
  SETTABLEKS R1 R0 K0 ["addPointModeCount"]
  GETUPVAL R0 1
  GETUPVAL R1 2
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R0 0
  GETTABLEKS R1 R0 K0 ["addTangentModeCount"]
  ADDK R1 R1 K1 [1]
  SETTABLEKS R1 R0 K0 ["addTangentModeCount"]
  GETUPVAL R0 1
  GETUPVAL R1 2
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R0 0
  GETTABLEKS R1 R0 K0 ["selectModeCount"]
  ADDK R1 R1 K1 [1]
  SETTABLEKS R1 R0 K0 ["selectModeCount"]
  GETUPVAL R0 1
  GETUPVAL R1 2
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

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
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_21:
  DUPTABLE R1 K8 [{"dispatchToggleDone", "dispatchToggleAddPointTool", "dispatchToggleAddTangentTool", "dispatchToggleMoveTool", "dispatchPathChanged", "dispatchSelectPath", "dispatchSelectPathCleared", "dispatchRemoveControlPoint"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["dispatchToggleDone"]
  NEWCLOSURE R2 P1
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K1 ["dispatchToggleAddPointTool"]
  NEWCLOSURE R2 P2
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K2 ["dispatchToggleAddTangentTool"]
  NEWCLOSURE R2 P3
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R2 R1 K3 ["dispatchToggleMoveTool"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  SETTABLEKS R2 R1 K4 ["dispatchPathChanged"]
  NEWCLOSURE R2 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  SETTABLEKS R2 R1 K5 ["dispatchSelectPath"]
  NEWCLOSURE R2 P6
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  SETTABLEKS R2 R1 K6 ["dispatchSelectPathCleared"]
  NEWCLOSURE R2 P7
  CAPTURE VAL R0
  CAPTURE UPVAL U8
  SETTABLEKS R2 R1 K7 ["dispatchRemoveControlPoint"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K7 ["Packages"]
  GETTABLEKS R4 R5 K9 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K7 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Framework"]
  CALL R4 1 1
  GETIMPORT R5 K12 [game]
  LOADK R7 K13 ["Selection"]
  NAMECALL R5 R5 K14 ["GetService"]
  CALL R5 2 1
  GETTABLEKS R6 R4 K15 ["ContextServices"]
  GETTABLEKS R7 R6 K16 ["withContext"]
  GETTABLEKS R9 R0 K5 ["Src"]
  GETTABLEKS R8 R9 K17 ["Actions"]
  GETIMPORT R9 K4 [require]
  GETTABLEKS R10 R8 K18 ["SelectPath"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R11 R8 K19 ["ClearPathSelection"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R12 R8 K20 ["PathChanged"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R13 R8 K21 ["ToggleAddPointTool"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R14 R8 K22 ["ToggleMoveTool"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R15 R8 K23 ["ToggleAddTangentTool"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R16 R8 K24 ["ToggleDone"]
  CALL R15 1 1
  GETTABLEKS R17 R0 K5 ["Src"]
  GETTABLEKS R16 R17 K25 ["Thunks"]
  GETIMPORT R17 K4 [require]
  GETTABLEKS R18 R16 K26 ["RemoveControlPoint"]
  CALL R17 1 1
  GETTABLEKS R19 R0 K5 ["Src"]
  GETTABLEKS R18 R19 K27 ["Util"]
  GETIMPORT R19 K4 [require]
  GETTABLEKS R20 R18 K28 ["TelemetryGlobals"]
  CALL R19 1 1
  GETIMPORT R20 K4 [require]
  GETTABLEKS R21 R18 K29 ["isHierarchyValidForPath2D"]
  CALL R20 1 1
  GETIMPORT R21 K12 [game]
  LOADK R23 K30 ["PathEditorFixActionBindings"]
  LOADB R24 0
  NAMECALL R21 R21 K31 ["DefineFastFlag"]
  CALL R21 3 1
  GETIMPORT R22 K12 [game]
  LOADK R24 K32 ["PathEditorHierarchyValidCheckFixes"]
  NAMECALL R22 R22 K33 ["GetFastFlag"]
  CALL R22 2 1
  GETIMPORT R23 K12 [game]
  LOADK R25 K34 ["PathEditorRBXTelemetryFixes"]
  NAMECALL R23 R23 K33 ["GetFastFlag"]
  CALL R23 2 1
  GETTABLEKS R24 R2 K35 ["PureComponent"]
  LOADK R26 K36 ["SelectionListener"]
  NAMECALL R24 R24 K37 ["extend"]
  CALL R24 2 1
  DUPCLOSURE R25 K38 [PROTO_0]
  SETTABLEKS R25 R24 K39 ["addAction"]
  DUPCLOSURE R25 K40 [PROTO_1]
  SETTABLEKS R25 R24 K41 ["enableActions"]
  DUPCLOSURE R25 K42 [PROTO_2]
  SETTABLEKS R25 R24 K43 ["disableActions"]
  DUPCLOSURE R25 K44 [PROTO_8]
  CAPTURE VAL R23
  CAPTURE VAL R21
  CAPTURE VAL R20
  CAPTURE VAL R5
  CAPTURE VAL R22
  SETTABLEKS R25 R24 K45 ["init"]
  DUPCLOSURE R25 K46 [PROTO_9]
  SETTABLEKS R25 R24 K47 ["didMount"]
  DUPCLOSURE R25 K48 [PROTO_10]
  SETTABLEKS R25 R24 K49 ["willUnmount"]
  DUPCLOSURE R25 K50 [PROTO_11]
  SETTABLEKS R25 R24 K51 ["render"]
  MOVE R25 R7
  DUPTABLE R26 K54 [{"PluginActions", "Mouse"}]
  GETTABLEKS R27 R6 K52 ["PluginActions"]
  SETTABLEKS R27 R26 K52 ["PluginActions"]
  GETTABLEKS R27 R6 K53 ["Mouse"]
  SETTABLEKS R27 R26 K53 ["Mouse"]
  CALL R25 1 1
  MOVE R26 R24
  CALL R25 1 1
  MOVE R24 R25
  GETTABLEKS R25 R3 K55 ["connect"]
  DUPCLOSURE R26 K56 [PROTO_12]
  DUPCLOSURE R27 K57 [PROTO_21]
  CAPTURE VAL R15
  CAPTURE VAL R19
  CAPTURE VAL R12
  CAPTURE VAL R14
  CAPTURE VAL R13
  CAPTURE VAL R11
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R17
  CALL R25 2 1
  MOVE R26 R24
  CALL R25 1 -1
  RETURN R25 -1