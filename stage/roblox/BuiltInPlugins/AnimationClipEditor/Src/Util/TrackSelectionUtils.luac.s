PROTO_0:
  NEWTABLE R2 0 0
  LOADB R3 0
  JUMPIFNOT R1 [+24]
  GETIMPORT R4 K1 [ipairs]
  MOVE R5 R1
  CALL R4 1 3
  FORGPREP_INEXT R4
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K2 ["getTrack"]
  MOVE R10 R0
  LOADK R11 K3 ["Root"]
  MOVE R12 R8
  CALL R9 3 1
  JUMPIFNOT R9 [+8]
  FASTCALL2 TABLE_INSERT R2 R8 [+5]
  MOVE R10 R2
  MOVE R11 R8
  GETIMPORT R9 K6 [table.insert]
  CALL R9 2 0
  JUMP [+1]
  LOADB R3 1
  FORGLOOP R4 2 [inext] [-18]
  RETURN R2 2

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["AnimationData"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K9 ["isEmpty"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K7 ["Util"]
  GETTABLEKS R4 R5 K10 ["PathUtils"]
  CALL R3 1 1
  NEWTABLE R4 1 0
  DUPCLOSURE R5 K11 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R5 R4 K12 ["PruneSelectedTracks"]
  RETURN R4 1