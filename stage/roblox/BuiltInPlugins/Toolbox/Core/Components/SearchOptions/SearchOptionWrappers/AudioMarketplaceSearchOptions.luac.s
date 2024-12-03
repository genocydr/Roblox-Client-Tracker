PROTO_0:
  GETTABLEKS R1 R0 K0 ["uiSortIntent"]
  JUMPIFNOT R1 [+40]
  GETTABLEKS R1 R0 K0 ["uiSortIntent"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["UiSortIntent"]
  GETTABLEKS R2 R3 K2 ["Duration"]
  JUMPIFNOTEQ R1 R2 [+9]
  GETTABLEKS R1 R0 K3 ["sortDirection"]
  JUMPIFNOTEQKNIL R1 [+5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["Relevance"]
  RETURN R1 1
  GETUPVAL R1 2
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETTABLEKS R6 R0 K0 ["uiSortIntent"]
  GETTABLEKS R7 R5 K0 ["uiSortIntent"]
  JUMPIFNOTEQ R6 R7 [+12]
  GETTABLEKS R6 R0 K3 ["sortDirection"]
  JUMPIFEQKNIL R6 [+7]
  GETTABLEKS R6 R0 K3 ["sortDirection"]
  GETTABLEKS R7 R5 K3 ["sortDirection"]
  JUMPIFNOTEQ R6 R7 [+2]
  RETURN R4 1
  FORGLOOP R1 2 [-18]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["UiSortIntent"]
  GETTABLEKS R1 R2 K5 ["Default"]
  RETURN R1 1

PROTO_1:
  DUPTABLE R1 K6 [{"audioTypeKey", "includeUnverifiedCreators", "minDuration", "maxDuration", "sortIntentKey", "searchTerm"}]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+7]
  GETTABLEKS R2 R0 K7 ["initialAudioTypeKey"]
  JUMPIF R2 [+5]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K8 ["All"]
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K0 ["audioTypeKey"]
  GETTABLEKS R2 R0 K1 ["includeUnverifiedCreators"]
  SETTABLEKS R2 R1 K1 ["includeUnverifiedCreators"]
  GETTABLEKS R2 R0 K2 ["minDuration"]
  JUMPIF R2 [+3]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K9 ["MIN_AUDIO_SEARCH_DURATION"]
  SETTABLEKS R2 R1 K2 ["minDuration"]
  GETTABLEKS R2 R0 K3 ["maxDuration"]
  JUMPIF R2 [+3]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K10 ["MAX_AUDIO_SEARCH_DURATION"]
  SETTABLEKS R2 R1 K3 ["maxDuration"]
  GETTABLEKS R2 R0 K11 ["initialSortIntentKey"]
  SETTABLEKS R2 R1 K4 ["sortIntentKey"]
  GETTABLEKS R2 R0 K12 ["initialCreatorName"]
  SETTABLEKS R2 R1 K5 ["searchTerm"]
  RETURN R1 1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Network"]
  GETTABLEKS R2 R3 K2 ["networkInterface"]
  GETTABLEKS R3 R1 K3 ["userSearch"]
  MOVE R4 R2
  MOVE R5 R0
  CALL R3 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  DUPTABLE R4 K2 [{"searchTerm", "extraSearchDetails"}]
  SETTABLEKS R0 R4 K0 ["searchTerm"]
  SETTABLEKS R1 R4 K1 ["extraSearchDetails"]
  NAMECALL R2 R2 K3 ["setState"]
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["debouncedUserSearch"]
  MOVE R3 R0
  CALL R2 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"sortIntentKey"}]
  SETTABLEKS R0 R3 K0 ["sortIntentKey"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+7]
  GETUPVAL R1 1
  DUPTABLE R3 K1 [{"audioTypeKey"}]
  SETTABLEKS R0 R3 K0 ["audioTypeKey"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["state"]
  GETTABLEKS R3 R2 K1 ["minDuration"]
  JUMPIFNOTEQ R0 R3 [+5]
  GETTABLEKS R3 R2 K2 ["maxDuration"]
  JUMPIFEQ R1 R3 [+10]
  GETUPVAL R3 0
  DUPTABLE R5 K3 [{"minDuration", "maxDuration"}]
  SETTABLEKS R0 R5 K1 ["minDuration"]
  SETTABLEKS R1 R5 K2 ["maxDuration"]
  NAMECALL R3 R3 K4 ["setState"]
  CALL R3 2 0
  RETURN R0 0

PROTO_7:
  DUPTABLE R1 K1 [{"includeUnverifiedCreators"}]
  GETTABLEKS R3 R0 K0 ["includeUnverifiedCreators"]
  NOT R2 R3
  SETTABLEKS R2 R1 K0 ["includeUnverifiedCreators"]
  RETURN R1 1

PROTO_8:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIF R0 [+5]
  GETUPVAL R0 1
  DUPCLOSURE R2 K0 [PROTO_7]
  NAMECALL R0 R0 K1 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["sortIntentKey"]
  JUMPIFNOT R3 [+5]
  GETUPVAL R3 1
  GETTABLEKS R4 R1 K2 ["sortIntentKey"]
  GETTABLE R2 R3 R4
  JUMP [+1]
  LOADNIL R2
  JUMPIFNOT R2 [+3]
  GETTABLEKS R3 R2 K3 ["uiSortIntent"]
  JUMP [+3]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K4 ["None"]
  JUMPIFNOT R2 [+6]
  GETTABLEKS R5 R2 K5 ["sortDirection"]
  JUMPIFNOT R5 [+3]
  GETTABLEKS R4 R2 K5 ["sortDirection"]
  JUMP [+3]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K4 ["None"]
  DUPTABLE R5 K8 [{"Creator", "includeUnverifiedCreators", "uiSortIntent", "sortDirection"}]
  GETTABLEKS R6 R1 K9 ["searchTerm"]
  SETTABLEKS R6 R5 K6 ["Creator"]
  GETTABLEKS R6 R1 K7 ["includeUnverifiedCreators"]
  SETTABLEKS R6 R5 K7 ["includeUnverifiedCreators"]
  SETTABLEKS R3 R5 K3 ["uiSortIntent"]
  SETTABLEKS R4 R5 K5 ["sortDirection"]
  GETTABLEKS R6 R1 K10 ["minDuration"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K11 ["MIN_AUDIO_SEARCH_DURATION"]
  JUMPIFNOTEQ R6 R7 [+8]
  GETTABLEKS R6 R1 K12 ["maxDuration"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K13 ["MAX_AUDIO_SEARCH_DURATION"]
  JUMPIFEQ R6 R7 [+12]
  DUPTABLE R6 K14 [{"minDuration", "maxDuration"}]
  GETTABLEKS R7 R1 K10 ["minDuration"]
  SETTABLEKS R7 R6 K10 ["minDuration"]
  GETTABLEKS R7 R1 K12 ["maxDuration"]
  SETTABLEKS R7 R6 K12 ["maxDuration"]
  SETTABLEKS R6 R5 K15 ["AudioSearch"]
  GETUPVAL R6 4
  CALL R6 0 1
  JUMPIFNOT R6 [+20]
  GETTABLEKS R6 R1 K16 ["audioTypeKey"]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K17 ["All"]
  JUMPIFEQ R6 R7 [+14]
  GETTABLEKS R6 R5 K18 ["AdditionalAudioSearch"]
  JUMPIF R6 [+2]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K18 ["AdditionalAudioSearch"]
  GETTABLEKS R6 R5 K18 ["AdditionalAudioSearch"]
  GETTABLEKS R7 R1 K16 ["audioTypeKey"]
  SETTABLEKS R7 R6 K19 ["audioType"]
  GETTABLEKS R6 R1 K20 ["extraSearchDetails"]
  JUMPIFNOT R6 [+22]
  GETIMPORT R6 K22 [next]
  GETTABLEKS R7 R1 K20 ["extraSearchDetails"]
  CALL R6 1 1
  JUMPIFEQKNIL R6 [+16]
  DUPTABLE R6 K25 [{"Name", "Id"}]
  GETTABLEKS R8 R1 K20 ["extraSearchDetails"]
  GETTABLEKS R7 R8 K23 ["Name"]
  SETTABLEKS R7 R6 K23 ["Name"]
  GETTABLEKS R8 R1 K20 ["extraSearchDetails"]
  GETTABLEKS R7 R8 K24 ["Id"]
  SETTABLEKS R7 R6 K24 ["Id"]
  SETTABLEKS R6 R5 K6 ["Creator"]
  RETURN R5 1

PROTO_10:
  GETUPVAL R0 0
  DUPTABLE R2 K7 [{"includeUnverifiedCreators", "minDuration", "maxDuration", "sortIntentKey", "audioTypeKey", "searchTerm", "extraSearchDetails"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["includeUnverifiedCreators"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K8 ["MIN_AUDIO_SEARCH_DURATION"]
  SETTABLEKS R3 R2 K1 ["minDuration"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K9 ["MAX_AUDIO_SEARCH_DURATION"]
  SETTABLEKS R3 R2 K2 ["maxDuration"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K10 ["Relevance"]
  SETTABLEKS R3 R2 K3 ["sortIntentKey"]
  GETUPVAL R4 3
  CALL R4 0 1
  JUMPIFNOT R4 [+4]
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K11 ["All"]
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K4 ["audioTypeKey"]
  LOADK R3 K12 [""]
  SETTABLEKS R3 R2 K5 ["searchTerm"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K6 ["extraSearchDetails"]
  NAMECALL R0 R0 K13 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onReset"]
  CALL R0 0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["props"]
  GETTABLEKS R0 R1 K2 ["OnClose"]
  CALL R0 0 0
  RETURN R0 0

PROTO_12:
  DUPCLOSURE R1 K0 [PROTO_1]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K1 ["getInitState"]
  GETTABLEKS R1 R0 K1 ["getInitState"]
  GETTABLEKS R2 R0 K2 ["props"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["state"]
  GETUPVAL R1 3
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  GETUPVAL R3 4
  CALL R1 2 1
  SETTABLEKS R1 R0 K4 ["debouncedUserSearch"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["updateUserSearch"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K6 ["onSelectSortIntent"]
  NEWCLOSURE R1 P4
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K7 ["onSelectAudioType"]
  NEWCLOSURE R1 P5
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K8 ["onDurationChange"]
  NEWCLOSURE R1 P6
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K9 ["onToggleIdVerified"]
  NEWCLOSURE R1 P7
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U2
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K10 ["getSearchOptions"]
  NEWCLOSURE R1 P8
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U8
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K11 ["onReset"]
  NEWCLOSURE R1 P9
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K12 ["onClose"]
  RETURN R0 0

PROTO_13:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+73]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["includeUnverifiedCreators"]
  GETTABLEKS R3 R1 K0 ["includeUnverifiedCreators"]
  JUMPIFNOTEQ R2 R3 [+60]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["maxDuration"]
  GETTABLEKS R3 R1 K1 ["maxDuration"]
  JUMPIFNOTEQ R2 R3 [+53]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["minDuration"]
  GETTABLEKS R3 R1 K2 ["minDuration"]
  JUMPIFNOTEQ R2 R3 [+46]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["pageInfo"]
  JUMPIFNOT R2 [+5]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["pageInfo"]
  GETTABLEKS R2 R3 K4 ["uiSortIntent"]
  GETTABLEKS R4 R1 K3 ["pageInfo"]
  GETTABLEKS R3 R4 K4 ["uiSortIntent"]
  JUMPIFNOTEQ R2 R3 [+31]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["pageInfo"]
  JUMPIFNOT R2 [+5]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["pageInfo"]
  GETTABLEKS R2 R3 K5 ["sortDirection"]
  GETTABLEKS R4 R1 K3 ["pageInfo"]
  GETTABLEKS R3 R4 K5 ["sortDirection"]
  JUMPIFNOTEQ R2 R3 [+16]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["pageInfo"]
  JUMPIFNOT R2 [+5]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["pageInfo"]
  GETTABLEKS R2 R3 K6 ["additionalAudioSearchInfo"]
  GETTABLEKS R4 R1 K3 ["pageInfo"]
  GETTABLEKS R3 R4 K6 ["additionalAudioSearchInfo"]
  JUMPIFEQ R2 R3 [+65]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K7 ["getInitState"]
  MOVE R3 R1
  CALL R2 1 -1
  RETURN R2 -1
  RETURN R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["includeUnverifiedCreators"]
  GETTABLEKS R3 R1 K0 ["includeUnverifiedCreators"]
  JUMPIFNOTEQ R2 R3 [+45]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["maxDuration"]
  GETTABLEKS R3 R1 K1 ["maxDuration"]
  JUMPIFNOTEQ R2 R3 [+38]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["minDuration"]
  GETTABLEKS R3 R1 K2 ["minDuration"]
  JUMPIFNOTEQ R2 R3 [+31]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["pageInfo"]
  JUMPIFNOT R2 [+5]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["pageInfo"]
  GETTABLEKS R2 R3 K4 ["uiSortIntent"]
  GETTABLEKS R4 R1 K3 ["pageInfo"]
  GETTABLEKS R3 R4 K4 ["uiSortIntent"]
  JUMPIFNOTEQ R2 R3 [+16]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["pageInfo"]
  JUMPIFNOT R2 [+5]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["pageInfo"]
  GETTABLEKS R2 R3 K5 ["sortDirection"]
  GETTABLEKS R4 R1 K3 ["pageInfo"]
  GETTABLEKS R3 R4 K5 ["sortDirection"]
  JUMPIFEQ R2 R3 [+7]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K7 ["getInitState"]
  MOVE R3 R1
  CALL R2 1 -1
  RETURN R2 -1
  RETURN R0 0

PROTO_14:
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  CAPTURE VAL R0
  NAMECALL R3 R0 K0 ["setState"]
  CALL R3 2 0
  RETURN R0 0

PROTO_15:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["categoryName"]
  GETTABLEKS R4 R1 K3 ["Localization"]
  GETTABLEKS R5 R1 K4 ["initialSortIntentKey"]
  GETTABLEKS R6 R1 K5 ["initialAudioTypeKey"]
  GETTABLEKS R7 R2 K6 ["minDuration"]
  GETTABLEKS R8 R2 K7 ["maxDuration"]
  GETTABLEKS R9 R2 K8 ["sortIntentKey"]
  GETTABLEKS R10 R2 K9 ["audioTypeKey"]
  NEWTABLE R11 0 0
  GETUPVAL R12 0
  LOADNIL R13
  LOADNIL R14
  FORGPREP R12
  DUPTABLE R19 K12 [{"Key", "Text"}]
  SETTABLEKS R16 R19 K10 ["Key"]
  LOADK R22 K13 ["SearchOptionsSort"]
  MOVE R23 R16
  NAMECALL R20 R4 K14 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K11 ["Text"]
  FASTCALL2 TABLE_INSERT R11 R19 [+4]
  MOVE R18 R11
  GETIMPORT R17 K17 [table.insert]
  CALL R17 2 0
  FORGLOOP R12 2 [-17]
  NEWTABLE R12 0 0
  GETUPVAL R13 1
  CALL R13 0 1
  JUMPIFNOT R13 [+22]
  GETUPVAL R13 2
  LOADNIL R14
  LOADNIL R15
  FORGPREP R13
  DUPTABLE R20 K12 [{"Key", "Text"}]
  SETTABLEKS R17 R20 K10 ["Key"]
  LOADK R23 K18 ["SearchOptionsType"]
  MOVE R24 R17
  NAMECALL R21 R4 K14 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K11 ["Text"]
  FASTCALL2 TABLE_INSERT R12 R20 [+4]
  MOVE R19 R12
  GETIMPORT R18 K17 [table.insert]
  CALL R18 2 0
  FORGLOOP R13 2 [-17]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K19 ["categoryIsAudio"]
  MOVE R14 R3
  CALL R13 1 1
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K20 ["new"]
  CALL R14 0 1
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K21 ["createElement"]
  GETUPVAL R16 6
  DUPTABLE R17 K25 [{"GetSearchOptions", "OnClose", "OnReset"}]
  GETTABLEKS R18 R0 K26 ["getSearchOptions"]
  SETTABLEKS R18 R17 K22 ["GetSearchOptions"]
  GETTABLEKS R18 R0 K27 ["onClose"]
  SETTABLEKS R18 R17 K23 ["OnClose"]
  GETTABLEKS R18 R0 K28 ["onReset"]
  SETTABLEKS R18 R17 K24 ["OnReset"]
  DUPTABLE R18 K33 [{"Creator", "AudioSearchHeader", "AudioTypeSelect", "SortBy"}]
  GETUPVAL R20 5
  GETTABLEKS R19 R20 K21 ["createElement"]
  GETUPVAL R20 7
  DUPTABLE R21 K36 [{"Header", "LayoutOrder"}]
  LOADK R24 K37 ["General"]
  LOADK R25 K38 ["SearchOptionCreator"]
  NAMECALL R22 R4 K14 ["getText"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K34 ["Header"]
  NAMECALL R22 R14 K39 ["getNextOrder"]
  CALL R22 1 1
  SETTABLEKS R22 R21 K35 ["LayoutOrder"]
  DUPTABLE R22 K42 [{"CheckboxAndDescriptionContainer", "SearchBar"}]
  GETUPVAL R24 8
  CALL R24 0 1
  NOT R23 R24
  JUMPIFNOT R23 [+19]
  GETUPVAL R24 5
  GETTABLEKS R23 R24 K21 ["createElement"]
  GETUPVAL R24 9
  DUPTABLE R25 K45 [{"LayoutOrder", "IsChecked", "OnClick"}]
  NAMECALL R26 R14 K39 ["getNextOrder"]
  CALL R26 1 1
  SETTABLEKS R26 R25 K35 ["LayoutOrder"]
  GETTABLEKS R26 R2 K46 ["includeUnverifiedCreators"]
  SETTABLEKS R26 R25 K43 ["IsChecked"]
  GETTABLEKS R26 R0 K47 ["onToggleIdVerified"]
  SETTABLEKS R26 R25 K44 ["OnClick"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K40 ["CheckboxAndDescriptionContainer"]
  GETUPVAL R24 5
  GETTABLEKS R23 R24 K21 ["createElement"]
  GETUPVAL R24 10
  DUPTABLE R25 K53 [{"defaultTextKey", "searchTerm", "results", "updateSearch", "width", "LayoutOrder"}]
  LOADK R26 K54 ["SearchBarCreatorText"]
  SETTABLEKS R26 R25 K48 ["defaultTextKey"]
  GETTABLEKS R26 R2 K49 ["searchTerm"]
  SETTABLEKS R26 R25 K49 ["searchTerm"]
  GETTABLEKS R27 R1 K55 ["liveSearchData"]
  GETTABLEKS R26 R27 K50 ["results"]
  SETTABLEKS R26 R25 K50 ["results"]
  GETTABLEKS R26 R0 K56 ["updateUserSearch"]
  SETTABLEKS R26 R25 K51 ["updateSearch"]
  GETUPVAL R27 11
  GETTABLEKS R26 R27 K57 ["SEARCH_BAR_WIDTH"]
  SETTABLEKS R26 R25 K52 ["width"]
  NAMECALL R26 R14 K39 ["getNextOrder"]
  CALL R26 1 1
  SETTABLEKS R26 R25 K35 ["LayoutOrder"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K41 ["SearchBar"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K29 ["Creator"]
  MOVE R19 R13
  JUMPIFNOT R19 [+35]
  GETUPVAL R20 5
  GETTABLEKS R19 R20 K21 ["createElement"]
  GETUPVAL R20 7
  DUPTABLE R21 K36 [{"Header", "LayoutOrder"}]
  LOADK R24 K37 ["General"]
  LOADK R25 K58 ["SearchOptionAudioLength"]
  NAMECALL R22 R4 K14 ["getText"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K34 ["Header"]
  NAMECALL R22 R14 K39 ["getNextOrder"]
  CALL R22 1 1
  SETTABLEKS R22 R21 K35 ["LayoutOrder"]
  DUPTABLE R22 K60 [{"AudioSearch"}]
  GETUPVAL R24 5
  GETTABLEKS R23 R24 K21 ["createElement"]
  GETUPVAL R24 12
  DUPTABLE R25 K62 [{"minDuration", "maxDuration", "onDurationChange"}]
  SETTABLEKS R7 R25 K6 ["minDuration"]
  SETTABLEKS R8 R25 K7 ["maxDuration"]
  GETTABLEKS R26 R0 K61 ["onDurationChange"]
  SETTABLEKS R26 R25 K61 ["onDurationChange"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K59 ["AudioSearch"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K30 ["AudioSearchHeader"]
  GETUPVAL R19 1
  CALL R19 0 1
  JUMPIFNOT R19 [+40]
  GETUPVAL R20 5
  GETTABLEKS R19 R20 K21 ["createElement"]
  GETUPVAL R20 7
  DUPTABLE R21 K64 [{"Header", "LayoutOrder", "HideLowerSeparator"}]
  LOADK R24 K37 ["General"]
  LOADK R25 K65 ["SearchOptionAudioType"]
  NAMECALL R22 R4 K14 ["getText"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K34 ["Header"]
  NAMECALL R22 R14 K39 ["getNextOrder"]
  CALL R22 1 1
  SETTABLEKS R22 R21 K35 ["LayoutOrder"]
  LOADB R22 1
  SETTABLEKS R22 R21 K63 ["HideLowerSeparator"]
  DUPTABLE R22 K67 [{"RadioButtons"}]
  GETUPVAL R24 5
  GETTABLEKS R23 R24 K21 ["createElement"]
  GETUPVAL R24 13
  DUPTABLE R25 K71 [{"Buttons", "CurrentSelectedKey", "OnClick", "SelectedKey"}]
  SETTABLEKS R12 R25 K68 ["Buttons"]
  SETTABLEKS R10 R25 K69 ["CurrentSelectedKey"]
  GETTABLEKS R26 R0 K72 ["onSelectAudioType"]
  SETTABLEKS R26 R25 K44 ["OnClick"]
  SETTABLEKS R6 R25 K70 ["SelectedKey"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K66 ["RadioButtons"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K31 ["AudioTypeSelect"]
  GETUPVAL R20 5
  GETTABLEKS R19 R20 K21 ["createElement"]
  GETUPVAL R20 7
  DUPTABLE R21 K64 [{"Header", "LayoutOrder", "HideLowerSeparator"}]
  LOADK R24 K37 ["General"]
  LOADK R25 K73 ["SearchOptionSort"]
  NAMECALL R22 R4 K14 ["getText"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K34 ["Header"]
  NAMECALL R22 R14 K39 ["getNextOrder"]
  CALL R22 1 1
  SETTABLEKS R22 R21 K35 ["LayoutOrder"]
  LOADB R22 1
  SETTABLEKS R22 R21 K63 ["HideLowerSeparator"]
  DUPTABLE R22 K67 [{"RadioButtons"}]
  GETUPVAL R24 5
  GETTABLEKS R23 R24 K21 ["createElement"]
  GETUPVAL R24 13
  DUPTABLE R25 K74 [{"Buttons", "CurrentSelectedKey", "SelectedKey", "OnClick"}]
  SETTABLEKS R11 R25 K68 ["Buttons"]
  SETTABLEKS R9 R25 K69 ["CurrentSelectedKey"]
  SETTABLEKS R5 R25 K70 ["SelectedKey"]
  GETTABLEKS R26 R0 K75 ["onSelectSortIntent"]
  SETTABLEKS R26 R25 K44 ["OnClick"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K66 ["RadioButtons"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K32 ["SortBy"]
  CALL R15 3 -1
  RETURN R15 -1

PROTO_16:
  MOVE R1 R0
  JUMPIF R1 [+2]
  NEWTABLE R1 0 0
  MOVE R0 R1
  GETTABLEKS R1 R0 K0 ["pageInfo"]
  JUMPIF R1 [+2]
  NEWTABLE R1 0 0
  GETTABLEKS R2 R1 K1 ["audioSearchInfo"]
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  GETTABLEKS R3 R1 K2 ["additionalAudioSearchInfo"]
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  GETTABLEKS R5 R0 K3 ["liveSearch"]
  JUMPIFNOT R5 [+14]
  DUPTABLE R4 K6 [{"searchTerm", "results"}]
  GETTABLEKS R6 R0 K3 ["liveSearch"]
  GETTABLEKS R5 R6 K4 ["searchTerm"]
  SETTABLEKS R5 R4 K4 ["searchTerm"]
  GETTABLEKS R6 R0 K3 ["liveSearch"]
  GETTABLEKS R5 R6 K5 ["results"]
  SETTABLEKS R5 R4 K5 ["results"]
  JUMP [+1]
  LOADNIL R4
  GETTABLEKS R6 R1 K7 ["creator"]
  JUMPIFNOT R6 [+5]
  GETTABLEKS R6 R1 K7 ["creator"]
  GETTABLEKS R5 R6 K8 ["Name"]
  JUMP [+1]
  LOADK R5 K9 [""]
  GETUPVAL R6 0
  MOVE R7 R1
  CALL R6 1 1
  DUPTABLE R7 K18 [{"categoryName", "includeUnverifiedCreators", "initialAudioTypeKey", "initialSortIntentKey", "initialCreatorName", "liveSearchData", "maxDuration", "minDuration", "pageInfo"}]
  GETTABLEKS R8 R1 K10 ["categoryName"]
  JUMPIF R8 [+5]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K19 ["DEFAULT"]
  GETTABLEKS R8 R9 K20 ["name"]
  SETTABLEKS R8 R7 K10 ["categoryName"]
  GETTABLEKS R8 R1 K11 ["includeUnverifiedCreators"]
  SETTABLEKS R8 R7 K11 ["includeUnverifiedCreators"]
  GETTABLEKS R8 R3 K21 ["audioType"]
  SETTABLEKS R8 R7 K12 ["initialAudioTypeKey"]
  SETTABLEKS R6 R7 K13 ["initialSortIntentKey"]
  SETTABLEKS R5 R7 K14 ["initialCreatorName"]
  SETTABLEKS R4 R7 K15 ["liveSearchData"]
  GETTABLEKS R8 R2 K16 ["maxDuration"]
  SETTABLEKS R8 R7 K16 ["maxDuration"]
  GETTABLEKS R8 R2 K17 ["minDuration"]
  SETTABLEKS R8 R7 K17 ["minDuration"]
  SETTABLEKS R1 R7 K0 ["pageInfo"]
  RETURN R7 1

PROTO_17:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_18:
  DUPTABLE R1 K1 [{"userSearch"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["userSearch"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Packages"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R1 K9 ["RoactRodux"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R6 R1 K10 ["Framework"]
  CALL R5 1 1
  GETTABLEKS R7 R0 K11 ["Core"]
  GETTABLEKS R6 R7 K12 ["Util"]
  GETIMPORT R7 K6 [require]
  GETTABLEKS R8 R6 K13 ["Constants"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R9 R6 K14 ["debounce"]
  CALL R8 1 1
  GETTABLEKS R9 R5 K15 ["ContextServices"]
  GETTABLEKS R10 R9 K16 ["withContext"]
  GETIMPORT R11 K6 [require]
  GETTABLEKS R14 R0 K11 ["Core"]
  GETTABLEKS R13 R14 K15 ["ContextServices"]
  GETTABLEKS R12 R13 K17 ["NetworkContext"]
  CALL R11 1 1
  GETIMPORT R12 K6 [require]
  GETTABLEKS R16 R0 K11 ["Core"]
  GETTABLEKS R15 R16 K18 ["Networking"]
  GETTABLEKS R14 R15 K19 ["Requests"]
  GETTABLEKS R13 R14 K20 ["UserSearchRequest"]
  CALL R12 1 1
  GETIMPORT R13 K6 [require]
  GETTABLEKS R17 R0 K11 ["Core"]
  GETTABLEKS R16 R17 K21 ["Components"]
  GETTABLEKS R15 R16 K22 ["Audio"]
  GETTABLEKS R14 R15 K23 ["AudioSearch"]
  CALL R13 1 1
  GETIMPORT R14 K6 [require]
  GETTABLEKS R18 R0 K11 ["Core"]
  GETTABLEKS R17 R18 K21 ["Components"]
  GETTABLEKS R16 R17 K24 ["SearchOptions"]
  GETTABLEKS R15 R16 K25 ["LiveSearchBar"]
  CALL R14 1 1
  GETIMPORT R15 K6 [require]
  GETTABLEKS R19 R0 K11 ["Core"]
  GETTABLEKS R18 R19 K21 ["Components"]
  GETTABLEKS R17 R18 K24 ["SearchOptions"]
  GETTABLEKS R16 R17 K26 ["SearchOptionsEntry"]
  CALL R15 1 1
  GETIMPORT R16 K6 [require]
  GETTABLEKS R20 R0 K11 ["Core"]
  GETTABLEKS R19 R20 K21 ["Components"]
  GETTABLEKS R18 R19 K24 ["SearchOptions"]
  GETTABLEKS R17 R18 K27 ["SearchOptionsLayout"]
  CALL R16 1 1
  GETIMPORT R17 K6 [require]
  GETTABLEKS R21 R0 K11 ["Core"]
  GETTABLEKS R20 R21 K21 ["Components"]
  GETTABLEKS R19 R20 K24 ["SearchOptions"]
  GETTABLEKS R18 R19 K28 ["VerfifiedCreatorCheckbox"]
  CALL R17 1 1
  GETIMPORT R18 K6 [require]
  GETTABLEKS R21 R0 K11 ["Core"]
  GETTABLEKS R20 R21 K29 ["Reducers"]
  GETTABLEKS R19 R20 K30 ["PageInfo"]
  CALL R18 1 1
  GETTABLEKS R20 R5 K31 ["UI"]
  GETTABLEKS R19 R20 K32 ["RadioButtonList"]
  GETTABLEKS R21 R5 K12 ["Util"]
  GETTABLEKS R20 R21 K33 ["LayoutOrderIterator"]
  GETIMPORT R21 K6 [require]
  GETTABLEKS R24 R0 K11 ["Core"]
  GETTABLEKS R23 R24 K34 ["Types"]
  GETTABLEKS R22 R23 K35 ["BackendTypes"]
  CALL R21 1 1
  GETIMPORT R22 K6 [require]
  GETTABLEKS R25 R0 K11 ["Core"]
  GETTABLEKS R24 R25 K34 ["Types"]
  GETTABLEKS R23 R24 K36 ["Category"]
  CALL R22 1 1
  GETIMPORT R23 K6 [require]
  GETTABLEKS R26 R0 K11 ["Core"]
  GETTABLEKS R25 R26 K34 ["Types"]
  GETTABLEKS R24 R25 K37 ["SearchOptionsTypes"]
  CALL R23 1 1
  GETIMPORT R24 K39 [game]
  LOADK R26 K40 ["ToolboxLiveSearchDebounceWait"]
  NAMECALL R24 R24 K41 ["GetFastInt"]
  CALL R24 2 1
  GETIMPORT R25 K6 [require]
  GETTABLEKS R29 R0 K11 ["Core"]
  GETTABLEKS R28 R29 K12 ["Util"]
  GETTABLEKS R27 R28 K42 ["SharedFlags"]
  GETTABLEKS R26 R27 K43 ["getFFlagToolboxAddAudioTypeFiltering"]
  CALL R25 1 1
  GETIMPORT R26 K6 [require]
  GETTABLEKS R30 R0 K11 ["Core"]
  GETTABLEKS R29 R30 K12 ["Util"]
  GETTABLEKS R28 R29 K42 ["SharedFlags"]
  GETTABLEKS R27 R28 K44 ["getFFlagToolboxAudioUpdateLandingPage"]
  CALL R26 1 1
  GETIMPORT R27 K39 [game]
  LOADK R29 K45 ["StudioAudioNewTrendingSort"]
  LOADB R30 0
  NAMECALL R27 R27 K46 ["DefineFastFlag"]
  CALL R27 3 0
  DUPTABLE R27 K50 [{"All", "Music", "SoundEffect"}]
  LOADK R28 K47 ["All"]
  SETTABLEKS R28 R27 K47 ["All"]
  LOADK R28 K48 ["Music"]
  SETTABLEKS R28 R27 K48 ["Music"]
  LOADK R28 K49 ["SoundEffect"]
  SETTABLEKS R28 R27 K49 ["SoundEffect"]
  NEWTABLE R28 0 3
  GETTABLEKS R29 R27 K47 ["All"]
  GETTABLEKS R30 R27 K48 ["Music"]
  GETTABLEKS R31 R27 K49 ["SoundEffect"]
  SETLIST R28 R29 3 [1]
  DUPTABLE R29 K57 [{"LongestToShortest", "MostUsed", "New", "Relevance", "ShortestToLongest", "Trending"}]
  LOADK R30 K51 ["LongestToShortest"]
  SETTABLEKS R30 R29 K51 ["LongestToShortest"]
  LOADK R30 K52 ["MostUsed"]
  SETTABLEKS R30 R29 K52 ["MostUsed"]
  LOADK R30 K53 ["New"]
  SETTABLEKS R30 R29 K53 ["New"]
  LOADK R30 K54 ["Relevance"]
  SETTABLEKS R30 R29 K54 ["Relevance"]
  LOADK R30 K55 ["ShortestToLongest"]
  SETTABLEKS R30 R29 K55 ["ShortestToLongest"]
  LOADK R30 K56 ["Trending"]
  SETTABLEKS R30 R29 K56 ["Trending"]
  GETIMPORT R31 K39 [game]
  LOADK R33 K45 ["StudioAudioNewTrendingSort"]
  NAMECALL R31 R31 K58 ["GetFastFlag"]
  CALL R31 2 1
  JUMPIFNOT R31 [+17]
  NEWTABLE R30 0 6
  GETTABLEKS R31 R29 K54 ["Relevance"]
  GETTABLEKS R32 R29 K52 ["MostUsed"]
  GETTABLEKS R33 R29 K56 ["Trending"]
  GETTABLEKS R34 R29 K53 ["New"]
  GETTABLEKS R35 R29 K55 ["ShortestToLongest"]
  GETTABLEKS R36 R29 K51 ["LongestToShortest"]
  SETLIST R30 R31 6 [1]
  JUMP [+12]
  NEWTABLE R30 0 4
  GETTABLEKS R31 R29 K54 ["Relevance"]
  GETTABLEKS R32 R29 K52 ["MostUsed"]
  GETTABLEKS R33 R29 K55 ["ShortestToLongest"]
  GETTABLEKS R34 R29 K51 ["LongestToShortest"]
  SETLIST R30 R31 4 [1]
  NEWTABLE R31 8 0
  GETTABLEKS R32 R29 K54 ["Relevance"]
  DUPTABLE R33 K60 [{"uiSortIntent"}]
  GETTABLEKS R35 R21 K61 ["UiSortIntent"]
  GETTABLEKS R34 R35 K54 ["Relevance"]
  SETTABLEKS R34 R33 K59 ["uiSortIntent"]
  SETTABLE R33 R31 R32
  GETTABLEKS R32 R29 K52 ["MostUsed"]
  DUPTABLE R33 K60 [{"uiSortIntent"}]
  GETTABLEKS R35 R21 K61 ["UiSortIntent"]
  GETTABLEKS R34 R35 K62 ["MostTaken"]
  SETTABLEKS R34 R33 K59 ["uiSortIntent"]
  SETTABLE R33 R31 R32
  GETTABLEKS R32 R29 K56 ["Trending"]
  DUPTABLE R33 K60 [{"uiSortIntent"}]
  GETTABLEKS R35 R21 K61 ["UiSortIntent"]
  GETTABLEKS R34 R35 K56 ["Trending"]
  SETTABLEKS R34 R33 K59 ["uiSortIntent"]
  SETTABLE R33 R31 R32
  GETTABLEKS R32 R29 K53 ["New"]
  DUPTABLE R33 K64 [{"uiSortIntent", "sortDirection"}]
  GETTABLEKS R35 R21 K61 ["UiSortIntent"]
  GETTABLEKS R34 R35 K65 ["DateCreated"]
  SETTABLEKS R34 R33 K59 ["uiSortIntent"]
  GETTABLEKS R35 R21 K66 ["SortDirection"]
  GETTABLEKS R34 R35 K67 ["Descending"]
  SETTABLEKS R34 R33 K63 ["sortDirection"]
  SETTABLE R33 R31 R32
  GETTABLEKS R32 R29 K55 ["ShortestToLongest"]
  DUPTABLE R33 K64 [{"uiSortIntent", "sortDirection"}]
  GETTABLEKS R35 R21 K61 ["UiSortIntent"]
  GETTABLEKS R34 R35 K68 ["Duration"]
  SETTABLEKS R34 R33 K59 ["uiSortIntent"]
  GETTABLEKS R35 R21 K66 ["SortDirection"]
  GETTABLEKS R34 R35 K69 ["Ascending"]
  SETTABLEKS R34 R33 K63 ["sortDirection"]
  SETTABLE R33 R31 R32
  GETTABLEKS R32 R29 K51 ["LongestToShortest"]
  DUPTABLE R33 K64 [{"uiSortIntent", "sortDirection"}]
  GETTABLEKS R35 R21 K61 ["UiSortIntent"]
  GETTABLEKS R34 R35 K68 ["Duration"]
  SETTABLEKS R34 R33 K59 ["uiSortIntent"]
  GETTABLEKS R35 R21 K66 ["SortDirection"]
  GETTABLEKS R34 R35 K67 ["Descending"]
  SETTABLEKS R34 R33 K63 ["sortDirection"]
  SETTABLE R33 R31 R32
  DUPCLOSURE R32 K70 [PROTO_0]
  CAPTURE VAL R21
  CAPTURE VAL R29
  CAPTURE VAL R31
  GETTABLEKS R33 R3 K71 ["PureComponent"]
  LOADK R35 K72 ["AudioMarketplaceSearchOptions"]
  NAMECALL R33 R33 K73 ["extend"]
  CALL R33 2 1
  DUPCLOSURE R34 K74 [PROTO_12]
  CAPTURE VAL R25
  CAPTURE VAL R27
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R24
  CAPTURE VAL R26
  CAPTURE VAL R31
  CAPTURE VAL R2
  CAPTURE VAL R29
  SETTABLEKS R34 R33 K75 ["init"]
  DUPCLOSURE R34 K76 [PROTO_14]
  CAPTURE VAL R25
  SETTABLEKS R34 R33 K77 ["didUpdate"]
  DUPCLOSURE R34 K78 [PROTO_15]
  CAPTURE VAL R30
  CAPTURE VAL R25
  CAPTURE VAL R28
  CAPTURE VAL R22
  CAPTURE VAL R20
  CAPTURE VAL R3
  CAPTURE VAL R16
  CAPTURE VAL R15
  CAPTURE VAL R26
  CAPTURE VAL R17
  CAPTURE VAL R14
  CAPTURE VAL R7
  CAPTURE VAL R13
  CAPTURE VAL R19
  SETTABLEKS R34 R33 K79 ["render"]
  MOVE R34 R10
  DUPTABLE R35 K82 [{"Localization", "Network"}]
  GETTABLEKS R36 R9 K80 ["Localization"]
  SETTABLEKS R36 R35 K80 ["Localization"]
  SETTABLEKS R11 R35 K81 ["Network"]
  CALL R34 1 1
  MOVE R35 R33
  CALL R34 1 1
  MOVE R33 R34
  DUPCLOSURE R34 K83 [PROTO_16]
  CAPTURE VAL R32
  CAPTURE VAL R22
  DUPCLOSURE R35 K84 [PROTO_18]
  CAPTURE VAL R12
  GETTABLEKS R36 R4 K85 ["connect"]
  MOVE R37 R34
  MOVE R38 R35
  CALL R36 2 1
  MOVE R37 R33
  CALL R36 1 -1
  RETURN R36 -1