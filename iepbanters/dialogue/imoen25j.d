APPEND ~IMOEN25J~

IF WEIGHT #-1
~Global("LK#ImmyImpish","GLOBAL",2)~ LK#ImmyImpish
  SAY @0
  ++ @1 DO ~IncrementGlobal("LK#ImmyImpish","GLOBAL",1)~ + LK#Impish_why
  ++ @2 DO ~IncrementGlobal("LK#ImmyImpish","GLOBAL",1)~ + LK#Impish_dontremember
  ++ @3 DO ~IncrementGlobal("LK#ImmyImpish","GLOBAL",1)~ + LK#Impish_yesido
  ++ @4 DO ~IncrementGlobal("LK#ImmyImpish","GLOBAL",1)~ + LK#Impish_endconvo
END

IF ~~ LK#Impish_why
  SAY @5
  IF ~~ + LK#Impish_main1a
END

IF ~~ LK#Impish_dontremember
  SAY @6
  IF ~~ + LK#Impish_main1a
END

IF ~~ LK#Impish_yesido
  SAY @7
  IF ~~ + LK#Impish_main1a
END

IF ~~ LK#Impish_endconvo
  SAY @8
  IF ~~ EXIT
END

IF ~~ LK#Impish_main1a
  SAY @9
  IF ~~ + LK#Impish_main1b
END

IF ~~ LK#Impish_main1b
  SAY @10
  = @11
  ++ @12 + LK#Impish_havefun
  ++ @13 + LK#Impish_focuspresent
  ++ @14 + LK#Impish_cantafford
  ++ @15 + LK#Impish_endconvo
END

IF ~~ LK#Impish_havefun
  SAY @16
  IF ~~ + LK#Impish_main2a
END

IF ~~ LK#Impish_focuspresent
  SAY @17
  IF ~~ + LK#Impish_main2c
END

IF ~~ LK#Impish_cantafford
  SAY @18
  IF ~~ + LK#Impish_main2b
END

IF ~~ LK#Impish_main2a
  SAY @19
  IF ~~ + LK#Impish_main2b
END

IF ~~ LK#Impish_main2b
  SAY @20
  IF ~~ + LK#Impish_main2c
END

IF ~~ LK#Impish_main2c
  SAY @21
  ++ @22 + LK#Impish_buysome
  ++ @23 + LK#Impish_buyourselves
  ++ @24 + LK#Impish_wecould
  ++ @25 + LK#Impish_endconvo
  ++ @26 + LK#Impish_plans
END

IF ~~ LK#Impish_buysome
  SAY @27
  IF ~~ + LK#Impish_main3
END

IF ~~ LK#Impish_buyourselves
  SAY @28
  IF ~~ + LK#Impish_main3
END

IF ~~ LK#Impish_wecould
  SAY @29
  IF ~~ + LK#Impish_main3
END

IF ~~ LK#Impish_main3
  SAY @30
  ++ @31 + LK#Impish_plans
  ++ @32 + LK#Impish_appropriate
  ++ @33 + LK#Impish_plans
END

IF ~~ LK#Impish_plans
  SAY @34
  ++ @35 + LK#Impish_regret
  ++ @36 + LK#Impish_speccy
  ++ @37 + LK#Impish_appropriate
  ++ @38 + LK#Impish_regret
  ++ @39 + LK#Impish_appropriate
END

IF ~~ LK#Impish_regret
  SAY @40
  ++ @41 + LK#Impish_allofthem
  ++ @42 + LK#Impish_speccy
  ++ @43 + LK#Impish_appropriate
END

IF ~~ LK#Impish_speccy
  SAY @44
  IF ~~ EXIT
END

IF ~~ LK#Impish_allofthem
  SAY @45
  = @46
  ++ @47 + LK#Impish_speccy
  ++ @48 + LK#Impish_appropriate
END

IF ~~ LK#Impish_appropriate
  SAY @49
  = @50
  = @51
  ++ @52 + LK#Impish_likethat
  ++ @53 + LK#Impish_appreciate
  ++ @54 + LK#Impish_notsuchagoodidea
  ++ @55 + LK#Impish_serious
END

IF ~~ LK#Impish_likethat
  SAY @56
  IF ~~ EXIT
END

IF ~~ LK#Impish_appreciate
  SAY @57
  IF ~~ EXIT
END

IF ~~ LK#Impish_notsuchagoodidea
  SAY @58
  = @59
  IF ~~ EXIT
END

IF ~~ LK#Impish_serious
  SAY @60
  IF ~~ EXIT
END

END