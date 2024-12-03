PROTO_0:
  GETTABLEKS R2 R0 K1 ["LayoutOrder"]
  ORK R1 R2 K0 [0]
  GETTABLEKS R3 R0 K2 ["voting"]
  GETTABLEKS R2 R3 K3 ["ShowVotes"]
  GETTABLEKS R5 R0 K2 ["voting"]
  GETTABLEKS R4 R5 K5 ["showVoteButtons"]
  ORK R3 R4 K4 [False]
  GETTABLEKS R5 R0 K2 ["voting"]
  GETTABLEKS R4 R5 K6 ["VoteLoading"]
  NEWTABLE R5 4 0
  JUMPIFNOT R2 [+53]
  JUMPIFNOT R4 [+34]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K7 ["createElement"]
  GETUPVAL R7 1
  DUPTABLE R8 K9 [{"Size"}]
  GETIMPORT R9 K12 [UDim2.new]
  LOADK R10 K13 [0.333]
  LOADN R11 0
  LOADK R12 K13 [0.333]
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K8 ["Size"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K6 ["VoteLoading"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K7 ["createElement"]
  LOADK R7 K14 ["UIListLayout"]
  DUPTABLE R8 K17 [{"HorizontalAlignment", "VerticalAlignment"}]
  GETIMPORT R9 K20 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R9 R8 K15 ["HorizontalAlignment"]
  GETIMPORT R9 K21 [Enum.VerticalAlignment.Center]
  SETTABLEKS R9 R8 K16 ["VerticalAlignment"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K14 ["UIListLayout"]
  JUMP [+18]
  JUMPIFNOT R3 [+9]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K7 ["createElement"]
  GETUPVAL R7 2
  MOVE R8 R0
  CALL R6 2 1
  SETTABLEKS R6 R5 K22 ["VoteButtons"]
  JUMP [+8]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K7 ["createElement"]
  GETUPVAL R7 3
  MOVE R8 R0
  CALL R6 2 1
  SETTABLEKS R6 R5 K23 ["VoteBar"]
  JUMPIFNOT R3 [+4]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K24 ["ASSET_VOTING_BUTTONS_HEIGHT"]
  JUMP [+3]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K25 ["ASSET_VOTE_COUNT_HEIGHT"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K7 ["createElement"]
  LOADK R8 K26 ["Frame"]
  DUPTABLE R9 K28 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K27 ["BackgroundTransparency"]
  SETTABLEKS R1 R9 K1 ["LayoutOrder"]
  GETIMPORT R10 K12 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 0
  MOVE R14 R6
  CALL R10 4 1
  SETTABLEKS R10 R9 K8 ["Size"]
  MOVE R10 R5
  CALL R7 3 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K7 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Core"]
  GETTABLEKS R6 R7 K9 ["Util"]
  GETTABLEKS R5 R6 K10 ["Constants"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R10 R0 K8 ["Core"]
  GETTABLEKS R9 R10 K11 ["Components"]
  GETTABLEKS R8 R9 K12 ["Asset"]
  GETTABLEKS R7 R8 K13 ["Voting"]
  GETTABLEKS R6 R7 K14 ["VoteBar"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R11 R0 K8 ["Core"]
  GETTABLEKS R10 R11 K11 ["Components"]
  GETTABLEKS R9 R10 K12 ["Asset"]
  GETTABLEKS R8 R9 K13 ["Voting"]
  GETTABLEKS R7 R8 K15 ["VoteButtons"]
  CALL R6 1 1
  GETTABLEKS R8 R2 K16 ["UI"]
  GETTABLEKS R7 R8 K17 ["LoadingIndicator"]
  DUPCLOSURE R8 K18 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R4
  RETURN R8 1