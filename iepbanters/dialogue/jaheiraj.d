APPEND BJAHEIR
IF ~~ BEGIN I#J1
  SAY @0
  = @1
  ++ @2 + I#J1_1
  ++ @3 + I#J1_2
  ++ @4 + I#J1_3
  ++ @5 + I#J1_4
END

IF ~~ I#J1_1
  SAY @6
  = @7
  ++ @8 + I#J1_5
  ++ @9 + I#J1_5
  ++ @10 + I#J1_5
  ++ @11 + I#J1_6
END

IF ~~ I#J1_2
  SAY @12
  ++ @13 + I#J1_7
  ++ @14 + I#J1_7
  ++ @15 + I#J1_8
END

IF ~~ I#J1_3
  SAY @16
  = @17 
  IF ~~ EXIT
END

IF ~~ I#J1_4
  SAY @18
  ++ @19 + I#J1_9
  ++ @20 + I#J1_10
  ++ @21 DO ~SetGlobal("I#JaheiraShutup","GLOBAL",1)~ EXIT
END

IF ~~ I#J1_5
  SAY @22
  IF ~~ EXIT
END

IF ~~ I#J1_6
  SAY @22
  IF ~~ EXIT
END

IF ~~ I#J1_7
  SAY @23
END

IF ~~ I#J1_8
  SAY @24
END

END