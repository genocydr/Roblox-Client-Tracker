PROTO_0:
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K0 ["Keyframes"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K1 ["Data"]
  RETURN R0 0

PROTO_1:
  NAMECALL R1 R0 K0 ["getState"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K1 ["AnimationData"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R4 R2 K2 ["Instances"]
  GETUPVAL R5 0
  GETTABLE R3 R4 R5
  JUMPIF R3 [+1]
  RETURN R0 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["Dictionary"]
  GETTABLEKS R3 R4 K4 ["join"]
  NEWTABLE R4 0 0
  MOVE R5 R2
  CALL R3 2 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["Dictionary"]
  GETTABLEKS R4 R5 K4 ["join"]
  NEWTABLE R5 0 0
  GETTABLEKS R6 R3 K2 ["Instances"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K2 ["Instances"]
  GETTABLEKS R4 R3 K2 ["Instances"]
  GETUPVAL R5 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K3 ["Dictionary"]
  GETTABLEKS R6 R7 K4 ["join"]
  NEWTABLE R7 0 0
  GETTABLEKS R9 R3 K2 ["Instances"]
  GETUPVAL R10 0
  GETTABLE R8 R9 R10
  CALL R6 2 1
  SETTABLE R6 R4 R5
  GETTABLEKS R5 R3 K2 ["Instances"]
  GETUPVAL R6 0
  GETTABLE R4 R5 R6
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["Dictionary"]
  GETTABLEKS R5 R6 K4 ["join"]
  NEWTABLE R6 0 0
  GETTABLEKS R9 R3 K2 ["Instances"]
  GETUPVAL R10 0
  GETTABLE R8 R9 R10
  GETTABLEKS R7 R8 K5 ["Tracks"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K5 ["Tracks"]
  GETTABLEKS R6 R3 K2 ["Instances"]
  GETUPVAL R7 0
  GETTABLE R5 R6 R7
  GETTABLEKS R4 R5 K5 ["Tracks"]
  GETUPVAL R6 2
  GETTABLEN R5 R6 1
  GETUPVAL R6 3
  GETTABLEKS R10 R3 K2 ["Instances"]
  GETUPVAL R11 0
  GETTABLE R9 R10 R11
  GETTABLEKS R8 R9 K5 ["Tracks"]
  GETUPVAL R10 2
  GETTABLEN R9 R10 1
  GETTABLE R7 R8 R9
  CALL R6 1 1
  SETTABLE R6 R4 R5
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K6 ["getTrack"]
  MOVE R5 R3
  GETUPVAL R6 0
  GETUPVAL R7 2
  CALL R4 3 1
  JUMPIFEQKNIL R4 [+14]
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K7 ["traverseTracks"]
  LOADNIL R6
  MOVE R7 R4
  DUPCLOSURE R8 K8 [PROTO_0]
  CALL R5 3 0
  GETUPVAL R7 6
  MOVE R8 R3
  CALL R7 1 -1
  NAMECALL R5 R0 K9 ["dispatch"]
  CALL R5 -1 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["deepCopy"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K7 ["Util"]
  GETTABLEKS R4 R5 K11 ["AnimationData"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K7 ["Util"]
  GETTABLEKS R5 R6 K12 ["TrackUtils"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K13 ["Thunks"]
  GETTABLEKS R6 R7 K14 ["UpdateAnimationData"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K6 ["Src"]
  GETTABLEKS R8 R9 K15 ["Actions"]
  GETTABLEKS R7 R8 K16 ["SetAnimationData"]
  CALL R6 1 1
  DUPCLOSURE R7 K17 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  RETURN R7 1