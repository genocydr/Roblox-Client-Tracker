PROTO_0:
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K1 [typeof]
  CALL R3 1 1
  JUMPIFEQKS R3 K2 ["string"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K3 [+4]
  LOADK R3 K3 ["string expected"]
  GETIMPORT R1 K5 [assert]
  CALL R1 2 0
  LOADK R3 K6 ["(%W)"]
  LOADK R4 K7 ["%%%1"]
  NAMECALL R1 R0 K8 ["gsub"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1