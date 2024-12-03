PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["updateProgress"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  NAMECALL R1 R0 K0 ["getState"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K1 ["ScriptConversion"]
  GETTABLEKS R2 R3 K2 ["selection"]
  GETTABLEKS R4 R1 K1 ["ScriptConversion"]
  GETTABLEKS R3 R4 K3 ["revertedScripts"]
  NEWTABLE R4 0 0
  MOVE R5 R2
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETTABLEKS R10 R9 K4 ["scriptId"]
  JUMPIFNOT R10 [+15]
  GETTABLEKS R10 R9 K5 ["range"]
  JUMPIF R10 [+12]
  GETTABLEKS R11 R9 K4 ["scriptId"]
  GETTABLE R10 R3 R11
  JUMPIFNOT R10 [+8]
  GETTABLEKS R12 R9 K4 ["scriptId"]
  FASTCALL2 TABLE_INSERT R4 R12 [+4]
  MOVE R11 R4
  GETIMPORT R10 K8 [table.insert]
  CALL R10 2 0
  FORGLOOP R5 2 [-19]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K9 ["new"]
  LOADK R6 K10 ["UndoRevert"]
  LENGTH R7 R4
  MOVE R8 R0
  CALL R5 3 1
  GETUPVAL R6 1
  MOVE R7 R4
  GETUPVAL R8 2
  NEWCLOSURE R9 P0
  CAPTURE VAL R5
  CALL R6 3 0
  NAMECALL R6 R5 K11 ["clearProgressBar"]
  CALL R6 1 0
  DUPTABLE R6 K13 [{"undoRevertResult"}]
  LENGTH R7 R4
  SETTABLEKS R7 R6 K12 ["undoRevertResult"]
  GETUPVAL R9 3
  MOVE R10 R6
  CALL R9 1 -1
  NAMECALL R7 R0 K14 ["dispatch"]
  CALL R7 -1 0
  GETUPVAL R7 4
  LOADK R9 K15 ["onScriptSelectionRevertUndo"]
  NAMECALL R7 R7 K16 ["getHandler"]
  CALL R7 2 1
  MOVE R8 R6
  CALL R7 1 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE VAL R2
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Actions"]
  GETTABLEKS R2 R3 K8 ["SetProcessResult"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K9 ["Util"]
  GETTABLEKS R4 R5 K10 ["ScriptHistory"]
  GETTABLEKS R3 R4 K11 ["undoRevert"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K9 ["Util"]
  GETTABLEKS R4 R5 K12 ["ScriptConversionProgressTracker"]
  CALL R3 1 1
  DUPCLOSURE R4 K13 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R1
  RETURN R4 1