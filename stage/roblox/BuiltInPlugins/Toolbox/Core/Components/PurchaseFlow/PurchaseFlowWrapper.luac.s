PROTO_0:
  GETTABLEKS R2 R0 K0 ["purchase"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R2 R0 K0 ["purchase"]
  GETTABLEKS R1 R2 K1 ["isPurchaseDialogVisible"]
  RETURN R1 1
  LOADNIL R1
  RETURN R1 1

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R1 1
  LOADB R2 0
  CALL R1 1 -1
  CALL R0 -1 0
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K0 ["OnClose"]
  JUMPIFNOT R0 [+4]
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K0 ["OnClose"]
  CALL R0 0 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["TryInsert"]
  MOVE R4 R0
  LOADB R5 0
  LOADK R6 K1 ["PreviewClickInsertButton"]
  MOVE R7 R1
  MOVE R8 R2
  CALL R3 5 -1
  RETURN R3 -1

PROTO_3:
  JUMPIFNOT R0 [+71]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Asset"]
  GETTABLEKS R1 R2 K1 ["Id"]
  GETUPVAL R2 1
  JUMPIF R2 [+29]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["Product"]
  JUMPIF R2 [+25]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K3 ["shouldDebugWarnings"]
  CALL R2 0 1
  JUMPIFNOT R2 [+11]
  GETIMPORT R2 K5 [warn]
  LOADK R4 K6 ["Attempted to purchase asset without neither robux nor fiat Product: "]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R6 R1
  GETIMPORT R5 K8 [tostring]
  CALL R5 1 1
  CONCAT R3 R4 R5
  GETUPVAL R4 0
  CALL R2 2 0
  GETUPVAL R2 3
  GETUPVAL R3 4
  GETUPVAL R4 0
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K9 ["PurchaseFailed"]
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0
  LOADNIL R2
  LOADNIL R3
  GETUPVAL R4 6
  CALL R4 0 1
  JUMPIF R4 [+14]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["Product"]
  JUMPIFNOT R4 [+3]
  GETTABLEKS R5 R4 K10 ["Price"]
  JUMPIF R5 [+1]
  LOADN R5 0
  MOVE R3 R5
  MOVE R5 R4
  JUMPIFNOT R5 [+2]
  GETTABLEKS R5 R4 K11 ["ProductId"]
  MOVE R2 R5
  GETUPVAL R4 3
  GETUPVAL R5 7
  GETUPVAL R6 8
  MOVE R7 R1
  MOVE R8 R2
  MOVE R9 R3
  LOADNIL R10
  LOADNIL R11
  GETUPVAL R12 1
  GETUPVAL R13 9
  GETUPVAL R14 0
  CALL R5 9 -1
  CALL R4 -1 0
  GETUPVAL R4 10
  CALL R4 0 0
  RETURN R0 0
  GETUPVAL R1 10
  CALL R1 0 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["Localization"]
  NAMECALL R2 R2 K0 ["use"]
  CALL R2 1 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K0 ["use"]
  CALL R4 0 1
  GETTABLEKS R3 R4 K2 ["networkInterface"]
  GETUPVAL R4 3
  CALL R4 0 1
  GETTABLEKS R6 R0 K3 ["AssetData"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K4 ["None"]
  JUMPIFEQ R6 R7 [+4]
  GETTABLEKS R5 R0 K3 ["AssetData"]
  JUMP [+1]
  LOADNIL R5
  JUMPIFNOT R5 [+3]
  GETTABLEKS R6 R5 K5 ["Asset"]
  JUMP [+1]
  LOADNIL R6
  JUMPIFNOT R5 [+3]
  GETTABLEKS R7 R5 K6 ["FiatProduct"]
  JUMP [+1]
  LOADNIL R7
  JUMPIFNOT R7 [+3]
  GETTABLEKS R8 R7 K7 ["Purchasable"]
  JUMP [+1]
  LOADNIL R8
  JUMPIFNOT R7 [+3]
  GETTABLEKS R9 R7 K8 ["PurchasePrice"]
  JUMP [+1]
  LOADNIL R9
  GETUPVAL R11 5
  CALL R11 0 1
  JUMPIFNOT R11 [+2]
  LOADNIL R10
  JUMP [+10]
  JUMPIFNOT R5 [+8]
  GETTABLEKS R11 R5 K9 ["Product"]
  JUMPIFNOT R11 [+5]
  GETTABLEKS R11 R5 K9 ["Product"]
  GETTABLEKS R10 R11 K10 ["Price"]
  JUMP [+1]
  LOADN R10 0
  JUMPIFNOT R9 [+6]
  GETUPVAL R12 6
  GETTABLEKS R11 R12 K11 ["isFree"]
  MOVE R12 R9
  CALL R11 1 1
  JUMP [+4]
  JUMPIFEQKN R10 K12 [0] [+2]
  LOADB R11 0 +1
  LOADB R11 1
  GETUPVAL R12 7
  DUPCLOSURE R13 K13 [PROTO_0]
  CALL R12 1 1
  GETUPVAL R14 8
  GETTABLEKS R13 R14 K14 ["useCallback"]
  NEWCLOSURE R14 P1
  CAPTURE VAL R4
  CAPTURE UPVAL U9
  CAPTURE VAL R0
  NEWTABLE R15 0 2
  MOVE R16 R4
  GETTABLEKS R17 R0 K15 ["OnClose"]
  SETLIST R15 R16 2 [1]
  CALL R13 2 1
  GETUPVAL R15 8
  GETTABLEKS R14 R15 K14 ["useCallback"]
  NEWCLOSURE R15 P2
  CAPTURE VAL R0
  NEWTABLE R16 0 2
  MOVE R17 R4
  GETTABLEKS R18 R0 K16 ["TryInsert"]
  SETLIST R16 R17 2 [1]
  CALL R14 2 1
  GETUPVAL R16 8
  GETTABLEKS R15 R16 K14 ["useCallback"]
  NEWCLOSURE R16 P3
  CAPTURE VAL R5
  CAPTURE VAL R9
  CAPTURE UPVAL U10
  CAPTURE VAL R4
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE UPVAL U5
  CAPTURE UPVAL U13
  CAPTURE VAL R3
  CAPTURE VAL R14
  CAPTURE VAL R13
  NEWTABLE R17 0 6
  MOVE R18 R5
  MOVE R19 R4
  MOVE R20 R9
  MOVE R21 R3
  MOVE R22 R13
  MOVE R23 R14
  SETLIST R17 R18 6 [1]
  CALL R15 2 1
  JUMPIFNOT R12 [+1]
  JUMPIF R5 [+1]
  RETURN R0 0
  JUMPIFNOT R11 [+4]
  MOVE R16 R15
  LOADB R17 1
  CALL R16 1 0
  RETURN R0 0
  JUMPIFNOT R9 [+54]
  JUMPIFNOT R9 [+43]
  JUMPIFNOT R8 [+42]
  GETUPVAL R17 14
  GETTABLEKS R16 R17 K17 ["constructAssetThumbnailUrl"]
  GETTABLEKS R17 R6 K18 ["Id"]
  GETUPVAL R19 15
  GETTABLEKS R18 R19 K19 ["X"]
  GETUPVAL R20 15
  GETTABLEKS R19 R20 K20 ["Y"]
  CALL R16 3 1
  GETUPVAL R18 8
  GETTABLEKS R17 R18 K21 ["createElement"]
  GETUPVAL R18 16
  DUPTABLE R19 K26 [{"Name", "CreatorName", "OnClose", "OnButtonClicked", "Price", "Thumbnail"}]
  GETTABLEKS R20 R6 K22 ["Name"]
  SETTABLEKS R20 R19 K22 ["Name"]
  GETTABLEKS R21 R5 K27 ["Creator"]
  GETTABLEKS R20 R21 K22 ["Name"]
  SETTABLEKS R20 R19 K23 ["CreatorName"]
  SETTABLEKS R13 R19 K15 ["OnClose"]
  SETTABLEKS R15 R19 K24 ["OnButtonClicked"]
  GETUPVAL R21 6
  GETTABLEKS R20 R21 K28 ["displayStringFromMoney"]
  MOVE R21 R9
  CALL R20 1 1
  SETTABLEKS R20 R19 K10 ["Price"]
  SETTABLEKS R16 R19 K25 ["Thumbnail"]
  CALL R17 2 -1
  RETURN R17 -1
  GETUPVAL R17 10
  GETTABLEKS R16 R17 K29 ["shouldDebugWarnings"]
  CALL R16 0 1
  JUMPIFNOT R16 [+18]
  GETIMPORT R16 K31 [warn]
  LOADK R17 K32 ["Fiat asset is not purchaseable"]
  CALL R16 1 0
  RETURN R0 0
  GETUPVAL R17 8
  GETTABLEKS R16 R17 K21 ["createElement"]
  GETUPVAL R17 17
  DUPTABLE R18 K35 [{"AssetData", "Cancel", "OnPurchaseClicked"}]
  SETTABLEKS R5 R18 K3 ["AssetData"]
  SETTABLEKS R13 R18 K33 ["Cancel"]
  SETTABLEKS R15 R18 K34 ["OnPurchaseClicked"]
  CALL R16 2 -1
  RETURN R16 -1
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Packages"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R6 R0 K7 ["Core"]
  GETTABLEKS R5 R6 K8 ["Util"]
  GETTABLEKS R4 R5 K9 ["SharedFlags"]
  GETTABLEKS R3 R4 K10 ["getFFlagToolboxRemoveRobuxProductEntirely"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R0 K4 ["Packages"]
  GETTABLEKS R4 R5 K11 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K4 ["Packages"]
  GETTABLEKS R5 R6 K12 ["Roact"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R8 R0 K7 ["Core"]
  GETTABLEKS R7 R8 K13 ["Hooks"]
  GETTABLEKS R6 R7 K14 ["useDispatch"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R9 R0 K7 ["Core"]
  GETTABLEKS R8 R9 K13 ["Hooks"]
  GETTABLEKS R7 R8 K15 ["useSelector"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R11 R0 K7 ["Core"]
  GETTABLEKS R10 R11 K16 ["Components"]
  GETTABLEKS R9 R10 K17 ["PurchaseFlow"]
  GETTABLEKS R8 R9 K18 ["BuyAssetDialog"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R12 R0 K7 ["Core"]
  GETTABLEKS R11 R12 K16 ["Components"]
  GETTABLEKS R10 R11 K17 ["PurchaseFlow"]
  GETTABLEKS R9 R10 K19 ["PluginPurchaseFlow"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R12 R0 K7 ["Core"]
  GETTABLEKS R11 R12 K8 ["Util"]
  GETTABLEKS R10 R11 K20 ["DebugFlags"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R13 R0 K7 ["Core"]
  GETTABLEKS R12 R13 K8 ["Util"]
  GETTABLEKS R11 R12 K21 ["FiatUtil"]
  CALL R10 1 1
  GETIMPORT R11 K6 [require]
  GETTABLEKS R14 R0 K7 ["Core"]
  GETTABLEKS R13 R14 K8 ["Util"]
  GETTABLEKS R12 R13 K22 ["Urls"]
  CALL R11 1 1
  GETIMPORT R12 K6 [require]
  GETTABLEKS R13 R1 K23 ["Framework"]
  CALL R12 1 1
  GETTABLEKS R13 R12 K24 ["ContextServices"]
  GETTABLEKS R14 R13 K25 ["Stylizer"]
  GETIMPORT R15 K6 [require]
  GETTABLEKS R18 R0 K7 ["Core"]
  GETTABLEKS R17 R18 K24 ["ContextServices"]
  GETTABLEKS R16 R17 K26 ["NetworkContext"]
  CALL R15 1 1
  GETIMPORT R16 K6 [require]
  GETTABLEKS R19 R0 K7 ["Core"]
  GETTABLEKS R18 R19 K27 ["Types"]
  GETTABLEKS R17 R18 K28 ["AssetLogicTypes"]
  CALL R16 1 1
  GETIMPORT R17 K6 [require]
  GETTABLEKS R20 R0 K7 ["Core"]
  GETTABLEKS R19 R20 K27 ["Types"]
  GETTABLEKS R18 R19 K29 ["SubsequentDialogStatus"]
  CALL R17 1 1
  GETIMPORT R18 K6 [require]
  GETTABLEKS R21 R0 K7 ["Core"]
  GETTABLEKS R20 R21 K30 ["Actions"]
  GETTABLEKS R19 R20 K31 ["EnqueueSubsequentDialog"]
  CALL R18 1 1
  GETIMPORT R19 K6 [require]
  GETTABLEKS R23 R0 K7 ["Core"]
  GETTABLEKS R22 R23 K32 ["Networking"]
  GETTABLEKS R21 R22 K33 ["Requests"]
  GETTABLEKS R20 R21 K34 ["PurchaseAssetRequest"]
  CALL R19 1 1
  GETIMPORT R20 K6 [require]
  GETTABLEKS R23 R0 K7 ["Core"]
  GETTABLEKS R22 R23 K30 ["Actions"]
  GETTABLEKS R21 R22 K35 ["SetPurchaseDialogVisibility"]
  CALL R20 1 1
  GETIMPORT R21 K38 [Vector2.new]
  LOADN R22 150
  LOADN R23 150
  CALL R21 2 1
  DUPCLOSURE R22 K39 [PROTO_4]
  CAPTURE VAL R14
  CAPTURE VAL R13
  CAPTURE VAL R15
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R20
  CAPTURE VAL R9
  CAPTURE VAL R18
  CAPTURE VAL R17
  CAPTURE VAL R19
  CAPTURE VAL R11
  CAPTURE VAL R21
  CAPTURE VAL R7
  CAPTURE VAL R8
  RETURN R22 1