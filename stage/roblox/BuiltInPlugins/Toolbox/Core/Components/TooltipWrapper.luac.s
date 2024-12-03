PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R4 R1 K2 ["Text"]
  ORK R3 R4 K1 [""]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K4 [tostring]
  CALL R2 1 1
  GETTABLEKS R3 R1 K5 ["SizeConstraint"]
  JUMPIF R3 [+2]
  GETIMPORT R3 K8 [Enum.SizeConstraint.RelativeXY]
  GETTABLEKS R4 R1 K9 ["canShowCurrentTooltip"]
  GETTABLEKS R5 R1 K10 ["isHovered"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K11 ["createElement"]
  LOADK R7 K12 ["Frame"]
  DUPTABLE R8 K15 [{"Size", "BackgroundTransparency", "SizeConstraint"}]
  GETIMPORT R9 K18 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 1
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K13 ["Size"]
  LOADN R9 1
  SETTABLEKS R9 R8 K14 ["BackgroundTransparency"]
  SETTABLEKS R3 R8 K5 ["SizeConstraint"]
  DUPTABLE R9 K20 [{"Tooltip"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K11 ["createElement"]
  GETUPVAL R11 1
  DUPTABLE R12 K23 [{"Enabled", "Text", "Priority"}]
  AND R13 R4 R5
  SETTABLEKS R13 R12 K21 ["Enabled"]
  SETTABLEKS R2 R12 K2 ["Text"]
  LOADN R13 2
  SETTABLEKS R13 R12 K22 ["Priority"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K19 ["Tooltip"]
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Roact"]
  CALL R2 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R1 K7 ["Framework"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K8 ["UI"]
  GETTABLEKS R3 R4 K9 ["Tooltip"]
  GETTABLEKS R4 R2 K10 ["PureComponent"]
  LOADK R6 K11 ["TooltipWrapper"]
  NAMECALL R4 R4 K12 ["extend"]
  CALL R4 2 1
  DUPCLOSURE R5 K13 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  SETTABLEKS R5 R4 K14 ["render"]
  RETURN R4 1