// --------------------------------------
// IEP Extended NPCX Conflicts
//
// Directory: IEP/Banters
// Prefix:    I#B_B
// --------------------------------------

// --------------------------------------
// Edwin/Keldorn Conflict
// --------------------------------------
INTERJECT BKELDOR 78 I#B_EdwinKeldornDiplomacy
== BEDWIN @0 
END
++ @1  EXTERN BEDWIN I#B_EdwinKeldornDiplomacy1
++ @2 EXTERN BKELDOR I#B_EdwinKeldornDiplomacy2
++ @3  EXTERN BEDWIN I#B_EdwinKeldornDiplomacy3

CHAIN BEDWIN I#B_EdwinKeldornDiplomacy1
@4
= @5
== BKELDOR @6
EXIT

CHAIN BKELDOR I#B_EdwinKeldornDiplomacy2
@7
== BEDWIN @8
DO ~SetGlobal("EdwinKeldornFight","GLOBAL",1)~ 
EXIT

CHAIN BEDWIN I#B_EdwinKeldornDiplomacy3
@9
== BKELDOR @10
END
++ @11  EXTERN BKELDOR I#B_EdwinKeldornDiplomacy4
++ @12 EXTERN BKELDOR I#B_EdwinKeldornDiplomacy5

CHAIN BKELDOR I#B_EdwinKeldornDiplomacy4
@13
== BEDWIN @14
DO ~ActionOverride("Keldorn",ChangeAIScript("",DEFAULT))
ActionOverride("Edwin",ChangeAIScript("",DEFAULT))
ActionOverride("Keldorn",SetLeavePartyDialogFile())
ActionOverride("Edwin",SetLeavePartyDialogFile())
ActionOverride("Keldorn",LeaveParty())
ActionOverride("Edwin",LeaveParty())~
EXIT

CHAIN BKELDOR I#B_EdwinKeldornDiplomacy5
@15
== BEDWIN @16
EXIT


// --------------------------------------
// Edwin/Minsc Conflict
// --------------------------------------
INTERJECT BEDWIN 42 I#B_EdwinMinscDiplomacy
== BMINSC @17 
END
++ @18 EXTERN BMINSC I#B_EdwinMinscDiplomacy1
++ @19 EXTERN BEDWIN I#B_EdwinMinscDiplomacy2
++ @20 EXTERN BMINSC I#B_EdwinMinscDiplomacy1
++ @21 EXTERN BMINSC I#B_EdwinMinscDiplomacy3

CHAIN BMINSC I#B_EdwinMinscDiplomacy1
@22
END
++ @23 EXTERN BEDWIN I#B_EdwinMinscDiplomacy4
++ @24 EXTERN BEDWIN I#B_EdwinMinscDiplomacy2

CHAIN BEDWIN I#B_EdwinMinscDiplomacy2
@25
EXTERN BMINSC I#B_EdwinMinscDiplomacy3

CHAIN BMINSC I#B_EdwinMinscDiplomacy3
@26
DO ~SetGlobal("EdwinMinscFight","GLOBAL",1)~ 
EXIT

CHAIN BEDWIN I#B_EdwinMinscDiplomacy4
@27
EXIT


// --------------------------------------
// Edwin/Valygar Conflict
// --------------------------------------
INTERJECT BEDWIN 71 I#B_EdwinValygarDiplomacy
== BVALYGA @28 
END
++ @29 EXTERN BVALYGA I#B_EdwinValygarDiplomacy1
++ @30 EXTERN BVALYGA I#B_EdwinValygarDiplomacy2
++ @31 EXTERN BEDWIN I#B_EdwinValygarDiplomacy3
++ @32 EXTERN BEDWIN I#B_EdwinValygarDiplomacy3

CHAIN BVALYGA I#B_EdwinValygarDiplomacy1
@33
END
++ @34 EXTERN BVALYGA I#B_EdwinValygarDiplomacy4
++ @35 EXTERN BVALYGA I#B_EdwinValygarDiplomacy5
++ @36 EXTERN BEDWIN I#B_EdwinValygarDiplomacy6
++ @37 EXTERN BEDWIN I#B_EdwinValygarDiplomacy7
++ @38 EXTERN BVALYGA I#B_EdwinValygarDiplomacy5

CHAIN BVALYGA I#B_EdwinValygarDiplomacy2
@39
END
++ @40 EXTERN BVALYGA I#B_EdwinValygarDiplomacy1
++ @41 EXTERN BVALYGA I#B_EdwinValygarDiplomacy1
++ @42 EXTERN BVALYGA I#B_EdwinValygarDiplomacy8
++ @43 EXTERN BEDWIN I#B_EdwinValygarDiplomacy3

CHAIN BEDWIN I#B_EdwinValygarDiplomacy3
@44
DO ~SetGlobal("EdwinValygarFight","GLOBAL",1)~
EXIT 

CHAIN BVALYGA I#B_EdwinValygarDiplomacy4
@45
END
++ @46 EXTERN BEDWIN I#B_EdwinValygarDiplomacy6
++ @47 EXTERN BVALYGA I#B_EdwinValygarDiplomacy9
++ @48 EXIT

CHAIN BVALYGA I#B_EdwinValygarDiplomacy5
@49
DO ~SetGlobal("EdwinValygarFight","GLOBAL",1)~
EXIT

CHAIN BEDWIN I#B_EdwinValygarDiplomacy6
@50
EXIT

CHAIN BEDWIN I#B_EdwinValygarDiplomacy7
@51
DO ~SetGlobal("EdwinValygarFight","GLOBAL",1)~
EXIT

CHAIN BVALYGA I#B_EdwinValygarDiplomacy8
@52
DO ~SetGlobal("EdwinValygarFight","GLOBAL",1)~
EXIT

CHAIN BVALYGA I#B_EdwinValygarDiplomacy9
@53
DO ~SetGlobal("EdwinValygarFight","GLOBAL",1)~
EXIT


// --------------------------------------
// Keldorn/Viconia Conflict
// --------------------------------------
INTERJECT BKELDOR 90 I#B_KeldornViconiaDiplomacy
== BVICONI @54 
END
++ @55 EXTERN BKELDOR I#B_KeldornViconiaDiplomacy1
++ @56 EXTERN BKELDOR I#B_KeldornViconiaDiplomacy2

CHAIN BKELDOR I#B_KeldornViconiaDiplomacy1
@57
END
++ @58 EXTERN BKELDOR I#B_KeldornViconiaDiplomacy3
++ @59 EXTERN BKELDOR I#B_KeldornViconiaDiplomacy4
++ @60 EXTERN BKELDOR I#B_KeldornViconiaDiplomacy5

CHAIN BKELDOR I#B_KeldornViconiaDiplomacy2
@61
== BVICONI @62
DO ~SetGlobal("ViconiaKeldornFight","GLOBAL",1)~ 
EXIT

CHAIN BKELDOR I#B_KeldornViconiaDiplomacy3
@63
== BVICONI @64
END
++ @65 EXTERN BVICONI I#B_KeldornViconiaDiplomacy6
++ @66 EXTERN BKELDOR I#B_KeldornViconiaDiplomacy7
++ @67 EXTERN BKELDOR I#B_KeldornViconiaDiplomacy2

CHAIN BKELDOR I#B_KeldornViconiaDiplomacy4
@68
END
++ @69 EXTERN BVICONI I#B_KeldornViconiaDiplomacy6
++ @70 EXTERN BKELDOR I#B_KeldornViconiaDiplomacy7
++ @71 EXTERN BKELDOR I#B_KeldornViconiaDiplomacy2
++ @72 EXTERN BKELDOR I#B_KeldornViconiaDiplomacy2

CHAIN BKELDOR I#B_KeldornViconiaDiplomacy5
@73
EXTERN BKELDOR I#B_KeldornViconiaDiplomacy3

CHAIN BVICONI I#B_KeldornViconiaDiplomacy6
@74
END
++ @75 EXTERN BKELDOR I#B_KeldornViconiaDiplomacy7
++ @76 EXTERN BVICONI I#B_KeldornViconiaDiplomacy8
++ @77 EXTERN BVICONI I#B_KeldornViconiaDiplomacy8
++ @78 EXTERN BKELDOR I#B_KeldornViconiaDiplomacy7

CHAIN BKELDOR I#B_KeldornViconiaDiplomacy7
@79
== BVICONI @80
EXIT

CHAIN BVICONI I#B_KeldornViconiaDiplomacy8
@81
== BKELDOR @82
END
++ @83 EXTERN BKELDOR I#B_KeldornViconiaDiplomacy2
++ @84 EXTERN BKELDOR I#B_KeldornViconiaDiplomacy7
++ @85 EXTERN BVICONI I#B_KeldornViconiaDiplomacy9

CHAIN BVICONI I#B_KeldornViconiaDiplomacy9
@86
EXTERN BKELDOR I#B_KeldornViconiaDiplomacy7


// --------------------------------------
// Valygar/Viconia Conflict
// --------------------------------------
INTERJECT VICONIJ 58 I#ValygarViconiaConflict
  == VALYGARJ @87 
END
  ++ @88 EXTERN VALYGARJ I#BValyVic_stop
  ++ @89 EXTERN VALYGARJ I#BValyVic_dontstop
  ++ @90 EXTERN VALYGARJ I#BValyVic_stop

APPEND ~VALYGARJ~
IF ~~ I#BValyVic_stop
  SAY @91
  ++ @92 + I#BValyVic_alright
  ++ @93 + I#BValyVic_dontstop
  ++ @94 + I#BValyVic_alright
  IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ EXTERN MAZZYJ I#BValyVicConflict
END

IF ~~ I#BValyVic_dontstop
  SAY @95
  IF ~~ DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
ActionOverride("Viconia",LeaveParty())
Attack("Viconia")
ActionOverride("Viconia",Attack("Valygar"))~ EXIT
END

IF ~~ I#BValyVic_alright
  SAY @96
  IF ~~ EXTERN VICONIJ I#BValyVic_end
END
END

APPEND ~MAZZYJ~
IF ~~ I#BValyVicConflict
  SAY @97
  IF ~~ EXTERN VALYGARJ I#BValyVic_alright
END
END

APPEND ~VICONIJ~
IF ~~ I#BValyVic_end
  SAY @98
  IF ~~ EXIT
END
END