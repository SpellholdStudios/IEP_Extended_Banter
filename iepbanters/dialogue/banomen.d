ADD_TRANS_ACTION BANOMEN BEGIN 366 432 460 END BEGIN END
~SetGlobal("I#R_AnomenWakeUp","GLOBAL",1)~

APPEND ~BANOMEN~

// Anomen wake up dialogue; written by David Gaider with additions from Kulyok
IF WEIGHT #-1 ~Global("I#R_AnomenWakeUp","GLOBAL",2)~ I#AnoWake
  SAY @0
  ++ @1 DO ~SetGlobal("I#R_AnomenWakeUp","GLOBAL",3)~ + I#AnoWake_1
  ++ @2 DO ~SetGlobal("I#R_AnomenWakeUp","GLOBAL",3)~ + I#AnoWake_2
  ++ @3 DO ~SetGlobal("I#R_AnomenWakeUp","GLOBAL",3)~ + I#AnoWake_3
END

IF ~~ I#AnoWake_1
  SAY @4
  ++ @5 + I#AnoWake_4
  ++ @6 + I#AnoWake_5
  ++ @7 + I#AnoWake_5
END

IF ~~ I#AnoWake_2
  SAY @8
  ++ @5 + I#AnoWake_4
  ++ @6 + I#AnoWake_5
  ++ @7 + I#AnoWake_5
END

IF ~~ I#AnoWake_3
SAY@9
  ++ @5 + I#AnoWake_4
  ++ @6 + I#AnoWake_5
  ++ @7 + I#AnoWake_5
END

IF ~~ I#AnoWake_4
  SAY @10
  ++ @11 + I#AnoWake_6
  ++ @12 + I#AnoWake_7
  ++ @13 + I#AnoWake_8
END

IF ~~ I#AnoWake_5
  SAY @14
  ++ @11 + I#AnoWake_6
  ++ @12 + I#AnoWake_7
  ++ @13 + I#AnoWake_8
END

IF ~~ I#AnoWake_6
  SAY @15
  ++ @16 + I#AnoWake_9
  ++ @17 + I#AnoWake_9
  ++ @18 + I#AnoWake_10
END

IF ~~ I#AnoWake_7
  SAY @19
  ++ @16 + I#AnoWake_9
  ++ @17 + I#AnoWake_9
  ++ @18 + I#AnoWake_10
END

IF ~~ I#AnoWake_8
  SAY @20
  IF ~~ DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ I#AnoWake_9
  SAY @21
  ++ @22 + I#AnoWake_10
END

IF ~~ I#AnoWake_10
  SAY @23
  ++ @24 + I#AnoWake_11
  ++ @25 + I#AnoWake_11
  ++ @26 + I#AnoWake_8
END

IF ~~ I#AnoWake_11
  SAY @27
  IF ~~ EXIT
END

END