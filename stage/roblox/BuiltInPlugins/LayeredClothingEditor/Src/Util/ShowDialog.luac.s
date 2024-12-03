PROTO_0:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["unmount"]
  GETUPVAL R2 0
  CALL R1 1 0
  GETTABLEKS R1 R0 K1 ["OnClose"]
  JUMPIFNOT R1 [+3]
  GETTABLEKS R1 R0 K1 ["OnClose"]
  CALL R1 0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R1 1
  JUMPIFNOT R1 [+5]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K0 ["unmount"]
  GETUPVAL R2 1
  CALL R1 1 0
  GETTABLEKS R1 R0 K1 ["OnClose"]
  JUMPIFNOT R1 [+3]
  GETTABLEKS R1 R0 K1 ["OnClose"]
  CALL R1 0 0
  RETURN R0 0

PROTO_2:
  LOADNIL R4
  NEWCLOSURE R5 P0
  CAPTURE REF R4
  CAPTURE UPVAL U0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["RunTests"]
  CALL R6 0 1
  JUMPIF R6 [+4]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["RunRhodiumTests"]
  CALL R6 0 1
  LOADNIL R7
  JUMPIFNOT R6 [+6]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K2 ["mock"]
  CALL R8 0 1
  MOVE R7 R8
  JUMP [+5]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K3 ["makePluginTheme"]
  CALL R8 0 1
  MOVE R7 R8
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K4 ["provide"]
  NEWTABLE R9 0 4
  MOVE R10 R1
  MOVE R11 R7
  MOVE R12 R0
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K5 ["new"]
  NAMECALL R14 R0 K6 ["get"]
  CALL R14 1 1
  NAMECALL R14 R14 K7 ["getMouse"]
  CALL R14 1 -1
  CALL R13 -1 -1
  SETLIST R9 R10 -1 [1]
  NEWTABLE R10 0 1
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K8 ["createElement"]
  MOVE R12 R2
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K9 ["Dictionary"]
  GETTABLEKS R13 R14 K10 ["join"]
  MOVE R14 R3
  DUPTABLE R15 K12 [{"OnClose"}]
  NEWCLOSURE R16 P1
  CAPTURE VAL R3
  CAPTURE REF R4
  CAPTURE UPVAL U0
  SETTABLEKS R16 R15 K11 ["OnClose"]
  CALL R13 2 -1
  CALL R11 -1 -1
  SETLIST R10 R11 -1 [1]
  CALL R8 2 1
  JUMPIFNOT R6 [0]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K13 ["mount"]
  MOVE R10 R8
  LOADNIL R11
  CALL R9 2 1
  MOVE R4 R9
  CLOSEUPVALS R4
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["AvatarToolsShared"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K9 ["ContextServices"]
  GETTABLEKS R5 R4 K10 ["Mouse"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K11 ["Src"]
  GETTABLEKS R8 R9 K12 ["Resources"]
  GETTABLEKS R7 R8 K13 ["PluginTheme"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K11 ["Src"]
  GETTABLEKS R9 R10 K14 ["Util"]
  GETTABLEKS R8 R9 K15 ["DebugFlags"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K11 ["Src"]
  GETTABLEKS R10 R11 K14 ["Util"]
  GETTABLEKS R9 R10 K16 ["TestHelper"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R11 R0 K5 ["Packages"]
  GETTABLEKS R10 R11 K17 ["Cryo"]
  CALL R9 1 1
  GETTABLEKS R10 R2 K9 ["ContextServices"]
  DUPCLOSURE R11 K18 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R10
  CAPTURE VAL R5
  CAPTURE VAL R9
  RETURN R11 1