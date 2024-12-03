PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["form"]
  MOVE R2 R0
  CALL R1 1 1
  NEWTABLE R2 0 0
  MOVE R3 R1
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  LOADB R8 0
  GETTABLEKS R9 R7 K1 ["Children"]
  LOADNIL R10
  LOADNIL R11
  FORGPREP R9
  GETTABLEKS R14 R13 K2 ["Hidden"]
  JUMPIF R14 [+1]
  LOADB R8 1
  FORGLOOP R9 2 [-5]
  JUMPIFNOT R8 [+1]
  SETTABLE R7 R2 R6
  FORGLOOP R3 2 [-15]
  RETURN R2 1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["_overrides"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["UpgradeSettings"]
  GETTABLE R2 R3 R4
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["Shorelines"]
  GETTABLE R1 R2 R3
  NOT R2 R0
  SETTABLEKS R2 R1 K3 ["Hidden"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["OnInternalsChanged"]
  NAMECALL R1 R1 K5 ["Fire"]
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["getPayload"]
  CALL R0 1 1
  GETUPVAL R1 0
  GETUPVAL R2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["_localization"]
  LOADK R5 K2 ["Operations"]
  LOADK R7 K3 ["%*Name"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K4 ["Shorelines"]
  NAMECALL R7 R7 K5 ["format"]
  CALL R7 2 1
  MOVE R6 R7
  NAMECALL R3 R3 K6 ["getText"]
  CALL R3 3 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["_localization"]
  LOADK R6 K2 ["Operations"]
  LOADK R8 K7 ["%*Description"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K4 ["Shorelines"]
  NAMECALL R8 R8 K5 ["format"]
  CALL R8 2 1
  MOVE R7 R8
  NAMECALL R4 R4 K6 ["getText"]
  CALL R4 3 1
  GETUPVAL R5 3
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U2
  CALL R2 4 1
  SETTABLEKS R2 R1 K8 ["_operation"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K8 ["_operation"]
  DUPTABLE R3 K10 [{"Payload"}]
  SETTABLEKS R0 R3 K9 ["Payload"]
  NAMECALL R1 R1 K11 ["start"]
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K12 ["OnOperationChanged"]
  NAMECALL R1 R1 K13 ["Fire"]
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["_overrides"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["UpgradeSettings"]
  GETTABLE R2 R3 R4
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["SmoothVoxels"]
  GETTABLE R1 R2 R3
  NOT R2 R0
  SETTABLEKS R2 R1 K3 ["Hidden"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["OnInternalsChanged"]
  NAMECALL R1 R1 K5 ["Fire"]
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["getPayload"]
  CALL R0 1 1
  GETUPVAL R1 0
  GETUPVAL R2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["_localization"]
  LOADK R5 K2 ["Operations"]
  LOADK R7 K3 ["%*Name"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K4 ["SmoothVoxels"]
  NAMECALL R7 R7 K5 ["format"]
  CALL R7 2 1
  MOVE R6 R7
  NAMECALL R3 R3 K6 ["getText"]
  CALL R3 3 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["_localization"]
  LOADK R6 K2 ["Operations"]
  LOADK R8 K7 ["%*Description"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K4 ["SmoothVoxels"]
  NAMECALL R8 R8 K5 ["format"]
  CALL R8 2 1
  MOVE R7 R8
  NAMECALL R4 R4 K6 ["getText"]
  CALL R4 3 1
  GETUPVAL R5 3
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U2
  CALL R2 4 1
  SETTABLEKS R2 R1 K8 ["_operation"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K8 ["_operation"]
  DUPTABLE R3 K10 [{"Payload"}]
  SETTABLEKS R0 R3 K9 ["Payload"]
  NAMECALL R1 R1 K11 ["start"]
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K12 ["OnOperationChanged"]
  NAMECALL R1 R1 K13 ["Fire"]
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["init"]
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 0
  NEWTABLE R3 1 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["UpgradeSettings"]
  NEWTABLE R5 2 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K2 ["Shorelines"]
  DUPTABLE R7 K8 [{"Hidden", "Label", "Layout", "Schema", "Value"}]
  GETTABLEKS R9 R2 K9 ["Terrain"]
  NOT R8 R9
  JUMPIF R8 [+6]
  GETTABLEKS R9 R2 K9 ["Terrain"]
  NAMECALL R9 R9 K10 ["CanShorelinesBeUpgraded"]
  CALL R9 1 1
  NOT R8 R9
  SETTABLEKS R8 R7 K3 ["Hidden"]
  LOADK R8 K11 [""]
  SETTABLEKS R8 R7 K4 ["Label"]
  GETIMPORT R8 K15 [Enum.FillDirection.Vertical]
  SETTABLEKS R8 R7 K5 ["Layout"]
  DUPTABLE R8 K17 [{"OnClick"}]
  NEWCLOSURE R9 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U2
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  SETTABLEKS R9 R8 K16 ["OnClick"]
  SETTABLEKS R8 R7 K6 ["Schema"]
  LOADB R8 1
  SETTABLEKS R8 R7 K7 ["Value"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K18 ["SmoothVoxels"]
  GETUPVAL R8 4
  CALL R8 0 1
  JUMPIFNOT R8 [+35]
  DUPTABLE R7 K8 [{"Hidden", "Label", "Layout", "Schema", "Value"}]
  GETTABLEKS R9 R2 K9 ["Terrain"]
  NOT R8 R9
  JUMPIF R8 [+6]
  GETTABLEKS R9 R2 K9 ["Terrain"]
  NAMECALL R9 R9 K19 ["CanSmoothVoxelsBeUpgraded"]
  CALL R9 1 1
  NOT R8 R9
  SETTABLEKS R8 R7 K3 ["Hidden"]
  LOADK R8 K11 [""]
  SETTABLEKS R8 R7 K4 ["Label"]
  GETIMPORT R8 K15 [Enum.FillDirection.Vertical]
  SETTABLEKS R8 R7 K5 ["Layout"]
  DUPTABLE R8 K17 [{"OnClick"}]
  NEWCLOSURE R9 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U2
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  SETTABLEKS R9 R8 K16 ["OnClick"]
  SETTABLEKS R8 R7 K6 ["Schema"]
  LOADB R8 1
  SETTABLEKS R8 R7 K7 ["Value"]
  JUMP [+1]
  LOADNIL R7
  SETTABLE R7 R5 R6
  SETTABLE R5 R3 R4
  SETTABLEKS R3 R0 K20 ["_overrides"]
  NAMECALL R3 R0 K21 ["createConnections"]
  CALL R3 1 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["_operation"]
  RETURN R1 1

PROTO_7:
  GETTABLEKS R3 R0 K0 ["_overrides"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["UpgradeSettings"]
  GETTABLE R2 R3 R4
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["Shorelines"]
  GETTABLE R1 R2 R3
  GETTABLEKS R4 R0 K3 ["_services"]
  GETTABLEKS R3 R4 K4 ["Terrain"]
  NOT R2 R3
  JUMPIF R2 [+8]
  GETTABLEKS R4 R0 K3 ["_services"]
  GETTABLEKS R3 R4 K4 ["Terrain"]
  NAMECALL R3 R3 K5 ["CanShorelinesBeUpgraded"]
  CALL R3 1 1
  NOT R2 R3
  SETTABLEKS R2 R1 K6 ["Hidden"]
  GETUPVAL R1 2
  CALL R1 0 1
  JUMPIFNOT R1 [+26]
  GETTABLEKS R3 R0 K0 ["_overrides"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["UpgradeSettings"]
  GETTABLE R2 R3 R4
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K7 ["SmoothVoxels"]
  GETTABLE R1 R2 R3
  GETTABLEKS R4 R0 K3 ["_services"]
  GETTABLEKS R3 R4 K4 ["Terrain"]
  NOT R2 R3
  JUMPIF R2 [+8]
  GETTABLEKS R4 R0 K3 ["_services"]
  GETTABLEKS R3 R4 K4 ["Terrain"]
  NAMECALL R3 R3 K8 ["CanSmoothVoxelsBeUpgraded"]
  CALL R3 1 1
  NOT R2 R3
  SETTABLEKS R2 R1 K6 ["Hidden"]
  GETTABLEKS R1 R0 K9 ["OnInternalsChanged"]
  NAMECALL R1 R1 K10 ["Fire"]
  CALL R1 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["updateUpgrades"]
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["updateUpgrades"]
  CALL R0 1 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R3 R0 K0 ["_services"]
  GETTABLEKS R2 R3 K1 ["ChangeHistoryService"]
  GETTABLEKS R1 R2 K2 ["OnUndo"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K3 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K4 ["_changeHistoryOnUndoConnection"]
  GETTABLEKS R3 R0 K0 ["_services"]
  GETTABLEKS R2 R3 K1 ["ChangeHistoryService"]
  GETTABLEKS R1 R2 K5 ["OnRedo"]
  NEWCLOSURE R3 P1
  CAPTURE VAL R0
  NAMECALL R1 R1 K3 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K6 ["_changeHistoryOnRedoConnection"]
  RETURN R0 0

PROTO_11:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["activate"]
  MOVE R2 R0
  CALL R1 1 0
  NAMECALL R1 R0 K1 ["updateUpgrades"]
  CALL R1 1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["deactivate"]
  MOVE R2 R0
  CALL R1 1 0
  GETTABLEKS R1 R0 K1 ["_changeHistoryOnUndoConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K1 ["_changeHistoryOnUndoConnection"]
  NAMECALL R1 R1 K2 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K1 ["_changeHistoryOnUndoConnection"]
  GETTABLEKS R1 R0 K3 ["_changeHistoryOnRedoConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K3 ["_changeHistoryOnRedoConnection"]
  NAMECALL R1 R1 K2 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["_changeHistoryOnRedoConnection"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["BaseTool"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K10 ["Category"]
  GETTABLEKS R4 R2 K11 ["Tab"]
  GETTABLEKS R5 R2 K12 ["Tool"]
  GETTABLEKS R6 R2 K13 ["UpgradeSettings"]
  GETTABLEKS R9 R0 K8 ["Src"]
  GETTABLEKS R8 R9 K14 ["Util"]
  GETTABLEKS R7 R8 K15 ["Operations"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R7 K16 ["ShorelinesOperation"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R7 K17 ["SmoothVoxelsOperation"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K8 ["Src"]
  GETTABLEKS R12 R13 K18 ["Flags"]
  GETTABLEKS R11 R12 K19 ["getFFlagSmoothVoxels_Tooling"]
  CALL R10 1 1
  NEWTABLE R11 0 1
  DUPTABLE R12 K22 [{"Defaults", "Id"}]
  NEWTABLE R13 0 0
  SETTABLEKS R13 R12 K20 ["Defaults"]
  GETTABLEKS R13 R3 K13 ["UpgradeSettings"]
  SETTABLEKS R13 R12 K21 ["Id"]
  SETLIST R11 R12 1 [1]
  NEWTABLE R12 0 0
  GETTABLEKS R15 R5 K23 ["Empty"]
  GETTABLEKS R16 R4 K24 ["None"]
  MOVE R17 R11
  MOVE R18 R12
  NAMECALL R13 R1 K25 ["new"]
  CALL R13 5 1
  DUPCLOSURE R14 K26 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R14 R13 K27 ["form"]
  DUPCLOSURE R14 K28 [PROTO_5]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R9
  SETTABLEKS R14 R13 K29 ["init"]
  DUPCLOSURE R14 K30 [PROTO_6]
  SETTABLEKS R14 R13 K31 ["operation"]
  DUPCLOSURE R14 K32 [PROTO_7]
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R10
  SETTABLEKS R14 R13 K33 ["updateUpgrades"]
  DUPCLOSURE R14 K34 [PROTO_10]
  SETTABLEKS R14 R13 K35 ["createConnections"]
  DUPCLOSURE R14 K36 [PROTO_11]
  CAPTURE VAL R1
  SETTABLEKS R14 R13 K37 ["activate"]
  DUPCLOSURE R14 K38 [PROTO_12]
  CAPTURE VAL R1
  SETTABLEKS R14 R13 K39 ["deactivate"]
  RETURN R13 1