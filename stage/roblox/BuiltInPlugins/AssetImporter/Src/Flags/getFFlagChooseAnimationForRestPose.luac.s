PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["isCli"]
  CALL R0 0 1
  JUMPIFNOT R0 [+2]
  LOADB R0 1
  RETURN R0 1
  GETIMPORT R0 K2 [game]
  LOADK R2 K3 ["ChooseAnimationForRestPose"]
  NAMECALL R0 R0 K4 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["TestLoader"]
  CALL R1 1 1
  DUPCLOSURE R2 K7 [PROTO_0]
  CAPTURE VAL R1
  RETURN R2 1