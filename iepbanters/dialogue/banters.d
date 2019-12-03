// --------------------------------------
// IEP Extended NPC-NPC Interaction
//
// Directory: IEP/Banters
// Prefix:    I#B
// --------------------------------------


// --------------------------------------
// Aerie Initiated Banters
// --------------------------------------

// Anomen

// 1 Anomen pretest
CHAIN IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("Anomen",CD_STATE_NOTVALID)
CombatCounter(0)
Global("AnomenIsKnight","GLOBAL",0)
Global("AnomenIsNotKnight","GLOBAL",0)
Global("I#B_AerieAnomen","GLOBAL",0)~ THEN BAERIE I#B_AerieAnomen_1
@0 
DO ~SetGlobal("I#B_AerieAnomen","GLOBAL",1)~
== BANOMEN @1
== BAERIE @2
== BANOMEN @3
== BAERIE @4
== BANOMEN @5
== BAERIE @6
== BANOMEN @7
== BAERIE @8
== BANOMEN @9
== BAERIE @10
== BANOMEN @11
EXIT

// Sir Anomen 1
CHAIN IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("Anomen",CD_STATE_NOTVALID)
CombatCounter(0)
Global("AnomenIsKnight","GLOBAL",1)
Global("I#B_AerieSirAnomen","GLOBAL",0)~ THEN BAERIE I#B_AerieSirAnomen_1
@12 
DO ~SetGlobal("I#B_AerieSirAnomen","GLOBAL",1)~
== BANOMEN @13
== BAERIE @14
== BANOMEN @15
EXIT

// Cernd

// Edwin

// Haer'Dalis

// Imoen
// 1.
CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("Aerie",CD_STATE_NOTVALID)
CombatCounter(0)
Global("I#B_AerieImoen","GLOBAL",0)~ THEN BAERIE I#B_AerieImoen_1
@468 
DO ~IncrementGlobal("I#B_AerieImoen","GLOBAL",1)~
== BIMOEN2 @469
== BAERIE IF ~Global("I#B_ImoenKalahInParty","GLOBAL",0)~ THEN @470
== BIMOEN2 IF ~Global("I#B_ImoenKalahInParty","GLOBAL",0)~ THEN @471
== BAERIE IF ~Global("I#B_ImoenKalahInParty","GLOBAL",1)~ THEN @472
== BIMOEN2 IF ~Global("I#B_ImoenKalahInParty","GLOBAL",1)~ THEN @473
== BAERIE @474
== BIMOEN2 @475
EXIT

// 2.
CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("Aerie",CD_STATE_NOTVALID)
CombatCounter(0)
Global("I#B_AerieImoen","GLOBAL",1)~ THEN BAERIE I#B_AerieImoen_2
@476 
DO ~IncrementGlobal("I#B_AerieImoen","GLOBAL",1)~
== BIMOEN2 @477
= @478
== BAERIE @479
== BIMOEN2 @480
== BAERIE @481
== BIMOEN2 @482
EXIT

// Jaheira

// Jan

// Keldorn

// Korgan

// Mazzy

// Aerie/Mazzy 1
CHAIN IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("Mazzy",CD_STATE_NOTVALID)
CombatCounter(0)
Global("I#B_AerieMazzy","GLOBAL",0)~ THEN BAERIE I#B_AerieMazzy_1
@16 
DO ~SetGlobal("I#B_AerieMazzy","GLOBAL",1)~
== BMAZZY @17
== BAERIE @18
== BMAZZY @19
== BMAZZY @20
== BAERIE @21
== BMAZZY @22
== BAERIE @23
== BMAZZY @24
== BAERIE @25
EXIT

// Aerie/Mazzy City
CHAIN IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("Mazzy",CD_STATE_NOTVALID)
CombatCounter(0)
AreaType(CITY)
Global("I#B_AerieMazzy_City","GLOBAL",0)~ THEN BAERIE I#B_AerieMazzy_City
@26 
DO ~SetGlobal("I#B_AerieMazzy_City","GLOBAL",1)~
== BMAZZY @27
== BAERIE @28
== BMAZZY @29
== BAERIE @30
== BANOMEN IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @31
== BMAZZY @32
== BKELDOR IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @33
== BAERIE @34
== BMAZZY @35
== BAERIE @36
== BMAZZY @37
== BAERIE @38
== BMAZZY @39
EXIT

// Aerie/Mazzy Forest
CHAIN IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("Mazzy",CD_STATE_NOTVALID)
CombatCounter(0)
AreaType(FOREST)
Global("I#B_AerieMazzy_Forest","GLOBAL",0)~ THEN BAERIE I#B_AerieMazzy_Forest
@40 
DO ~SetGlobal("I#B_AerieMazzy_Forest","GLOBAL",1)~
== BMAZZY @41
== BAERIE @42
= @43
== BMAZZY @44
== BAERIE @45
== BMAZZY @46
== BAERIE @47
== BMAZZY @48
== BAERIE @49
== BMAZZY @50
EXIT

// Aerie's health less than 50%
CHAIN IF ~Global("I#B_AerieMazzy_AerieHurt","GLOBAL",1)~ THEN AERIEJ I#B_AerieMazzy_AerieHurt
@51 
DO ~SetGlobal("I#B_AerieMazzy_AerieHurt","GLOBAL",2)~
== MAZZYJ @52
== AERIEJ @53
== MAZZYJ @54
== AERIEJ @55
EXIT

// Mazzy's health less than 70%
CHAIN IF ~Global("I#B_AerieMazzy_MazzyHurt","GLOBAL",1)~ THEN AERIEJ I#B_AerieMazzy_MazzyHurt
@56 
DO ~SetGlobal("I#B_AerieMazzy_MazzyHurt","GLOBAL",2)~
== MAZZYJ @57
== AERIEJ @58
DO ~ActionOverride("Aerie",ForceSpell("Mazzy",CLERIC_CURE_MEDIUM_WOUNDS))~
== MAZZYJ @59
EXIT

// Minsc

// 1
CHAIN IF ~InParty("Minsc")
Range("Minsc",30)
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("Aerie",CD_STATE_NOTVALID)
CombatCounter(0)
Global("I#B_MinscAerie","GLOBAL",0)
Global("BMinsc4","GLOBAL",1)~ THEN BAERIE I#B_MinscAerie_1
@60 
DO ~SetGlobal("I#B_MinscAerie","GLOBAL",1)~
== BMINSC @61
= @62
= @63
== BAERIE @64
== BMINSC @65
== BAERIE @66
== BMINSC @67
= @68
== BAERIE @69
== BMINSC @70
== BAERIE @71
== BMINSC @72
== BAERIE @73
== BMINSC @74
== BAERIE @75
EXIT

// 3
CHAIN IF ~InParty("Minsc")
Range("Minsc",30)
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("Aerie",CD_STATE_NOTVALID)
CombatCounter(0)
Global("I#B_MinscAerie","GLOBAL",2) ~ THEN BAERIE I#B_MinscAerie_3
@76 
DO ~SetGlobal("I#B_MinscAerie","GLOBAL",3)~
== BMINSC @77
== BAERIE @78
== BMINSC @79
== BAERIE @80
== BMINSC @81
== BAERIE @82
== BMINSC @83
== BAERIE @84
== BMINSC @85
== BAERIE @86
EXIT

// 4
CHAIN IF ~InParty("Minsc")
Range("Minsc",30)
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("Aerie",CD_STATE_NOTVALID)
CombatCounter(0)
Global("I#B_MinscAerie","GLOBAL",3)~ THEN BAERIE I#B_MinscAerie_4
@87 
DO ~SetGlobal("I#B_MinscAerie","GLOBAL",4)~
== BMINSC @88
== BAERIE @89
== BMINSC @90
== BAERIE @91
== BMINSC @92
== BAERIE @93
= @94
== BMINSC @95
== BAERIE @96
EXIT

// Nalia

// Valygar
// Aerie/Valygar 1
CHAIN IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("Valygar",CD_STATE_NOTVALID)
CombatCounter(0)
Global("I#B_AerieValygar","GLOBAL",0)~ THEN BAERIE I#B_AerieValygar_1
@97 
DO ~SetGlobal("I#B_AerieValygar","GLOBAL",1)~
== BVALYGA @98
== BAERIE @99
== BVALYGA @100
= @101
== BAERIE @102
== BVALYGA @103
EXIT

// Viconia

// Yoshimo


// --------------------------------------
// Anomen Initiated Banters
// --------------------------------------

// Aerie

// Cernd

// Edwin

// Haer'Dalis

// Imoen

// Jaheira

// Jan

// Keldorn

// Korgan

// Mazzy

// Minsc
CHAIN
IF ~InParty("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
!Global("AnomenIsKnight","GLOBAL",1)
!Global("AnomenIsNotKnight","GLOBAL",1)
Global("I#B_AnoMinWorry","GLOBAL",0)
See("Minsc")
CombatCounter(0)
!See([ENEMY])~
THEN BANOMEN I#B_AnoMinWorry
@104 
DO ~SetGlobal("I#B_AnoMinWorry","GLOBAL",1)~
== BMINSC @105
= @106
== BANOMEN @107
== BMINSC @108
= @109
= @110
== BANOMEN @111
== BMINSC @112
EXIT

// Nalia

// Valygar

// Viconia

// Yoshimo

// --------------------------------------
// Cernd Initiated Banters
// --------------------------------------

// Aerie

// Anomen

// Edwin

// Haer'Dalis

// Imoen
CHAIN IF ~InParty("Imoen2")
Range("Imoen2",30)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("Cernd",CD_STATE_NOTVALID)
CombatCounter(0)
Global("I#B_CerndImoen","GLOBAL",0)~ THEN BCERND I#B_CerndImoen_1
@113 
DO ~SetGlobal("I#B_CerndImoen","GLOBAL",1)~
== BIMOEN2 @114
== BCERND @115
== BIMOEN2 @116
== BCERND @117
== BIMOEN2 @118
== BCERND @119
EXIT

// Jaheira

// Jan

// Keldorn

// Korgan

// Mazzy

// Minsc

// Nalia

// Valygar

// Viconia

// Yoshimo

// --------------------------------------
// Edwin Initiated Banters
// --------------------------------------

// Aerie

// Anomen

// Cernd

// Haer'Dalis

// Imoen

// Jaheira

// Jan

// Keldorn

// Korgan

// Mazzy

// Minsc

// Nalia

// Valygar

// Viconia

// 2
CHAIN IF ~%BG2_VAR%
InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("Edwin",CD_STATE_NOTVALID)
CombatCounter(0)
Global("I#B_EdwinViconia","GLOBAL",1)~ THEN BEDWIN I#B_EdwinViconia_2
@120 
DO ~SetGlobal("I#B_EdwinViconia","GLOBAL",2)~
== BVICONI @121
== BEDWIN @122
== BVICONI @123
EXIT

// 4
CHAIN IF ~%BG2_VAR%
InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("Edwin",CD_STATE_NOTVALID)
CombatCounter(0)
Global("I#B_EdwinViconia","GLOBAL",3)~ THEN BEDWIN I#B_EdwinViconia_4
@124 
DO ~SetGlobal("I#B_EdwinViconia","GLOBAL",4)~
== BVICONI @125
== BEDWIN @126
== BVICONI @127
EXIT



// Yoshimo

// --------------------------------------
// Haer'Dalis Initiated Banters
// --------------------------------------

// Aerie

// Anomen

// Cernd

// Edwin

// Imoen

// 1
CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
CombatCounter(0)
Global("I#B_HaerImoen","GLOBAL",0)~ THEN BHAERDA I#B_HaerImoen_1
@128 
DO ~SetGlobal("I#B_HaerImoen","GLOBAL",1)~
== BIMOEN2 @129
== BHAERDA @130
== BIMOEN2 @131
== BHAERDA @132
== BIMOEN2 @133
= @134
== BHAERDA @135
== BIMOEN2 @136
== BHAERDA @137
== BIMOEN2 @138
EXIT

// Jaheira

// Jan

// Keldorn

// Korgan

// Mazzy

// Minsc

// Nalia

// Valygar

// Viconia

// Yoshimo

// --------------------------------------
// Imoen Initiated Banters
// --------------------------------------

// Aerie
// 3.
CHAIN IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("I#B_ImoenAerie","GLOBAL",2)~ THEN BIMOEN2 I#B_ImoenAerie_3
@483 
DO ~IncrementGlobal("I#B_ImoenAerie","GLOBAL",1)~
== BAERIE @484
== BIMOEN2 @485
= @486
== BAERIE @487
== BIMOEN2 @488
== BAERIE @489
== BIMOEN2 @490
== BAERIE @491
= @492
== BIMOEN2 @493
= @494
EXIT

// Anomen

// Cernd

// Edwin

// Haer'Dalis

// Jaheira

// Jan

// Keldorn

// Korgan
// 2
CHAIN IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("I#B_ImoenKorgan","GLOBAL",1)~ THEN BIMOEN2 I#B_ImoenKorgan_2
@495 
DO ~IncrementGlobal("I#B_ImoenKorgan","GLOBAL",1)~
== BKORGAN @496
== BIMOEN2 @497
== BKORGAN @498
== BIMOEN2 @499
EXIT

// Mazzy

// Minsc

// Nalia

// Valygar

// Viconia

// 2
CHAIN IF ~%BG2_VAR%
InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("I#B_ImoenViconia","GLOBAL",2)~ THEN BIMOEN2 I#B_ImoenViconia_2
@139 
DO ~SetGlobal("I#B_ImoenViconia","GLOBAL",3)~
== BVICONI @140
== BIMOEN2 @141
== BVICONI @142
== BIMOEN2 @143
== BVICONI @144
EXIT

// 3
CHAIN IF ~%BG2_VAR%
InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("I#B_ImoenViconia","GLOBAL",3)~ THEN BIMOEN2 I#B_ImoenViconia_3
@145 
DO ~SetGlobal("I#B_ImoenViconia","GLOBAL",4)~
== BVICONI @146
== BIMOEN2 @147
== BVICONI @148
== BIMOEN2 @149
== BVICONI @150
== BIMOEN2 @151
== BVICONI @152
== BIMOEN2 @153
== BVICONI @154
EXIT

// Yoshimo

// --------------------------------------
// Jaheira Initiated Banters
// --------------------------------------

// Aerie

// Anomen

// Cernd

// Edwin

// Haer'Dalis

// Imoen

// 1
CHAIN IF ~%BG2_VAR%
InParty("Imoen2")
See("Imoen2")
GlobalGT("Chapter","GLOBAL",%bg2_chapter_1%)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("Jaheira",CD_STATE_NOTVALID)
CombatCounter(0)
Global("I#B_ImoenJaheira","GLOBAL",0)~ THEN BJAHEIR I#B_ImoenJaheira_1
@155 
DO ~SetGlobal("I#B_ImoenJaheira","GLOBAL",1)~
== BIMOEN2 @156
== BJAHEIR @157
== BIMOEN2 @158
= @159
== BJAHEIR @160
== BIMOEN2 @161
EXIT

// 2
CHAIN IF ~%BG2_VAR%
InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("Jaheira",CD_STATE_NOTVALID)
CombatCounter(0)
Global("I#B_ImoenJaheira","GLOBAL",1)~ THEN BJAHEIR I#B_ImoenJaheira_2
@162 
DO ~SetGlobal("I#B_ImoenJaheira","GLOBAL",2)~
== BIMOEN2 @163
== BJAHEIR @164
== BIMOEN2 @165
== BJAHEIR @166
= @167
== BIMOEN2 @168
= @169
= @170
== BJAHEIR @171
EXIT

// Jan

// Keldorn
// 2
CHAIN IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("Jaheira",CD_STATE_NOTVALID)
CombatCounter(0)
Global("I#B_KeldornJaheira","GLOBAL",1)~ THEN BJAHEIR I#B_KeldornJaheira_2
@172 
DO ~SetGlobal("I#B_KeldornJaheira","GLOBAL",2)~
== BKELDOR @173
== BJAHEIR @174
== BKELDOR @175
== BJAHEIR @176
== BKELDOR @177
== BJAHEIR @178
= @179
== BKELDOR @180
== BJAHEIR @181
EXIT

// Korgan

// Mazzy

// Minsc
// 1.
CHAIN IF ~%BG2_VAR%
InParty("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
Global("I#B_JahMinPortly","GLOBAL",0)
See("Minsc")
CombatCounter(0)
!See([ENEMY])~ THEN BJAHEIR I#B_JahMinPortly
@182 
DO ~SetGlobal("I#B_JahMinPortly","GLOBAL",1)~
== BMINSC @183
== BEDWIN IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN  @184
== BJAHEIR @185
== BMINSC @186
= @187
== BJAHEIR @188
== BMINSC @189
== BJAHEIR @190
== BMINSC @191
== BJAHEIR @192
== BMINSC @193
== BJAHEIR @194
EXIT

// Nalia

// Valygar

// Viconia

// after Pai'Na
CHAIN IF ~Global("I#B_JaheiraViconia_PaiNa","GLOBAL",1)~ THEN JAHEIRAJ I#B_JaheiraViconia_PaiNa
@195 
DO ~SetGlobal("I#B_JaheiraViconia_PaiNa","GLOBAL",2)~
== VICONIJ @196
== JAHEIRAJ @197
== VICONIJ @198
== JAHEIRAJ @199
== VICONIJ @200
== JAHEIRAJ @201
== VICONIJ @202
= @203
EXIT

// Viconia less than 50%
CHAIN IF ~Global("I#B_JaheiraViconia_VicHurt","GLOBAL",1)~ THEN JAHEIRAJ I#B_JaheiraViconia_VicHurt
@204 
DO ~SetGlobal("I#B_JaheiraViconia_VicHurt","GLOBAL",2)~
== VICONIJ @205
== JAHEIRAJ @206
== VICONIJ @207
DO ~ActionOverride("Jaheira",ForceSpell("Viconia",CLERIC_CURE_MEDIUM_WOUNDS))~
EXIT

// Jaheira less than 30%
CHAIN IF ~Global("I#B_JaheiraViconia_JahHurt","GLOBAL",1)~ THEN JAHEIRAJ I#B_JaheiraViconia_JahHurt
@208 
DO ~SetGlobal("I#B_JaheiraViconia_JahHurt","GLOBAL",2)~
== VICONIJ @209
== JAHEIRAJ @210
== VICONIJ @211
== JAHEIRAJ @212
= @213
== VICONIJ @214
DO ~ActionOverride("Viconia",ForceSpell("Jaheira",CLERIC_CURE_MEDIUM_WOUNDS))~
EXIT

// Yoshimo

// --------------------------------------
// Jan Initiated Banters
// --------------------------------------

// Aerie

// Anomen

// Cernd

// Edwin

// Haer'Dalis

// Imoen

// Jaheira

// Keldorn

// Korgan

// Mazzy

// Minsc

// Nalia

// Valygar

// Viconia

// Yoshimo

// --------------------------------------
// Keldorn Initiated Banters
// --------------------------------------

// Aerie

// Anomen

// Cernd

// Edwin

// Haer'Dalis

// Imoen

// Jaheira
// 1
CHAIN IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("Keldorn",CD_STATE_NOTVALID)
CombatCounter(0)
Global("I#B_KeldornJaheira","GLOBAL",0)~ THEN BKELDOR I#B_KeldornJaheira_1
@215 
DO ~SetGlobal("I#B_KeldornJaheira","GLOBAL",1)~
= @216
== BJAHEIR @217
== BKELDOR @218
== BJAHEIR @219
== BKELDOR @220
== BJAHEIR @221
== BKELDOR @222
== BJAHEIR @223
== BKELDOR @224
EXIT

// Jan

// Korgan

// Mazzy

// Minsc

// Nalia

// Valygar

// 1
CHAIN IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("Valygar",CD_STATE_NOTVALID)
CombatCounter(0)
AreaType(CITY)
Global("I#B_KeldornValygar","GLOBAL",0)~ THEN BKELDOR I#B_KeldornValygar_1
@225 
DO ~SetGlobal("I#B_KeldornValygar","GLOBAL",1)~
== BVALYGA @226
== BKELDOR @227
== BVALYGA @228
== BKELDOR @229
== BVALYGA @230
== BKELDOR @231
== BVALYGA @232
EXIT

// Viconia

// Yoshimo

// --------------------------------------
// Korgan Initiated Banters
// --------------------------------------

// Aerie

// Anomen

// Cernd

// Edwin

// Haer'Dalis

// Imoen
// 1
CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("Korgan",CD_STATE_NOTVALID)
CombatCounter(0)
Global("I#B_ImoenKorgan","GLOBAL",0)~ THEN BKORGAN I#B_ImoenKorgan_1
@500 
DO ~IncrementGlobal("I#B_ImoenKorgan","GLOBAL",1)~
== BIMOEN2 @501
== BKORGAN IF ~Gender(Player1,MALE)~ THEN @502
== BKORGAN IF ~Gender(Player1,FEMALE)~ THEN @503
== BIMOEN2 @504
EXIT

// Jaheira

// Jan

// Keldorn

// Mazzy

// Minsc

// Nalia

// Valygar

// Viconia
// 1--<CHARNAME> is female
CHAIN IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("Korgan",CD_STATE_NOTVALID)
Gender(Player1,FEMALE)
CombatCounter(0)
Global("I#B_KorganViconia_GFriends","GLOBAL",0)~ THEN BKORGAN I#B_KorganViconia_GFriends
@233 
DO ~SetGlobal("I#B_KorganViconia_GFriends","GLOBAL",1)~
== BVICONI @234
== BKORGAN @235
== BVICONI @236
== BKORGAN @237
== BVICONI @238
== BKORGAN @239
== BVICONI @240
== BKORGAN @241
EXIT

// Yoshimo

// --------------------------------------
// Mazzy Initiated Banters
// --------------------------------------

// Aerie
// In tavern
CHAIN IF ~Global("I#B_AerieMazzy_Tavern","GLOBAL",1) RealGlobalTimerExpired("I#B_AerieMazzy_TavernTimer","GLOBAL")~ THEN MAZZYJ I#B_AerieMazzy_Tavern
@242 
DO ~SetGlobal("I#B_AerieMazzy_Tavern","GLOBAL",2)~
== AERIEJ @243
== MAZZYJ @244
== AERIEJ @245
== MAZZYJ @246
== AERIEJ @247
== MAZZYJ @248
== AERIEJ @249
EXIT

// In romance
CHAIN IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("Mazzy",CD_STATE_NOTVALID)
CombatCounter(0)
Global("AerieRomanceActive","GLOBAL",2)
Global("I#B_AerieMazzy_Romance","GLOBAL",0)~ THEN BMAZZY I#B_AerieMazzy_Romance
@250 
DO ~SetGlobal("I#B_AerieMazzy_Romance","GLOBAL",1)~
== BAERIE @251
== BMAZZY @252
EXIT

// Alignment(Player1,MASK_GOOD, end of SoA)
CHAIN IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("Mazzy",CD_STATE_NOTVALID)
CombatCounter(0)
OR(2)
  Alignment(Player1,MASK_GOOD)
  Alignment(Player1,NEUTRAL)
GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("I#B_AerieMazzy_PC","GLOBAL",0)~ THEN BMAZZY I#B_AerieMazzy_PC
@253 
DO ~SetGlobal("I#B_AerieMazzy_PC","GLOBAL",1)~
== BAERIE @254
== BMAZZY @255
== BAERIE @256
== BMAZZY @257
== BAERIE IF ~!Global("AerieRomanceActive","GLOBAL",2)~ THEN @258
== BAERIE IF ~Global("AerieRomanceActive","GLOBAL",2)~ THEN  @259
== BMAZZY @260
EXIT

// Anomen

// Cernd

// Edwin

// Haer'Dalis

// Imoen

// Jaheira

// Jan

// Keldorn

// Korgan

// Minsc

// Nalia

// Valygar

// Viconia



// Yoshimo

// --------------------------------------
// Minsc Initiated Banters
// --------------------------------------

// Aerie

//  2
CHAIN IF ~InParty("Aerie")
Range("Aerie",30)
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("Minsc",CD_STATE_NOTVALID)
CombatCounter(0)
Global("I#B_MinscAerie","GLOBAL",1)~ THEN BMINSC I#B_MinscAerie_2
@261 
DO ~SetGlobal("I#B_MinscAerie","GLOBAL",2)~
== BAERIE @262
== BMINSC @263
== BMINSC @264
== BAERIE @265
== BMINSC @266
== BAERIE @267
== BMINSC @268
== BAERIE @269
== BMINSC @270
EXIT

// Anomen
CHAIN
IF ~InParty("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
Global("I#B_AnoMinSword","GLOBAL",0)
See("Anomen")
CombatCounter(0)
!See([ENEMY])~
THEN BMINSC I#B_AnoMinSword
@271 
DO ~SetGlobal("I#B_AnoMinSword","GLOBAL",1)~
== BANOMEN @272
== BMINSC @273
== BANOMEN @274
== BMINSC @275
== BANOMEN @276
== BMINSC @277
== BANOMEN @278
EXIT

// Post-test, Sir Anomen
CHAIN
IF WEIGHT #-1 ~Global("I#B_AnoMinProud","GLOBAL",1)~ THEN MINSCJ I#B_AnoMinProud
@279 
DO ~SetGlobal("I#B_AnoMinProud","GLOBAL",2)~
== ANOMENJ @280
== MINSCJ @281
== ANOMENJ @282
== MINSCJ @283
= @284
EXIT

// Post-test, CN Anomen
CHAIN
IF WEIGHT #-1 ~Global("I#B_AnoMinCN","GLOBAL",1)~ THEN MINSCJ I#B_AnoMinCN
@285 
DO ~SetGlobal("I#B_AnoMinCN","GLOBAL",2)~
== ANOMENJ @286
== MINSCJ @287
== ANOMENJ @288
== MINSCJ @289
== ANOMENJ @290
== MINSCJ @291
EXIT

// Cernd

// Edwin

// Haer'Dalis
// 1
CHAIN
IF ~InParty("HaerDalis")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
Global("I#B_HaeMinChaos","GLOBAL",0)
See("HaerDalis")
CombatCounter(0)
!See([ENEMY])~
THEN BMINSC I#B_HaeMinChaos
@292 
DO ~SetGlobal("I#B_HaeMinChaos","GLOBAL",1)~
== BHAERDA @293
== BMINSC @294
== BHAERDA @295
== BMINSC @296
== BHAERDA @297
== BMINSC @298
== BHAERDA @299
= @300
== BMINSC @301
== BHAERDA @302
== BMINSC @303
== BHAERDA @304
== BMINSC @305
== BHAERDA @306
== BMINSC @307
= @308
== BHAERDA @309
== BMINSC @310
== BHAERDA @311
EXIT

// Imoen
// 1
CHAIN
IF ~Global("I#B_ImoMinMage","GLOBAL",2)~ THEN MINSCJ I#B_ImoMinMage
@312 
DO ~SetGlobal("I#B_ImoMinMage","GLOBAL",3)~
END
IF ~InParty("Imoen")~ EXTERN IMOENJ I#B_ImoMinMage2
IF ~InParty("Imoen2")~ EXTERN IMOEN2J I#B_ImoMinMage3

CHAIN IMOENJ I#B_ImoMinMage2
@313
= @314
== MINSCJ @315
== IMOENJ @316
== MINSCJ @317
== IMOENJ @318
== MINSCJ @319
= @320
== IMOENJ @321
EXIT

CHAIN IMOEN2J I#B_ImoMinMage3
@313
= @314
== MINSCJ @315
== IMOEN2J @316
== MINSCJ @317
== IMOEN2J @318
== MINSCJ @319
= @320
== IMOEN2J @321
EXIT

// Jaheira
// 2.
CHAIN IF ~%BG2_VAR%
InParty("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
Global("I#B_JahMinLoss","GLOBAL",0)
See("Jaheira")
CombatCounter(0)
!Global("chapter","GLOBAL",%bg2_chapter_1%)
!See([ENEMY])~
THEN BMINSC I#B_JahMinLoss
@322 
DO ~SetGlobal("I#B_JahMinLoss","GLOBAL",1)~
== BJAHEIR @323
== BMINSC @324
= @325
END
IF ~Global("JaheiraRomanceActive","GLOBAL",0)~ THEN EXTERN BJAHEIR I#JahMinLoss1
IF ~Global("JaheiraRomanceActive","GLOBAL",1)~ THEN EXTERN BJAHEIR I#JahMinLoss2
IF ~Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN BJAHEIR I#JahMinLoss3
IF ~Global("JaheiraRomanceActive","GLOBAL",3)~ THEN EXTERN BJAHEIR I#JahMinLoss4

CHAIN BJAHEIR I#JahMinLoss1
@326
EXIT

CHAIN BJAHEIR I#JahMinLoss2
@327
EXIT

CHAIN BJAHEIR I#JahMinLoss3
@328
EXIT

CHAIN BJAHEIR I#JahMinLoss4
@329
EXIT

// Jan

// Keldorn

// Korgan

// Mazzy

// Nalia

// Valygar

// Viconia



// Yoshimo

// --------------------------------------
// Nalia Initiated Banters
// --------------------------------------

// Aerie

// Anomen

// Cernd

// Edwin

// Haer'Dalis

// Imoen

// Jaheira

// Jan

// Keldorn

// Korgan

// Mazzy

// Minsc

// Valygar

// Viconia

// Yoshimo

// --------------------------------------
// Valygar Initiated Banters
// --------------------------------------

// Aerie

// 1
CHAIN IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("Valygar",CD_STATE_NOTVALID)
CombatCounter(0)
AreaType(CITY)
Global("I#B_AerieValygar","GLOBAL",1)~ THEN BVALYGA I#B_AerieValygar_2
@330 
DO ~SetGlobal("I#B_AerieValygar","GLOBAL",2)~
== BAERIE @331
== BVALYGA @332
== BAERIE @333
== BVALYGA @334
== BAERIE @335
== BVALYGA @336
== BAERIE @337
== BVALYGA @338
== BAERIE @339
== BVALYGA @340
EXIT

// Anomen

// Cernd

// Edwin

// Haer'Dalis

// Imoen

// Jaheira

// Jan

// Keldorn
// 2
CHAIN IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("Valygar",CD_STATE_NOTVALID)
CombatCounter(0)
Global("I#B_KeldornValygar","GLOBAL",1)~ THEN BVALYGA I#B_KeldornValygar_2
@341 
DO ~SetGlobal("I#B_KeldornValygar","GLOBAL",2)~
== BKELDOR @342
== BVALYGA @343
== BKELDOR @344
== BVALYGA @345
== BKELDOR @346
== BVALYGA @347
== BKELDOR @348
== BVALYGA @349
== BKELDOR @350
EXIT

// Korgan

// Mazzy

// Minsc

// Nalia

// Viconia



// Yoshimo

// --------------------------------------
// Viconia Initiated Banters
// --------------------------------------

// Aerie

// Anomen
// 1.
CHAIN IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
Global("AnomenIsNotKnight","GLOBAL",1)
Global("I#B_AnomenViconia","GLOBAL",0)~ THEN BVICONI I#B_AnomenViconia_1
@351 
DO ~SetGlobal("I#B_AnomenViconia","GLOBAL",1)~
== BANOMEN @352 
== BVICONI @353
== BANOMEN @354
== BVICONI @355
EXIT

// 2.
CHAIN IF ~Global("I#B_AnomenViconia","GLOBAL",2)~ THEN VICONIJ I#B_AnomenViconia_2
@356 
DO ~SetGlobal("I#B_AnomenViconia","GLOBAL",3)~
== ANOMENJ @357
== VICONIJ @358
== ANOMENJ @359
== VICONIJ @360
== ANOMENJ @361
== VICONIJ @362
= @363
== ANOMENJ @364
DO ~Restparty()~
EXIT

// Cernd
// 1. (after Annath the werewolf is dead)
CHAIN IF ~Global("I#B_CerndViconia_Annath","GLOBAL",2)~ THEN VICONIJ I#B_CerndViconia_Annath
@505 
DO ~IncrementGlobal("I#B_CerndViconia_Annath","GLOBAL",1)~
== CERNDJ @506
== VICONIJ @507
= @508
== CERNDJ @509
EXIT

// 2.
CHAIN IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
Global("CerndBaby","GLOBAL",1)
Global("I#B_CerndViconia","GLOBAL",0)~ THEN BVICONI I#B_EdwinViconia_1
@510 
DO ~IncrementGlobal("I#B_CerndViconia","GLOBAL",1)~
== BCERND @511
EXIT


// Edwin

// 1
CHAIN IF ~%BG2_VAR%
InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
Global("I#B_EdwinViconia","GLOBAL",0)~ THEN BVICONI I#B_EdwinViconia_1
@365 
DO ~SetGlobal("I#B_EdwinViconia","GLOBAL",1)~
== BEDWIN @366
== BVICONI @367
END
++ @368 EXTERN BEDWIN I#B_EdwinViconia_1_1
++ @369 EXTERN BEDWIN I#B_EdwinViconia_1_2
++ @370EXTERN BEDWIN I#B_EdwinViconia_1_3

APPEND BEDWIN
  IF ~~ I#B_EdwinViconia_1_1
    SAY @371
    IF ~~ EXTERN BVICONI I#B_EdwinViconia_1_4
  END
  
  IF ~~ I#B_EdwinViconia_1_2
    SAY @372
    IF ~~ EXTERN BVICONI I#B_EdwinViconia_1_4
  END
  
  IF ~~ I#B_EdwinViconia_1_3
    SAY @373
    IF ~~ EXTERN BVICONI I#B_EdwinViconia_1_4
  END
END

CHAIN BVICONI I#B_EdwinViconia_1_4
@374
= @375
== BEDWIN @376
== BVICONI @377
== BEDWIN @378
== BVICONI @379
== BEDWIN @380
EXIT

// 3
CHAIN IF ~%BG2_VAR%
InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
Global("I#B_EdwinViconia","GLOBAL",2)~ THEN BVICONI I#B_EdwinViconia_3
@381 
DO ~SetGlobal("I#B_EdwinViconia","GLOBAL",3)~
== BEDWIN @382
== BVICONI @383
EXIT

// 5
CHAIN IF ~%BG2_VAR%
InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
Global("I#B_EdwinViconia","GLOBAL",4)~ THEN BVICONI I#B_EdwinViconia_5
@384 
DO ~SetGlobal("I#B_EdwinViconia","GLOBAL",5)~
== BEDWIN @385
= @386
== BVICONI @387
== BEDWIN @388
== BVICONI @389
== BEDWIN @390
== BVICONI @391
== BEDWIN @392
= @393
EXIT

// Haer'Dalis

// Imoen 

// 1
CHAIN IF ~%BG2_VAR%
InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
Global("I#B_ImoenViconia","GLOBAL",0)~ THEN BVICONI I#B_ImoenViconia_1
@394 
DO ~SetGlobal("I#B_ImoenViconia","GLOBAL",1)~
== BIMOEN2 @395
= @396
== BVICONI @397
EXIT

// Jaheira

// 1
CHAIN IF ~%BG2_VAR%
InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
Global("I#B_JaheiraViconia","GLOBAL",0)~ THEN BVICONI I#B_JaheiraViconia_1
@398 
DO ~SetGlobal("I#B_JaheiraViconia","GLOBAL",1)~
== BJAHEIR @399
== BVICONI @400
= @401
== BJAHEIR @402
== BVICONI @403
EXIT

// 2
CHAIN IF ~%BG2_VAR%
InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
Global("I#B_JaheiraViconia","GLOBAL",1)~ THEN BVICONI I#B_JaheiraViconia_2
@404 
DO ~SetGlobal("I#B_JaheiraViconia","GLOBAL",2)~
== BJAHEIR @405
== BVICONI @406
== BJAHEIR @407
== BVICONI @408
EXIT

// 3
CHAIN IF ~%BG2_VAR%
InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
Global("I#B_JaheiraViconia","GLOBAL",2)~ THEN BVICONI I#B_JaheiraViconia_3
@409 
DO ~SetGlobal("I#B_JaheiraViconia","GLOBAL",3)~
== BJAHEIR @410
== BVICONI @411
== BJAHEIR @412
== BVICONI @413
== BJAHEIR @414
== BVICONI @415
EXIT

// In forest
CHAIN IF ~%BG2_VAR%
InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
AreaType(FOREST)
CombatCounter(0)
Global("I#B_JaheiraViconia_Forest","GLOBAL",0)~ THEN BVICONI I#B_JaheiraViconia_Forest
@416 
DO ~SetGlobal("I#B_JaheiraViconia_Forest","GLOBAL",1)~
== BJAHEIR @417
== BVICONI @418
== BJAHEIR @419
== BVICONI @420
== BJAHEIR @421
== BVICONI @422
EXIT

// (Jaheira in romance)
CHAIN IF ~%BG2_VAR%
InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
Global("JaheiraRomanceActive","GLOBAL",2)
Global("I#B_JaheiraViconia_JahRomance","GLOBAL",0)~ THEN BVICONI I#B_JaheiraViconia_JahRomance
@423 
DO ~SetGlobal("I#B_JaheiraViconia_JahRomance","GLOBAL",1)~
== BJAHEIR @424
== BVICONI @425
== BJAHEIR @426
== BJAHEIR @427
== BVICONI @428
EXIT

// Jan

// Keldorn

// Korgan
// 2
CHAIN IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
Global("I#B_KorganViconia","GLOBAL",1)~ THEN BVICONI I#B_KorganViconia_2
@429 
DO ~SetGlobal("I#B_KorganViconia","GLOBAL",2)~
== BKORGAN @430
== BVICONI @431
== BKORGAN @432
== BVICONI @433
== BKORGAN @434
== BVICONI @435
EXIT

// Mazzy

// Minsc

// In Underdark
CHAIN IF ~%BG2_VAR%
InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
Global("chapter","GLOBAL",%bg2_chapter_5%)
Global("I#B_MinscViconia_Underdark","GLOBAL",0)~ THEN BVICONI I#B_MinscViconia_Underdark
@436 
DO ~SetGlobal("I#B_MinscViconia_Underdark","GLOBAL",1)~
== BMINSC @437
== BVICONI @438
== BMINSC @439
== BVICONI @440
== BMINSC @441
EXIT

// Nalia
// 1.
CHAIN IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
OR(11)
  AreaCheck("AR0021") //City Gates--Crooked Crane 1st floor
  AreaCheck("AR0313") //Docks--Sea's Bounty 1st floor
  AreaCheck("AR0406") //Slums--Copper Coronet
  AreaCheck("AR0509") //Bridge--Five Flagons 1st floor
  AreaCheck("AR0513") //Bridge--Calbor's Inn 1st floor
  AreaCheck("AR0522") //Bridge--Five Flagons 1st floor (stronghold)
  AreaCheck("AR0704") //Waukeen's Promenade--Mithrest Inn
  AreaCheck("AR0709") //Waukeen's Promenade--Den of the Seven Vales
  AreaCheck("AR1105") //Umar Hills--Imnesvale Inn
  AreaCheck("AR1602") //Brynnlaw--Brynnlaw Inn
  AreaCheck("AR2010") //Trademeet--Vytori's Pub
Global("I#B_NaliaViconia","GLOBAL",0)~ THEN BVICONI I#B_NaliaViconia_1
@442 
DO ~SetGlobal("I#B_NaliaViconia","GLOBAL",1)~
== BNALIA @443
== BVICONI @444
== BNALIA @445
== BVICONI @446
EXIT

// 2.
CHAIN IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
OR(11)
  AreaCheck("AR0021") //City Gates--Crooked Crane 1st floor
  AreaCheck("AR0313") //Docks--Sea's Bounty 1st floor
  AreaCheck("AR0406") //Slums--Copper Coronet
  AreaCheck("AR0509") //Bridge--Five Flagons 1st floor
  AreaCheck("AR0513") //Bridge--Calbor's Inn 1st floor
  AreaCheck("AR0522") //Bridge--Five Flagons 1st floor (stronghold)
  AreaCheck("AR0704") //Waukeen's Promenade--Mithrest Inn
  AreaCheck("AR0709") //Waukeen's Promenade--Den of the Seven Vales
  AreaCheck("AR1105") //Umar Hills--Imnesvale Inn
  AreaCheck("AR1602") //Brynnlaw--Brynnlaw Inn
  AreaCheck("AR2010") //Trademeet--Vytori's Pub
Global("I#B_NaliaViconia","GLOBAL",1)~ THEN BVICONI I#B_NaliaViconia_2
@447 
DO ~SetGlobal("I#B_NaliaViconia","GLOBAL",2)~
== BNALIA @448
== BVICONI @449
== BNALIA @450
== BVICONI @451
== BNALIA @452
= @453
== BVICONI @454
EXIT

// 3.
CHAIN IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
OR(11)
  AreaCheck("AR0021") //City Gates--Crooked Crane 1st floor
  AreaCheck("AR0313") //Docks--Sea's Bounty 1st floor
  AreaCheck("AR0406") //Slums--Copper Coronet
  AreaCheck("AR0509") //Bridge--Five Flagons 1st floor
  AreaCheck("AR0513") //Bridge--Calbor's Inn 1st floor
  AreaCheck("AR0522") //Bridge--Five Flagons 1st floor (stronghold)
  AreaCheck("AR0704") //Waukeen's Promenade--Mithrest Inn
  AreaCheck("AR0709") //Waukeen's Promenade--Den of the Seven Vales
  AreaCheck("AR1105") //Umar Hills--Imnesvale Inn
  AreaCheck("AR1602") //Brynnlaw--Brynnlaw Inn
  AreaCheck("AR2010") //Trademeet--Vytori's Pub
Global("I#B_NaliaViconia","GLOBAL",2)~ THEN BVICONI I#B_NaliaViconia_3
@455 
DO ~SetGlobal("I#B_NaliaViconia","GLOBAL",3)~
== BNALIA @456
== BVICONI @457 
== BNALIA @458
== BVICONI @459
EXIT

// Valygar
// 1. (after seeing aboleth)
CHAIN IF ~Global("I#B_ValygarViconia_Aboleth","GLOBAL",2)~ THEN VICONIJ I#B_ValygarViconia_Aboleth
@512 
DO ~IncrementGlobal("I#B_ValygarViconia_Aboleth","GLOBAL",1)~
== VALYGARJ @513
== VICONIJ @514
= @515
== VALYGARJ @516
== VICONIJ @517
EXIT

// 2.
CHAIN IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
Global("I#B_ValygarViconia","GLOBAL",0)~ THEN BVICONI I#B_ValygarViconia_1
@518 
DO ~IncrementGlobal("I#B_ValygarViconia","GLOBAL",1)~
= @519
== BVALYGA @520
== BVICONI @521
= @522
EXIT


// Yoshimo
// 1.
CHAIN IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
Global("I#B_ViconiaYoshimo","GLOBAL",0)~ THEN BVICONI I#B_ViconiaYoshimo_1
@523 
DO ~IncrementGlobal("I#B_ViconiaYoshimo","GLOBAL",1)~
== BYOSHIM @524
== BVICONI @525
== BYOSHIM @526
= @527
== BVICONI @528
== BYOSHIM @529
== BVICONI @530
EXIT


// --------------------------------------
// Yoshimo Initiated Banters
// --------------------------------------

// Aerie
// 1.
CHAIN IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
CombatCounter(0)
Global("I#B_AerieYoshimo","GLOBAL",0)~ THEN BYOSHIM I#B_AerieYoshimo_1
@460 
DO ~IncrementGlobal("I#B_AerieYoshimo","GLOBAL",1)~
== BAERIE @461
== BYOSHIM @462
== BAERIE @463
== BYOSHIM @464
= @465
== BAERIE @466
== BYOSHIM @467
EXIT

// Anomen

// Cernd

// Edwin

// Haer'Dalis

// Imoen

// Jaheira

// Jan

// Keldorn

// Korgan

// Mazzy

// Minsc

// Nalia

// Valygar

// Viconia














