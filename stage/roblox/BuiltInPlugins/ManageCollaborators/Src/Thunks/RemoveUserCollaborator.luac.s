PROTO_0:
  NAMECALL R2 R0 K0 ["getState"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K1 ["Permissions"]
  GETTABLEKS R3 R4 K2 ["NewPermissions"]
  JUMPIF R3 [+4]
  GETTABLEKS R4 R2 K1 ["Permissions"]
  GETTABLEKS R3 R4 K3 ["CurrentPermissions"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["UserSubjectKey"]
  GETTABLE R4 R3 R5
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["Dictionary"]
  GETTABLEKS R5 R6 K6 ["join"]
  MOVE R6 R3
  NEWTABLE R7 1 0
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K4 ["UserSubjectKey"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K5 ["Dictionary"]
  GETTABLEKS R9 R10 K6 ["join"]
  MOVE R10 R4
  NEWTABLE R11 1 0
  GETUPVAL R12 2
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K7 ["None"]
  SETTABLE R13 R11 R12
  CALL R9 2 1
  SETTABLE R9 R7 R8
  CALL R5 2 1
  GETUPVAL R8 3
  MOVE R9 R5
  CALL R8 1 -1
  NAMECALL R6 R0 K8 ["dispatch"]
  CALL R6 -1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K7 ["Src"]
  GETTABLEKS R4 R5 K8 ["Actions"]
  GETTABLEKS R3 R4 K9 ["SetUserPermission"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K7 ["Src"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["PermissionsConstants"]
  CALL R3 1 1
  DUPCLOSURE R4 K12 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R4 1