// --------------------------------------
// Aerie/Minsc Banters (ToB)
//
// File:      minscaerie_tob.d
// Directory: iepbanters/dialogue
// Prefix:    I#B
// Author(s): K'aeloree, edited by berelinde
// --------------------------------------

//1
CHAIN IF ~InParty("Aerie")
Range("Aerie",30)
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("Minsc",CD_STATE_NOTVALID)
CombatCounter(0)
Global("I#B_MinscAerieToB","GLOBAL",0)~ THEN BMINSC25 I#B_MinscAerie_2
@0 
DO ~SetGlobal("I#B_MinscAerieToB","GLOBAL",1)~
== BAERIE25 @1
== BMINSC25 @2
== BAERIE25 @3
== BMINSC25 @4
== BAERIE25 @5
== BMINSC25 @6
== BAERIE25 @7
EXIT

// 2
CHAIN IF ~InParty("Minsc")
Range("Minsc",30)
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("Aerie",CD_STATE_NOTVALID)
CombatCounter(0)
Global("I#B_MinscAerieToB","GLOBAL",1)~ THEN BAERIE25 I#BMinscAerieToB_2
@8 
DO ~SetGlobal("I#B_MinscAerieToB","GLOBAL",2)~
== BMINSC25 @9
= @10
= @11
== BAERIE25 @12
== BMINSC25 @13
== BAERIE25 @14
== BMINSC25 @15
== BAERIE25 @16
EXIT