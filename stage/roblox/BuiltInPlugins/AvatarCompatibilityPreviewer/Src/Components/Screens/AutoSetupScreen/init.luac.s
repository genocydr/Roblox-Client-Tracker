PROTO_0:
  DUPTABLE R0 K1 [{"fov"}]
  LOADN R1 70
  SETTABLEKS R1 R0 K0 ["fov"]
  RETURN R0 1

PROTO_1:
  JUMPIFNOTEQKS R0 K0 ["DEPRECATED_ErrorMultipleBodies"] [+3]
  LOADB R1 0
  RETURN R1 1
  JUMPIFNOTEQKS R0 K1 ["ErrorSourceFail"] [+3]
  LOADB R1 1
  RETURN R1 1
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["autoSetupState"]
  GETTABLEKS R1 R2 K1 ["target"]
  GETTABLEKS R0 R1 K2 ["model"]
  NAMECALL R1 R0 K3 ["Clone"]
  CALL R1 1 1
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIFNOT R2 [+7]
  GETTABLEKS R2 R1 K4 ["PrimaryPart"]
  GETIMPORT R3 K7 [CFrame.new]
  CALL R3 0 1
  SETTABLEKS R3 R2 K8 ["PivotOffset"]
  RETURN R1 1

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["autoSetupState"]
  GETTABLEKS R0 R1 K1 ["target"]
  GETTABLEKS R4 R0 K2 ["DEPRECATED_bodies"]
  LENGTH R3 R4
  LOADN R4 0
  JUMPIFLT R4 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K3 [+4]
  LOADK R3 K3 ["Received empty bodies list from auto setup state"]
  GETIMPORT R1 K5 [assert]
  CALL R1 2 0
  GETTABLEKS R2 R0 K2 ["DEPRECATED_bodies"]
  GETTABLEN R1 R2 1
  RETURN R1 1

PROTO_4:
  GETIMPORT R0 K2 [Instance.new]
  LOADK R1 K3 ["Model"]
  CALL R0 1 1
  GETUPVAL R1 0
  NAMECALL R1 R1 K4 ["Clone"]
  CALL R1 1 1
  GETUPVAL R2 1
  JUMPIFNOT R2 [+5]
  GETIMPORT R2 K6 [CFrame.new]
  CALL R2 0 1
  SETTABLEKS R2 R1 K7 ["PivotOffset"]
  SETTABLEKS R0 R1 K8 ["Parent"]
  SETTABLEKS R1 R0 K9 ["PrimaryPart"]
  GETUPVAL R2 2
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 1

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["autoSetupState"]
  GETTABLEKS R0 R1 K1 ["type"]
  JUMPIFNOTEQKS R0 K2 ["error"] [+5]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K3 ["enable"]
  CALL R0 0 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  MUL R6 R0 R5
  SETTABLEKS R6 R4 K0 ["CFrame"]
  FORGLOOP R1 2 [-4]
  RETURN R0 0

PROTO_7:
  GETIMPORT R1 K2 [os.clock]
  CALL R1 0 1
  GETUPVAL R2 0
  SUB R0 R1 R2
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["SpinRate"]
  MUL R3 R0 R4
  MULK R2 R3 K3 [6.28318530717959]
  MODK R1 R2 K3 [6.28318530717959]
  GETUPVAL R3 2
  GETIMPORT R4 K7 [CFrame.Angles]
  LOADN R5 0
  MOVE R6 R1
  LOADN R7 0
  CALL R4 3 1
  MUL R2 R3 R4
  GETUPVAL R3 3
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  MUL R8 R2 R7
  SETTABLEKS R8 R6 K5 ["CFrame"]
  FORGLOOP R3 2 [-4]
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 1
  GETUPVAL R1 2
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  MUL R6 R0 R5
  SETTABLEKS R6 R4 K1 ["CFrame"]
  FORGLOOP R1 2 [-4]
  RETURN R0 0

PROTO_9:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["autoSetupState"]
  GETTABLEKS R0 R1 K1 ["type"]
  JUMPIFEQKS R0 K2 ["inAutoSetup"] [+2]
  RETURN R0 0
  GETIMPORT R0 K5 [os.clock]
  CALL R0 0 1
  GETIMPORT R1 K8 [CFrame.new]
  GETUPVAL R3 1
  NAMECALL R3 R3 K9 ["GetBoundingBox"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K10 ["Position"]
  CALL R1 1 1
  NEWTABLE R2 0 0
  GETUPVAL R3 1
  NAMECALL R3 R3 K11 ["GetDescendants"]
  CALL R3 1 3
  FORGPREP R3
  LOADK R10 K12 ["BasePart"]
  NAMECALL R8 R7 K13 ["IsA"]
  CALL R8 2 1
  JUMPIFNOT R8 [+6]
  GETTABLEKS R10 R7 K6 ["CFrame"]
  NAMECALL R8 R1 K14 ["ToObjectSpace"]
  CALL R8 2 1
  SETTABLE R8 R2 R7
  FORGLOOP R3 2 [-12]
  NEWCLOSURE R3 P0
  CAPTURE VAL R2
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K15 ["RenderStepped"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE VAL R1
  CAPTURE VAL R2
  NAMECALL R4 R4 K16 ["Connect"]
  CALL R4 2 1
  NEWCLOSURE R5 P2
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R5 1

PROTO_10:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["autoSetupState"]
  GETTABLEKS R0 R1 K1 ["target"]
  GETTABLEKS R4 R0 K2 ["DEPRECATED_bodies"]
  LENGTH R3 R4
  LOADN R4 0
  JUMPIFLT R4 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K3 [+4]
  LOADK R3 K3 ["Received empty bodies list from auto setup state"]
  GETIMPORT R1 K5 [assert]
  CALL R1 2 0
  GETTABLEKS R2 R0 K2 ["DEPRECATED_bodies"]
  GETTABLEN R1 R2 1
  RETURN R1 1

PROTO_11:
  GETIMPORT R0 K2 [task.wait]
  CALL R0 0 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["PrimaryPart"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["PrimaryPart"]
  GETTABLEKS R3 R4 K4 ["CFrame"]
  GETIMPORT R4 K6 [CFrame.Angles]
  LOADN R5 0
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K9 ["SpinRate"]
  MUL R8 R0 R9
  MULK R7 R8 K8 [2]
  MULK R6 R7 K7 [3.14159265358979]
  LOADN R7 0
  CALL R4 3 1
  MUL R2 R3 R4
  SETTABLEKS R2 R1 K4 ["CFrame"]
  JUMPBACK [-26]
  RETURN R0 0

PROTO_12:
  GETIMPORT R0 K2 [task.cancel]
  GETUPVAL R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["autoSetupState"]
  GETTABLEKS R0 R1 K1 ["type"]
  JUMPIFEQKS R0 K2 ["inAutoSetup"] [+21]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K3 ["PrimaryPart"]
  GETIMPORT R2 K6 [CFrame.new]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["PrimaryPart"]
  GETTABLEKS R3 R4 K7 ["Position"]
  CALL R2 1 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K4 ["CFrame"]
  GETTABLEKS R3 R4 K8 ["Rotation"]
  MUL R1 R2 R3
  SETTABLEKS R1 R0 K4 ["CFrame"]
  RETURN R0 0
  GETIMPORT R0 K11 [task.spawn]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U3
  CALL R0 1 1
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  RETURN R1 1

PROTO_14:
  JUMPIFNOTEQKS R0 K0 ["yes"] [+5]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["cancelAutoSetup"]
  CALL R1 0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["disable"]
  CALL R1 0 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R2 1
  LOADK R4 K1 ["AutoSetupScreen"]
  NAMECALL R2 R2 K0 ["use"]
  CALL R2 2 1
  GETTABLEKS R6 R0 K2 ["autoSetupState"]
  GETTABLEKS R5 R6 K3 ["type"]
  JUMPIFNOTEQKS R5 K4 ["none"] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K5 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R4 R5 [+3]
  GETIMPORT R3 K7 [assert]
  CALL R3 2 0
  LOADNIL R3
  GETUPVAL R4 3
  CALL R4 0 1
  JUMPIFNOT R4 [+24]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K8 ["useMemo"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  NEWTABLE R6 0 1
  GETTABLEKS R8 R0 K2 ["autoSetupState"]
  GETTABLEKS R7 R8 K9 ["target"]
  JUMPIFNOT R7 [+6]
  GETTABLEKS R9 R0 K2 ["autoSetupState"]
  GETTABLEKS R8 R9 K9 ["target"]
  GETTABLEKS R7 R8 K10 ["model"]
  SETLIST R6 R7 1 [1]
  CALL R4 2 1
  MOVE R3 R4
  JUMP [+28]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K8 ["useMemo"]
  NEWCLOSURE R5 P1
  CAPTURE VAL R0
  NEWTABLE R6 0 1
  GETTABLEKS R8 R0 K2 ["autoSetupState"]
  GETTABLEKS R7 R8 K9 ["target"]
  SETLIST R6 R7 1 [1]
  CALL R4 2 1
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K8 ["useMemo"]
  NEWCLOSURE R6 P2
  CAPTURE VAL R4
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  NEWTABLE R7 0 1
  MOVE R8 R4
  SETLIST R7 R8 1 [1]
  CALL R5 2 1
  MOVE R3 R5
  GETUPVAL R4 8
  LOADB R5 0
  CALL R4 1 1
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K11 ["useEffect"]
  NEWCLOSURE R6 P3
  CAPTURE VAL R0
  CAPTURE VAL R4
  NEWTABLE R7 0 1
  GETTABLEKS R8 R0 K2 ["autoSetupState"]
  SETLIST R7 R8 1 [1]
  CALL R5 2 0
  GETUPVAL R5 3
  CALL R5 0 1
  JUMPIFNOT R5 [+19]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K11 ["useEffect"]
  NEWCLOSURE R6 P4
  CAPTURE VAL R0
  CAPTURE REF R3
  CAPTURE UPVAL U9
  CAPTURE VAL R2
  NEWTABLE R7 0 2
  GETTABLEKS R9 R0 K2 ["autoSetupState"]
  GETTABLEKS R8 R9 K3 ["type"]
  MOVE R9 R3
  SETLIST R7 R8 2 [1]
  CALL R5 2 0
  JUMP [+30]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K8 ["useMemo"]
  NEWCLOSURE R6 P5
  CAPTURE VAL R0
  NEWTABLE R7 0 1
  GETTABLEKS R9 R0 K2 ["autoSetupState"]
  GETTABLEKS R8 R9 K9 ["target"]
  SETLIST R7 R8 1 [1]
  CALL R5 2 1
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K11 ["useEffect"]
  NEWCLOSURE R7 P6
  CAPTURE VAL R0
  CAPTURE REF R3
  CAPTURE VAL R5
  CAPTURE VAL R2
  NEWTABLE R8 0 2
  GETTABLEKS R9 R0 K2 ["autoSetupState"]
  MOVE R10 R3
  SETLIST R8 R9 2 [1]
  CALL R6 2 0
  GETUPVAL R5 8
  LOADB R6 0
  CALL R5 1 1
  GETUPVAL R7 10
  GETTABLEKS R6 R7 K12 ["new"]
  CALL R6 0 1
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K13 ["createElement"]
  GETUPVAL R8 11
  NEWTABLE R9 0 0
  DUPTABLE R10 K20 [{"Background", "ModelPreview", "CancelDialog", "ErrorAlert", "GenerationCard", "Controls"}]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K13 ["createElement"]
  GETUPVAL R12 12
  CALL R11 1 1
  SETTABLEKS R11 R10 K14 ["Background"]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K13 ["createElement"]
  GETUPVAL R12 11
  DUPTABLE R13 K22 [{"ZIndex"}]
  NAMECALL R14 R6 K23 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K21 ["ZIndex"]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K13 ["createElement"]
  GETUPVAL R15 13
  DUPTABLE R16 K27 [{"Model", "GetCameraModifications", "ShowResetCameraButton"}]
  SETTABLEKS R3 R16 K24 ["Model"]
  GETUPVAL R17 14
  SETTABLEKS R17 R16 K25 ["GetCameraModifications"]
  LOADB R17 1
  SETTABLEKS R17 R16 K26 ["ShowResetCameraButton"]
  CALL R14 2 -1
  CALL R11 -1 1
  SETTABLEKS R11 R10 K15 ["ModelPreview"]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K13 ["createElement"]
  GETUPVAL R12 15
  DUPTABLE R13 K37 [{"Style", "Enabled", "Modal", "Resizable", "Title", "MinContentSize", "Buttons", "OnButtonPressed", "OnClose"}]
  LOADK R14 K38 ["AcceptCancel"]
  SETTABLEKS R14 R13 K28 ["Style"]
  GETTABLEKS R14 R5 K39 ["enabled"]
  SETTABLEKS R14 R13 K29 ["Enabled"]
  LOADB R14 1
  SETTABLEKS R14 R13 K30 ["Modal"]
  LOADB R14 0
  SETTABLEKS R14 R13 K31 ["Resizable"]
  LOADK R16 K40 ["AvatarScreen"]
  LOADK R17 K41 ["CancelPromptTitle"]
  NAMECALL R14 R1 K42 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K32 ["Title"]
  GETIMPORT R14 K44 [Vector2.new]
  LOADN R15 44
  LOADN R16 50
  CALL R14 2 1
  SETTABLEKS R14 R13 K33 ["MinContentSize"]
  NEWTABLE R14 0 2
  DUPTABLE R15 K47 [{"Key", "Text"}]
  LOADK R16 K48 ["yes"]
  SETTABLEKS R16 R15 K45 ["Key"]
  LOADK R18 K40 ["AvatarScreen"]
  LOADK R19 K49 ["CancelPromptYes"]
  NAMECALL R16 R1 K42 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K46 ["Text"]
  DUPTABLE R16 K47 [{"Key", "Text"}]
  LOADK R17 K50 ["no"]
  SETTABLEKS R17 R16 K45 ["Key"]
  LOADK R19 K40 ["AvatarScreen"]
  LOADK R20 K51 ["CancelPromptNo"]
  NAMECALL R17 R1 K42 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K46 ["Text"]
  SETLIST R14 R15 2 [1]
  SETTABLEKS R14 R13 K34 ["Buttons"]
  NEWCLOSURE R14 P7
  CAPTURE VAL R0
  CAPTURE VAL R5
  SETTABLEKS R14 R13 K35 ["OnButtonPressed"]
  GETTABLEKS R14 R5 K52 ["disable"]
  SETTABLEKS R14 R13 K36 ["OnClose"]
  DUPTABLE R14 K53 [{"Text"}]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K13 ["createElement"]
  GETUPVAL R16 16
  DUPTABLE R17 K55 [{"Text", "TextWrapped"}]
  LOADK R20 K40 ["AvatarScreen"]
  LOADK R21 K56 ["CancelPromptConfirmText"]
  NAMECALL R18 R1 K42 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K46 ["Text"]
  LOADB R18 1
  SETTABLEKS R18 R17 K54 ["TextWrapped"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K46 ["Text"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K16 ["CancelDialog"]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K13 ["createElement"]
  GETUPVAL R12 11
  DUPTABLE R13 K59 [{"AutomaticSize", "Size", "ZIndex"}]
  GETIMPORT R14 K62 [Enum.AutomaticSize.Y]
  SETTABLEKS R14 R13 K57 ["AutomaticSize"]
  GETIMPORT R14 K65 [UDim2.fromScale]
  LOADN R15 1
  LOADN R16 0
  CALL R14 2 1
  SETTABLEKS R14 R13 K58 ["Size"]
  NAMECALL R14 R6 K23 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K21 ["ZIndex"]
  DUPTABLE R14 K69 [{"Padding", "Alert", "DEPRECATED_Alert"}]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K13 ["createElement"]
  LOADK R16 K70 ["UIPadding"]
  DUPTABLE R17 K74 [{"PaddingLeft", "PaddingRight", "PaddingTop"}]
  GETTABLEKS R18 R2 K75 ["AlertPaddingHorizontal"]
  SETTABLEKS R18 R17 K71 ["PaddingLeft"]
  GETTABLEKS R18 R2 K75 ["AlertPaddingHorizontal"]
  SETTABLEKS R18 R17 K72 ["PaddingRight"]
  GETTABLEKS R18 R2 K76 ["AlertPaddingVertical"]
  SETTABLEKS R18 R17 K73 ["PaddingTop"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K66 ["Padding"]
  GETUPVAL R16 3
  CALL R16 0 1
  JUMPIFNOT R16 [+17]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K13 ["createElement"]
  GETUPVAL R16 17
  DUPTABLE R17 K79 [{"autoSetupState", "clearError", "cancelDialogOpen"}]
  GETTABLEKS R18 R0 K2 ["autoSetupState"]
  SETTABLEKS R18 R17 K2 ["autoSetupState"]
  GETTABLEKS R18 R0 K77 ["clearError"]
  SETTABLEKS R18 R17 K77 ["clearError"]
  SETTABLEKS R5 R17 K78 ["cancelDialogOpen"]
  CALL R15 2 1
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K67 ["Alert"]
  GETTABLEKS R17 R0 K2 ["autoSetupState"]
  GETTABLEKS R16 R17 K3 ["type"]
  JUMPIFNOTEQKS R16 K80 ["error"] [+41]
  GETTABLEKS R16 R4 K39 ["enabled"]
  JUMPIFNOT R16 [+37]
  GETUPVAL R16 3
  CALL R16 0 1
  JUMPIF R16 [+34]
  GETUPVAL R16 18
  CALL R16 0 1
  JUMPIF R16 [+31]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K13 ["createElement"]
  GETUPVAL R16 19
  DUPTABLE R17 K82 [{"Title", "Description", "Style", "OnClose"}]
  LOADK R20 K40 ["AvatarScreen"]
  LOADK R21 K83 ["AutoSetupErrorTitle"]
  NAMECALL R18 R1 K42 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K32 ["Title"]
  LOADK R20 K40 ["AvatarScreen"]
  GETTABLEKS R22 R0 K2 ["autoSetupState"]
  GETTABLEKS R21 R22 K80 ["error"]
  NAMECALL R18 R1 K42 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K81 ["Description"]
  LOADK R18 K84 ["Error"]
  SETTABLEKS R18 R17 K28 ["Style"]
  GETTABLEKS R18 R4 K52 ["disable"]
  SETTABLEKS R18 R17 K36 ["OnClose"]
  CALL R15 2 1
  JUMP [+77]
  LOADB R15 0
  GETTABLEKS R17 R0 K2 ["autoSetupState"]
  GETTABLEKS R16 R17 K3 ["type"]
  JUMPIFNOTEQKS R16 K85 ["inAutoSetup"] [+71]
  GETUPVAL R16 3
  CALL R16 0 1
  NOT R15 R16
  JUMPIFNOT R15 [+66]
  GETUPVAL R16 18
  CALL R16 0 1
  NOT R15 R16
  JUMPIFNOT R15 [+62]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K13 ["createElement"]
  GETUPVAL R16 19
  DUPTABLE R17 K87 [{"Title", "Description", "PrimaryAction"}]
  LOADK R20 K40 ["AvatarScreen"]
  LOADK R21 K88 ["AutoSetupInProgressTitle"]
  NAMECALL R18 R1 K42 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K32 ["Title"]
  LOADK R23 K40 ["AvatarScreen"]
  LOADK R24 K89 ["AutoSetupInProgressDescription"]
  NAMECALL R21 R1 K42 ["getText"]
  CALL R21 3 1
  MOVE R19 R21
  GETTABLEKS R22 R0 K2 ["autoSetupState"]
  GETTABLEKS R21 R22 K90 ["DEPRECATED_eta"]
  JUMPIFNOTEQKNIL R21 [+3]
  LOADK R20 K91 [""]
  JUMP [+18]
  LOADK R21 K92 ["
"]
  LOADK R24 K40 ["AvatarScreen"]
  LOADK R25 K93 ["AutoSetupETA"]
  DUPTABLE R26 K95 [{"eta"}]
  GETTABLEKS R29 R0 K2 ["autoSetupState"]
  GETTABLEKS R28 R29 K90 ["DEPRECATED_eta"]
  FASTCALL1 MATH_CEIL R28 [+2]
  GETIMPORT R27 K98 [math.ceil]
  CALL R27 1 1
  SETTABLEKS R27 R26 K94 ["eta"]
  NAMECALL R22 R1 K42 ["getText"]
  CALL R22 4 1
  CONCAT R20 R21 R22
  CONCAT R18 R19 R20
  SETTABLEKS R18 R17 K81 ["Description"]
  DUPTABLE R18 K100 [{"Text", "OnClick"}]
  LOADK R21 K40 ["AvatarScreen"]
  LOADK R22 K101 ["AutoSetupInProgressActionText"]
  NAMECALL R19 R1 K42 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K46 ["Text"]
  GETTABLEKS R19 R5 K102 ["enable"]
  SETTABLEKS R19 R18 K99 ["OnClick"]
  SETTABLEKS R18 R17 K86 ["PrimaryAction"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K68 ["DEPRECATED_Alert"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K17 ["ErrorAlert"]
  GETUPVAL R12 18
  CALL R12 0 1
  JUMPIFNOT R12 [+19]
  GETTABLEKS R13 R0 K2 ["autoSetupState"]
  GETTABLEKS R12 R13 K3 ["type"]
  JUMPIFNOTEQKS R12 K85 ["inAutoSetup"] [+14]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K13 ["createElement"]
  GETUPVAL R12 20
  DUPTABLE R13 K103 [{"autoSetupState", "cancelDialogOpen"}]
  GETTABLEKS R14 R0 K2 ["autoSetupState"]
  SETTABLEKS R14 R13 K2 ["autoSetupState"]
  SETTABLEKS R5 R13 K78 ["cancelDialogOpen"]
  CALL R11 2 1
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K18 ["GenerationCard"]
  GETTABLEKS R13 R0 K2 ["autoSetupState"]
  GETTABLEKS R12 R13 K3 ["type"]
  JUMPIFEQKS R12 K104 ["hasSelection"] [+26]
  LOADB R11 0
  GETTABLEKS R13 R0 K2 ["autoSetupState"]
  GETTABLEKS R12 R13 K3 ["type"]
  JUMPIFNOTEQKS R12 K80 ["error"] [+75]
  GETTABLEKS R13 R0 K2 ["autoSetupState"]
  GETTABLEKS R12 R13 K80 ["error"]
  JUMPIFNOTEQKS R12 K105 ["DEPRECATED_ErrorMultipleBodies"] [+3]
  LOADB R11 0
  JUMP [+9]
  JUMPIFNOTEQKS R12 K106 ["ErrorSourceFail"] [+3]
  LOADB R11 1
  JUMP [+5]
  GETUPVAL R13 21
  MOVE R14 R12
  CALL R13 1 1
  MOVE R11 R13
  JUMP [0]
  JUMPIFNOT R11 [+56]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K13 ["createElement"]
  GETUPVAL R12 11
  DUPTABLE R13 K109 [{"AnchorPoint", "AutomaticSize", "Position", "ZIndex"}]
  GETIMPORT R14 K44 [Vector2.new]
  LOADN R15 1
  LOADN R16 1
  CALL R14 2 1
  SETTABLEKS R14 R13 K107 ["AnchorPoint"]
  GETIMPORT R14 K111 [Enum.AutomaticSize.XY]
  SETTABLEKS R14 R13 K57 ["AutomaticSize"]
  GETTABLEKS R14 R2 K112 ["ControlsPosition"]
  SETTABLEKS R14 R13 K108 ["Position"]
  NAMECALL R14 R6 K23 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K21 ["ZIndex"]
  DUPTABLE R14 K114 [{"Start"}]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K13 ["createElement"]
  GETUPVAL R16 22
  DUPTABLE R17 K115 [{"AutomaticSize", "OnClick", "Style", "Text", "ZIndex"}]
  GETIMPORT R18 K111 [Enum.AutomaticSize.XY]
  SETTABLEKS R18 R17 K57 ["AutomaticSize"]
  GETTABLEKS R18 R0 K116 ["startAutoSetup"]
  SETTABLEKS R18 R17 K99 ["OnClick"]
  LOADK R18 K117 ["PrimaryBrand"]
  SETTABLEKS R18 R17 K28 ["Style"]
  LOADK R20 K40 ["AvatarScreen"]
  LOADK R21 K118 ["StartAutoSetup"]
  NAMECALL R18 R1 K42 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K46 ["Text"]
  LOADN R18 2
  SETTABLEKS R18 R17 K21 ["ZIndex"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K113 ["Start"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K19 ["Controls"]
  CALL R7 3 -1
  CLOSEUPVALS R3
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["RunService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["AvatarCompatibilityPreviewer"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R1 K10 ["Packages"]
  GETTABLEKS R4 R5 K12 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R9 R1 K13 ["Src"]
  GETTABLEKS R8 R9 K14 ["Components"]
  GETTABLEKS R7 R8 K15 ["Screens"]
  GETTABLEKS R6 R7 K16 ["AutoSetupScreen"]
  GETTABLEKS R5 R6 K17 ["AutoSetupAlert"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R8 R1 K13 ["Src"]
  GETTABLEKS R7 R8 K14 ["Components"]
  GETTABLEKS R6 R7 K18 ["Background"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R11 R1 K13 ["Src"]
  GETTABLEKS R10 R11 K14 ["Components"]
  GETTABLEKS R9 R10 K15 ["Screens"]
  GETTABLEKS R8 R9 K16 ["AutoSetupScreen"]
  GETTABLEKS R7 R8 K19 ["GenerationCard"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R10 R1 K13 ["Src"]
  GETTABLEKS R9 R10 K14 ["Components"]
  GETTABLEKS R8 R9 K20 ["ModelPreview"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R11 R1 K13 ["Src"]
  GETTABLEKS R10 R11 K21 ["Util"]
  GETTABLEKS R9 R10 K22 ["Constants"]
  CALL R8 1 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R12 R1 K13 ["Src"]
  GETTABLEKS R11 R12 K23 ["Resources"]
  GETTABLEKS R10 R11 K24 ["Theme"]
  CALL R9 1 1
  GETIMPORT R10 K9 [require]
  GETTABLEKS R12 R1 K13 ["Src"]
  GETTABLEKS R11 R12 K25 ["Types"]
  CALL R10 1 1
  GETIMPORT R11 K9 [require]
  GETTABLEKS R14 R1 K13 ["Src"]
  GETTABLEKS R13 R14 K21 ["Util"]
  GETTABLEKS R12 R13 K26 ["exhaustiveMatch"]
  CALL R11 1 1
  GETIMPORT R12 K9 [require]
  GETTABLEKS R15 R1 K13 ["Src"]
  GETTABLEKS R14 R15 K21 ["Util"]
  GETTABLEKS R13 R14 K27 ["filterDescendants"]
  CALL R12 1 1
  GETIMPORT R13 K9 [require]
  GETTABLEKS R16 R1 K13 ["Src"]
  GETTABLEKS R15 R16 K28 ["Hooks"]
  GETTABLEKS R14 R15 K29 ["useToggleState"]
  CALL R13 1 1
  GETTABLEKS R14 R2 K30 ["UI"]
  GETTABLEKS R15 R14 K31 ["Alert"]
  GETTABLEKS R16 R14 K32 ["IconButton"]
  GETTABLEKS R17 R14 K33 ["Pane"]
  GETTABLEKS R18 R14 K34 ["StyledDialog"]
  GETTABLEKS R19 R14 K35 ["TextLabel"]
  GETTABLEKS R21 R2 K21 ["Util"]
  GETTABLEKS R20 R21 K36 ["LayoutOrderIterator"]
  GETTABLEKS R22 R2 K37 ["ContextServices"]
  GETTABLEKS R21 R22 K38 ["Localization"]
  GETTABLEKS R23 R2 K37 ["ContextServices"]
  GETTABLEKS R22 R23 K39 ["Stylizer"]
  GETIMPORT R23 K9 [require]
  GETTABLEKS R26 R1 K13 ["Src"]
  GETTABLEKS R25 R26 K40 ["Flags"]
  GETTABLEKS R24 R25 K41 ["getFFlagAvatarPreviewerAdjustCameraScale"]
  CALL R23 1 1
  GETIMPORT R24 K9 [require]
  GETTABLEKS R27 R1 K13 ["Src"]
  GETTABLEKS R26 R27 K40 ["Flags"]
  GETTABLEKS R25 R26 K42 ["getFFlagAvatarPreviewerUseAnyModel"]
  CALL R24 1 1
  GETIMPORT R25 K9 [require]
  GETTABLEKS R28 R1 K13 ["Src"]
  GETTABLEKS R27 R28 K40 ["Flags"]
  GETTABLEKS R26 R27 K43 ["getFFlagStudioAvatarAutosetupReportsProgress"]
  CALL R25 1 1
  GETIMPORT R26 K1 [game]
  LOADK R28 K44 ["AvatarPreviewerAutoSetupBetterPivot"]
  LOADB R29 0
  NAMECALL R26 R26 K45 ["DefineFastFlag"]
  CALL R26 3 1
  DUPCLOSURE R27 K46 [PROTO_0]
  DUPCLOSURE R28 K47 [PROTO_1]
  CAPTURE VAL R11
  DUPCLOSURE R29 K48 [PROTO_15]
  CAPTURE VAL R21
  CAPTURE VAL R22
  CAPTURE VAL R8
  CAPTURE VAL R24
  CAPTURE VAL R3
  CAPTURE VAL R23
  CAPTURE VAL R26
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R0
  CAPTURE VAL R20
  CAPTURE VAL R17
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R27
  CAPTURE VAL R18
  CAPTURE VAL R19
  CAPTURE VAL R4
  CAPTURE VAL R25
  CAPTURE VAL R15
  CAPTURE VAL R6
  CAPTURE VAL R11
  CAPTURE VAL R16
  RETURN R29 1