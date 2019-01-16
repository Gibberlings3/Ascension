ADD_STATE_TRIGGER PLAYER1 0 ~!Global("FinalFight","AR6200",4) !Global("MelStillImmortal","AR6200",2)~ 1 7 10 13 15 16 18 21 28 30

REPLACE PLAYER1 

IF WEIGHT #8 ~Global("Slayer10","GLOBAL",1) !Global("FinalFight","AR6200",4) !Global("MelStillImmortal","AR6200",2)~ THEN 27
  SAY #55324 
  ++ #55326 DO ~SetGlobal("Slayer10","GLOBAL",0)~ EXIT
  + ~XPLT(Player1,2000001)~ + #61320 DO ~IncrementGlobal("SlayerDeath","GLOBAL",1) SetGlobal("Slayer10","GLOBAL",2) SetGlobalTimer("TheSlayerTimer","GLOBAL",60) ReputationInc(-1) ApplySpell(Player1,SLAYER_CHANGE_TWO)~ EXIT
  + ~XPLT(Player1,4000001) XPGT(Player1,2000000)~ + #61320 DO ~IncrementGlobal("SlayerDeath","GLOBAL",1) SetGlobal("Slayer10","GLOBAL",2) SetGlobalTimer("TheSlayerTimer","GLOBAL",60) ReputationInc(-1) ApplySpellRES("slayer2",Player1)~ JOURNAL @314 EXIT
+ ~XPGT(Player1,4000000)~ + #61320 DO ~IncrementGlobal("SlayerDeath","GLOBAL",1) SetGlobal("Slayer10","GLOBAL",2) SetGlobalTimer("TheSlayerTimer","GLOBAL",60) ReputationInc(-2) ApplySpellRES("slayer3",Player1)~ JOURNAL @315 EXIT
  + ~XPGT(Player1,6000000)~ + @317 DO ~IncrementGlobal("SlayerDeath","GLOBAL",1) SetGlobal("Slayer10","GLOBAL",2) SetGlobalTimer("TheSlayerTimer","GLOBAL",60) ReputationInc(-3) ApplySpellRES("slayer4",Player1)~ JOURNAL @316 EXIT
END

END

APPEND PLAYER1

IF ~Global("FinalFight","AR6200",4) !Global("MelStillImmortal","AR6200",2)~ THEN a55
  SAY @396
  IF ~~ THEN GOTO a56
END

IF ~~ THEN a56
  SAY @397
  IF ~~ THEN DO ~SetGlobal("FinalFight","AR6200",5)~ EXIT
END

IF ~Global("MelStillImmortal","AR6200",2)~ THEN a57
  SAY @398
  IF ~~ THEN DO ~SetGlobal("MelStillImmortal","AR6200",3)~ EXIT
END

END
