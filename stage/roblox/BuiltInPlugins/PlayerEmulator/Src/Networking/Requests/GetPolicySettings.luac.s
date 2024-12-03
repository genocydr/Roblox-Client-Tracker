PROTO_0:
  GETTABLEKS R1 R0 K0 ["responseCode"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["StatusCodes"]
  GETTABLEKS R2 R3 K2 ["OK"]
  JUMPIFNOTEQ R1 R2 [+13]
  GETTABLEKS R1 R0 K3 ["responseBody"]
  GETUPVAL R2 1
  GETUPVAL R4 2
  GETUPVAL R5 3
  MOVE R6 R1
  GETUPVAL R7 4
  CALL R4 3 -1
  NAMECALL R2 R2 K4 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0
  GETUPVAL R1 1
  GETUPVAL R3 2
  GETUPVAL R4 3
  NEWTABLE R5 0 0
  GETUPVAL R6 4
  CALL R3 3 -1
  NAMECALL R1 R1 K4 ["dispatch"]
  CALL R1 -1 0
  GETIMPORT R1 K6 [warn]
  LOADK R3 K7 ["Player Emulator can't get player policy info: HTTP error "]
  GETTABLEKS R5 R0 K0 ["responseCode"]
  FASTCALL1 TOSTRING R5 [+2]
  GETIMPORT R4 K9 [tostring]
  CALL R4 1 1
  CONCAT R2 R3 R4
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETUPVAL R4 2
  NEWTABLE R5 0 0
  GETUPVAL R6 3
  CALL R3 3 -1
  NAMECALL R1 R1 K0 ["dispatch"]
  CALL R1 -1 0
  GETIMPORT R1 K2 [warn]
  LOADK R3 K3 ["Player Emulator can't get player policy info: "]
  MOVE R4 R0
  CONCAT R2 R3 R4
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R6 0
  NAMECALL R4 R2 K0 ["get"]
  CALL R4 2 1
  MOVE R7 R4
  NAMECALL R5 R2 K1 ["handleRetry"]
  CALL R5 2 1
  GETTABLEKS R6 R2 K2 ["parseJson"]
  MOVE R7 R5
  CALL R6 1 1
  NEWCLOSURE R8 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE VAL R3
  NEWCLOSURE R9 P1
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE VAL R3
  NAMECALL R6 R6 K3 ["andThen"]
  CALL R6 3 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["responseCode"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["StatusCodes"]
  GETTABLEKS R2 R3 K2 ["OK"]
  JUMPIFNOTEQ R1 R2 [+10]
  GETTABLEKS R1 R0 K3 ["responseBody"]
  GETUPVAL R2 1
  MOVE R3 R1
  GETUPVAL R4 2
  GETUPVAL R5 3
  GETUPVAL R6 4
  CALL R2 4 0
  RETURN R0 0
  GETIMPORT R1 K5 [warn]
  LOADK R2 K6 ["Player Emulator failed to load policy section data"]
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETIMPORT R1 K1 [warn]
  LOADK R3 K2 ["Player Emulator can't get policies info: "]
  MOVE R4 R0
  CONCAT R2 R3 R4
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETUPVAL R3 1
  NAMECALL R1 R1 K0 ["get"]
  CALL R1 2 1
  GETUPVAL R2 0
  MOVE R4 R1
  NAMECALL R2 R2 K1 ["handleRetry"]
  CALL R2 2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["parseJson"]
  MOVE R4 R2
  CALL R3 1 1
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U4
  DUPCLOSURE R6 K3 [PROTO_4]
  NAMECALL R3 R3 K4 ["andThen"]
  CALL R3 3 0
  RETURN R0 0

PROTO_6:
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Http"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K7 ["Src"]
  GETTABLEKS R4 R5 K8 ["Networking"]
  GETTABLEKS R3 R4 K9 ["UrlConstructor"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K7 ["Src"]
  GETTABLEKS R5 R6 K10 ["Thunks"]
  GETTABLEKS R4 R5 K11 ["InitPolicySettingStatus"]
  CALL R3 1 1
  GETIMPORT R4 K13 [game]
  LOADK R6 K14 ["PlayerEmulatorPolicyServiceEndpointMigrationEnabled2"]
  LOADB R7 0
  NAMECALL R4 R4 K15 ["DefineFastFlag"]
  CALL R4 3 0
  LOADNIL R4
  LOADNIL R5
  GETIMPORT R6 K13 [game]
  LOADK R8 K14 ["PlayerEmulatorPolicyServiceEndpointMigrationEnabled2"]
  NAMECALL R6 R6 K16 ["GetFastFlag"]
  CALL R6 2 1
  JUMPIFNOT R6 [+13]
  GETTABLEKS R6 R2 K17 ["BuildUrl"]
  LOADK R7 K18 ["apis"]
  LOADK R8 K19 ["player-policy-service/v1/player-policy-all-values"]
  CALL R6 2 1
  MOVE R4 R6
  GETTABLEKS R6 R2 K17 ["BuildUrl"]
  LOADK R7 K18 ["apis"]
  LOADK R8 K20 ["player-policy-service/v1/player-policy-client"]
  CALL R6 2 1
  MOVE R5 R6
  JUMP [+12]
  GETTABLEKS R6 R2 K17 ["BuildUrl"]
  LOADK R7 K21 ["gameinternationalization"]
  LOADK R8 K22 ["v1/player-policies/all-values"]
  CALL R6 2 1
  MOVE R4 R6
  GETTABLEKS R6 R2 K17 ["BuildUrl"]
  LOADK R7 K21 ["gameinternationalization"]
  LOADK R8 K23 ["v1/player-policies-client"]
  CALL R6 2 1
  MOVE R5 R6
  NEWCLOSURE R6 P0
  CAPTURE REF R5
  CAPTURE VAL R1
  CAPTURE VAL R3
  NEWCLOSURE R7 P1
  CAPTURE REF R4
  CAPTURE VAL R1
  CAPTURE VAL R6
  CLOSEUPVALS R4
  RETURN R7 1