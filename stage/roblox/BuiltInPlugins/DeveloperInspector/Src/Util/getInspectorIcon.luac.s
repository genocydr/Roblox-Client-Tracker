PROTO_0:
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["StudioService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  MOVE R4 R0
  NAMECALL R2 R1 K4 ["GetClassIcon"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 -1
  RETURN R0 -1

PROTO_2:
  GETUPVAL R2 0
  GETTABLE R1 R2 R0
  JUMPIFNOT R1 [+22]
  DUPTABLE R1 K3 [{"Image", "ImageRectSize", "ImageRectOffset"}]
  LOADK R3 K4 ["rbxassetid://"]
  GETUPVAL R5 0
  GETTABLE R4 R5 R0
  CONCAT R2 R3 R4
  SETTABLEKS R2 R1 K0 ["Image"]
  GETIMPORT R2 K7 [Vector2.new]
  LOADN R3 24
  LOADN R4 24
  CALL R2 2 1
  SETTABLEKS R2 R1 K1 ["ImageRectSize"]
  GETIMPORT R2 K7 [Vector2.new]
  LOADN R3 0
  LOADN R4 0
  CALL R2 2 1
  SETTABLEKS R2 R1 K2 ["ImageRectOffset"]
  RETURN R1 1
  GETIMPORT R1 K9 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 1 2
  JUMPIFNOT R1 [+1]
  RETURN R2 1
  GETUPVAL R3 1
  LOADK R4 K10 ["Folder"]
  CALL R3 1 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K8 [{"Branch", "Consumer", "Fragment", "Functional", "Portal", "Provider", "Pure", "Stateful"}]
  LOADK R1 K9 [5923556358]
  SETTABLEKS R1 R0 K0 ["Branch"]
  LOADK R1 K10 [5923556689]
  SETTABLEKS R1 R0 K1 ["Consumer"]
  LOADK R1 K11 [5923557006]
  SETTABLEKS R1 R0 K2 ["Fragment"]
  LOADK R1 K12 [5923557211]
  SETTABLEKS R1 R0 K3 ["Functional"]
  LOADK R1 K13 [5923557429]
  SETTABLEKS R1 R0 K4 ["Portal"]
  LOADK R1 K14 [5923557657]
  SETTABLEKS R1 R0 K5 ["Provider"]
  LOADK R1 K15 [5923557814]
  SETTABLEKS R1 R0 K6 ["Pure"]
  LOADK R1 K16 [5923557987]
  SETTABLEKS R1 R0 K7 ["Stateful"]
  DUPCLOSURE R1 K17 [PROTO_0]
  DUPCLOSURE R2 K18 [PROTO_2]
  CAPTURE VAL R0
  CAPTURE VAL R1
  RETURN R2 1