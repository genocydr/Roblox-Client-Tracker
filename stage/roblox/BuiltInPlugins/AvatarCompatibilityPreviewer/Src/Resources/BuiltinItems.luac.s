PROTO_0:
  NEWTABLE R2 0 0
  MOVE R3 R1
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  DUPTABLE R10 K3 [{"id", "attachment", "accessoryType"}]
  SETTABLEKS R7 R10 K0 ["id"]
  SETTABLEKS R0 R10 K1 ["attachment"]
  LOADK R11 K4 ["rigid"]
  SETTABLEKS R11 R10 K2 ["accessoryType"]
  FASTCALL2 TABLE_INSERT R2 R10 [+4]
  MOVE R9 R2
  GETIMPORT R8 K7 [table.insert]
  CALL R8 2 0
  FORGLOOP R3 2 [-15]
  RETURN R2 1

PROTO_1:
  DUPTABLE R1 K3 [{"id", "attachment", "accessoryType"}]
  SETTABLEKS R0 R1 K0 ["id"]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K1 ["attachment"]
  LOADK R2 K4 ["rigid"]
  SETTABLEKS R2 R1 K2 ["accessoryType"]
  RETURN R1 1

PROTO_2:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  RETURN R1 1

PROTO_3:
  LOADK R1 K0 ["layered"]
  SETTABLEKS R1 R0 K1 ["accessoryType"]
  RETURN R0 1

PROTO_4:
  NEWTABLE R1 0 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  DUPTABLE R9 K2 [{"id", "accessoryType"}]
  SETTABLEKS R6 R9 K0 ["id"]
  LOADK R10 K3 ["layered"]
  SETTABLEKS R10 R9 K1 ["accessoryType"]
  FASTCALL2 TABLE_INSERT R1 R9 [+4]
  MOVE R8 R1
  GETIMPORT R7 K6 [table.insert]
  CALL R7 2 0
  FORGLOOP R2 2 [-13]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["flatten"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K10 ["Flags"]
  GETTABLEKS R4 R5 K11 ["getFFlagAvatarPreviewerClothingTypeIcons"]
  CALL R3 1 1
  NEWTABLE R4 32 0
  DUPCLOSURE R5 K12 [PROTO_0]
  DUPCLOSURE R6 K13 [PROTO_2]
  DUPCLOSURE R7 K14 [PROTO_3]
  DUPCLOSURE R8 K15 [PROTO_4]
  MOVE R9 R3
  CALL R9 0 1
  JUMPIFNOT R9 [+54]
  LOADK R10 K16 ["HairAttachment"]
  NEWCLOSURE R9 P4
  CAPTURE VAL R10
  NEWTABLE R10 0 8
  MOVE R11 R9
  LOADK R12 K17 [13902886383]
  CALL R11 1 1
  MOVE R13 R9
  LOADK R14 K18 [11195420056]
  CALL R13 1 1
  LOADK R14 K19 ["layered"]
  SETTABLEKS R14 R13 K20 ["accessoryType"]
  MOVE R12 R13
  MOVE R13 R9
  LOADK R14 K21 [10966682388]
  CALL R13 1 1
  MOVE R14 R9
  LOADK R15 K22 [846803597]
  CALL R14 1 1
  MOVE R16 R9
  LOADK R17 K23 [9244114211]
  CALL R16 1 1
  LOADK R17 K19 ["layered"]
  SETTABLEKS R17 R16 K20 ["accessoryType"]
  MOVE R15 R16
  MOVE R17 R9
  LOADK R18 K24 [7193451306]
  CALL R17 1 1
  LOADK R18 K19 ["layered"]
  SETTABLEKS R18 R17 K20 ["accessoryType"]
  MOVE R16 R17
  MOVE R18 R9
  LOADK R19 K25 [7193386173]
  CALL R18 1 1
  LOADK R19 K19 ["layered"]
  SETTABLEKS R19 R18 K20 ["accessoryType"]
  MOVE R17 R18
  MOVE R19 R9
  LOADK R20 K26 [7193452166]
  CALL R19 1 1
  LOADK R20 K19 ["layered"]
  SETTABLEKS R20 R19 K20 ["accessoryType"]
  MOVE R18 R19
  SETLIST R10 R11 8 [1]
  SETTABLEKS R10 R4 K27 ["hair"]
  JUMP [+17]
  MOVE R9 R5
  LOADK R10 K16 ["HairAttachment"]
  NEWTABLE R11 0 8
  LOADK R12 K17 [13902886383]
  LOADK R13 K18 [11195420056]
  LOADK R14 K21 [10966682388]
  LOADK R15 K22 [846803597]
  LOADK R16 K23 [9244114211]
  LOADK R17 K24 [7193451306]
  LOADK R18 K25 [7193386173]
  LOADK R19 K26 [7193452166]
  SETLIST R11 R12 8 [1]
  CALL R9 2 1
  SETTABLEKS R9 R4 K27 ["hair"]
  MOVE R9 R5
  LOADK R10 K28 ["HatAttachment"]
  NEWTABLE R11 0 4
  LOADK R12 K29 [9111390490]
  LOADK R13 K30 [16018338042]
  LOADK R14 K31 [1744330435]
  LOADK R15 K32 [3757852497]
  SETLIST R11 R12 4 [1]
  CALL R9 2 1
  SETTABLEKS R9 R4 K33 ["head"]
  LOADK R10 K34 ["FaceCenterAttachment"]
  NEWCLOSURE R9 P4
  CAPTURE VAL R10
  LOADK R11 K35 ["FaceFrontAttachment"]
  NEWCLOSURE R10 P4
  CAPTURE VAL R11
  MOVE R11 R3
  CALL R11 0 1
  JUMPIFNOT R11 [+59]
  NEWTABLE R11 0 12
  MOVE R12 R10
  LOADK R13 K36 [16640910727]
  CALL R12 1 1
  MOVE R13 R10
  LOADK R14 K37 [16648934240]
  CALL R13 1 1
  MOVE R14 R10
  LOADK R15 K38 [9992285857]
  CALL R14 1 1
  MOVE R15 R10
  LOADK R16 K39 [14179786408]
  CALL R15 1 1
  MOVE R17 R10
  LOADK R18 K40 [12794788453]
  CALL R17 1 1
  LOADK R18 K19 ["layered"]
  SETTABLEKS R18 R17 K20 ["accessoryType"]
  MOVE R16 R17
  MOVE R18 R10
  LOADK R19 K41 [12796340774]
  CALL R18 1 1
  LOADK R19 K19 ["layered"]
  SETTABLEKS R19 R18 K20 ["accessoryType"]
  MOVE R17 R18
  MOVE R19 R10
  LOADK R20 K42 [12794916165]
  CALL R19 1 1
  LOADK R20 K19 ["layered"]
  SETTABLEKS R20 R19 K20 ["accessoryType"]
  MOVE R18 R19
  MOVE R20 R10
  LOADK R21 K43 [12796163960]
  CALL R20 1 1
  LOADK R21 K19 ["layered"]
  SETTABLEKS R21 R20 K20 ["accessoryType"]
  MOVE R19 R20
  MOVE R20 R9
  LOADK R21 K44 [16648984941]
  CALL R20 1 1
  MOVE R21 R9
  LOADK R22 K45 [16649071525]
  CALL R21 1 1
  MOVE R22 R9
  LOADK R23 K46 [13538969595]
  CALL R22 1 1
  MOVE R23 R9
  LOADK R24 K47 [16648586095]
  CALL R23 1 -1
  SETLIST R11 R12 -1 [1]
  SETTABLEKS R11 R4 K48 ["face"]
  JUMP [+42]
  NEWTABLE R11 0 12
  MOVE R12 R10
  LOADK R13 K36 [16640910727]
  CALL R12 1 1
  MOVE R13 R10
  LOADK R14 K37 [16648934240]
  CALL R13 1 1
  MOVE R14 R10
  LOADK R15 K38 [9992285857]
  CALL R14 1 1
  MOVE R15 R10
  LOADK R16 K39 [14179786408]
  CALL R15 1 1
  MOVE R16 R10
  LOADK R17 K40 [12794788453]
  CALL R16 1 1
  MOVE R17 R10
  LOADK R18 K41 [12796340774]
  CALL R17 1 1
  MOVE R18 R10
  LOADK R19 K42 [12794916165]
  CALL R18 1 1
  MOVE R19 R10
  LOADK R20 K43 [12796163960]
  CALL R19 1 1
  MOVE R20 R9
  LOADK R21 K44 [16648984941]
  CALL R20 1 1
  MOVE R21 R9
  LOADK R22 K45 [16649071525]
  CALL R21 1 1
  MOVE R22 R9
  LOADK R23 K46 [13538969595]
  CALL R22 1 1
  MOVE R23 R9
  LOADK R24 K47 [16648586095]
  CALL R23 1 -1
  SETLIST R11 R12 -1 [1]
  SETTABLEKS R11 R4 K48 ["face"]
  MOVE R11 R5
  LOADK R12 K49 ["BodyFrontAttachment"]
  NEWTABLE R13 0 4
  LOADK R14 K50 [16648690355]
  LOADK R15 K51 [16648652231]
  LOADK R16 K52 [16648706823]
  LOADK R17 K53 [16648698037]
  SETLIST R13 R14 4 [1]
  CALL R11 2 1
  SETTABLEKS R11 R4 K54 ["front"]
  MOVE R11 R5
  LOADK R12 K55 ["NeckAttachment"]
  NEWTABLE R13 0 4
  LOADK R14 K56 [16648958003]
  LOADK R15 K57 [16648625265]
  LOADK R16 K58 [3690490960]
  LOADK R17 K59 [15696295454]
  SETLIST R13 R14 4 [1]
  CALL R11 2 1
  SETTABLEKS R11 R4 K60 ["neck"]
  LOADK R12 K61 ["LeftCollarAttachment"]
  NEWCLOSURE R11 P4
  CAPTURE VAL R12
  LOADK R13 K62 ["RightCollarAttachment"]
  NEWCLOSURE R12 P4
  CAPTURE VAL R13
  LOADK R14 K63 ["LeftShoulderAttachment"]
  NEWCLOSURE R13 P4
  CAPTURE VAL R14
  LOADK R15 K64 ["RightShoulderAttachment"]
  NEWCLOSURE R14 P4
  CAPTURE VAL R15
  NEWTABLE R15 0 16
  MOVE R16 R13
  LOADK R17 K65 [16648897492]
  CALL R16 1 1
  MOVE R17 R14
  LOADK R18 K66 [16648905400]
  CALL R17 1 1
  MOVE R18 R13
  LOADK R19 K67 [16648604510]
  CALL R18 1 1
  MOVE R19 R14
  LOADK R20 K68 [16648615805]
  CALL R19 1 1
  MOVE R20 R13
  LOADK R21 K69 [16649028183]
  CALL R20 1 1
  MOVE R21 R14
  LOADK R22 K70 [16649036767]
  CALL R21 1 1
  MOVE R22 R13
  LOADK R23 K71 [9175325868]
  CALL R22 1 1
  MOVE R23 R14
  LOADK R24 K72 [9175327271]
  CALL R23 1 1
  MOVE R24 R11
  LOADK R25 K73 [16648502798]
  CALL R24 1 1
  MOVE R25 R12
  LOADK R26 K74 [16648553830]
  CALL R25 1 1
  MOVE R26 R11
  LOADK R27 K75 [16648441318]
  CALL R26 1 1
  MOVE R27 R12
  LOADK R28 K76 [16648488869]
  CALL R27 1 1
  MOVE R28 R11
  LOADK R29 K77 [16648993618]
  CALL R28 1 1
  MOVE R29 R12
  LOADK R30 K78 [16649003855]
  CALL R29 1 1
  MOVE R30 R11
  LOADK R31 K79 [16648866296]
  CALL R30 1 1
  MOVE R31 R12
  LOADK R32 K80 [16648873760]
  CALL R31 1 -1
  SETLIST R15 R16 -1 [1]
  SETTABLEKS R15 R4 K81 ["shoulder"]
  MOVE R15 R5
  LOADK R16 K82 ["BodyBackAttachment"]
  NEWTABLE R17 0 4
  LOADK R18 K83 [9111378574]
  LOADK R19 K84 [11774181392]
  LOADK R20 K85 [10685856744]
  LOADK R21 K86 [9175323644]
  SETLIST R17 R18 4 [1]
  CALL R15 2 1
  SETTABLEKS R15 R4 K87 ["back"]
  LOADK R16 K88 ["WaistBackAttachment"]
  NEWCLOSURE R15 P4
  CAPTURE VAL R16
  LOADK R17 K89 ["WaistCenterAttachment"]
  NEWCLOSURE R16 P4
  CAPTURE VAL R17
  LOADK R18 K90 ["WaistFrontAttachment"]
  NEWCLOSURE R17 P4
  CAPTURE VAL R18
  NEWTABLE R18 0 12
  MOVE R19 R17
  LOADK R20 K91 [16648852016]
  CALL R19 1 1
  MOVE R20 R17
  LOADK R21 K92 [16648681897]
  CALL R20 1 1
  MOVE R21 R17
  LOADK R22 K93 [7065897530]
  CALL R21 1 1
  MOVE R22 R17
  LOADK R23 K94 [6494274794]
  CALL R22 1 1
  MOVE R23 R16
  LOADK R24 K95 [16648672949]
  CALL R23 1 1
  MOVE R24 R16
  LOADK R25 K96 [16649078388]
  CALL R24 1 1
  MOVE R25 R16
  LOADK R26 K97 [8697885688]
  CALL R25 1 1
  MOVE R26 R16
  LOADK R27 K98 [3230476122]
  CALL R26 1 1
  MOVE R27 R15
  LOADK R28 K99 [10616839810]
  CALL R27 1 1
  MOVE R28 R15
  LOADK R29 K100 [13902900757]
  CALL R28 1 1
  MOVE R29 R15
  LOADK R30 K101 [13207223896]
  CALL R29 1 1
  MOVE R30 R15
  LOADK R31 K102 [4707869391]
  CALL R30 1 -1
  SETLIST R18 R19 -1 [1]
  SETTABLEKS R18 R4 K103 ["waist"]
  MOVE R18 R3
  CALL R18 0 1
  JUMPIFNOT R18 [+161]
  MOVE R18 R8
  NEWTABLE R19 0 6
  LOADK R20 K104 [7178736794]
  LOADK R21 K105 [7178735702]
  LOADK R22 K106 [6984729814]
  LOADK R23 K107 [7178740556]
  LOADK R24 K108 [9620950227]
  LOADK R25 K109 [9620976296]
  SETLIST R19 R20 6 [1]
  CALL R18 1 1
  SETTABLEKS R18 R4 K110 ["shirts"]
  MOVE R18 R8
  NEWTABLE R19 0 3
  LOADK R20 K111 [9112474888]
  LOADK R21 K104 [7178736794]
  LOADK R22 K112 [7178737816]
  SETLIST R19 R20 3 [1]
  CALL R18 1 1
  SETTABLEKS R18 R4 K113 ["tshirts"]
  MOVE R18 R8
  NEWTABLE R19 0 5
  LOADK R20 K114 [6984765766]
  LOADK R21 K115 [6984767443]
  LOADK R22 K116 [7272485361]
  LOADK R23 K117 [7192535654]
  LOADK R24 K118 [7192544729]
  SETLIST R19 R20 5 [1]
  CALL R18 1 1
  SETTABLEKS R18 R4 K119 ["jackets"]
  MOVE R18 R8
  NEWTABLE R19 0 8
  LOADK R20 K120 [9240758221]
  LOADK R21 K121 [9913119150]
  LOADK R22 K122 [9913110927]
  LOADK R23 K123 [9174379982]
  LOADK R24 K124 [6984769289]
  LOADK R25 K125 [6984771334]
  LOADK R26 K126 [9240757332]
  LOADK R27 K127 [9274353324]
  SETLIST R19 R20 8 [1]
  CALL R18 1 1
  SETTABLEKS R18 R4 K128 ["sweaters"]
  MOVE R18 R8
  NEWTABLE R19 0 5
  LOADK R20 K129 [6984763785]
  LOADK R21 K130 [6984740059]
  LOADK R22 K131 [7192673981]
  LOADK R23 K132 [7192681239]
  LOADK R24 K133 [7192679765]
  SETLIST R19 R20 5 [1]
  CALL R18 1 1
  SETTABLEKS R18 R4 K134 ["pants"]
  MOVE R18 R8
  NEWTABLE R19 0 3
  LOADK R20 K135 [6984773235]
  LOADK R21 K136 [7192683061]
  LOADK R22 K137 [7192685245]
  SETLIST R19 R20 3 [1]
  CALL R18 1 1
  SETTABLEKS R18 R4 K138 ["shorts"]
  MOVE R18 R8
  NEWTABLE R19 0 5
  LOADK R20 K139 [7192691582]
  LOADK R21 K140 [7192690731]
  LOADK R22 K141 [9284466791]
  LOADK R23 K142 [10278865927]
  LOADK R24 K143 [7192695838]
  SETLIST R19 R20 5 [1]
  CALL R18 1 1
  SETTABLEKS R18 R4 K144 ["skirts"]
  MOVE R18 R8
  NEWTABLE R19 0 3
  LOADK R20 K145 [8722031289]
  LOADK R21 K146 [7193170137]
  LOADK R22 K147 [7193104827]
  SETLIST R19 R20 3 [1]
  CALL R18 1 1
  SETTABLEKS R18 R4 K148 ["shoes"]
  MOVE R18 R8
  NEWTABLE R19 0 1
  LOADK R20 K149 [11572097774]
  SETLIST R19 R20 1 [1]
  CALL R18 1 1
  SETTABLEKS R18 R4 K150 ["eyebrows"]
  MOVE R18 R8
  NEWTABLE R19 0 1
  LOADK R20 K151 [11572100557]
  SETLIST R19 R20 1 [1]
  CALL R18 1 1
  SETTABLEKS R18 R4 K152 ["eyelashes"]
  MOVE R18 R2
  GETTABLEKS R19 R4 K27 ["hair"]
  GETTABLEKS R20 R4 K33 ["head"]
  GETTABLEKS R21 R4 K48 ["face"]
  GETTABLEKS R22 R4 K54 ["front"]
  GETTABLEKS R23 R4 K60 ["neck"]
  GETTABLEKS R24 R4 K81 ["shoulder"]
  GETTABLEKS R25 R4 K87 ["back"]
  GETTABLEKS R26 R4 K103 ["waist"]
  GETTABLEKS R27 R4 K110 ["shirts"]
  GETTABLEKS R28 R4 K113 ["tshirts"]
  GETTABLEKS R29 R4 K119 ["jackets"]
  GETTABLEKS R30 R4 K128 ["sweaters"]
  GETTABLEKS R31 R4 K134 ["pants"]
  GETTABLEKS R32 R4 K138 ["shorts"]
  GETTABLEKS R33 R4 K144 ["skirts"]
  GETTABLEKS R34 R4 K148 ["shoes"]
  GETTABLEKS R35 R4 K150 ["eyebrows"]
  GETTABLEKS R36 R4 K152 ["eyelashes"]
  CALL R18 18 1
  SETTABLEKS R18 R4 K153 ["allItems"]
  RETURN R4 1
  MOVE R18 R2
  GETTABLEKS R19 R4 K27 ["hair"]
  GETTABLEKS R20 R4 K33 ["head"]
  GETTABLEKS R21 R4 K48 ["face"]
  GETTABLEKS R22 R4 K54 ["front"]
  GETTABLEKS R23 R4 K60 ["neck"]
  GETTABLEKS R24 R4 K81 ["shoulder"]
  GETTABLEKS R25 R4 K87 ["back"]
  GETTABLEKS R26 R4 K103 ["waist"]
  CALL R18 8 1
  SETTABLEKS R18 R4 K153 ["allItems"]
  RETURN R4 1