BEGIN ~BFVERN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

/* first time res, pre dorn fight */ 
IF WEIGHT #1 /* Triggers after states #: 41 even though they appear after this state */
~ NumberOfTimesTalkedTo(0) GlobalLT("OHD_ritual","OH5120",1) Global("OHD_vernus_resurrected","OH5120",1)~ THEN BEGIN 0 
  SAY #76246 /* ~Who has summoned me back to the plane of the living?~ [OH76246] */
  IF ~~ THEN REPLY #76247 /* ~I am <CHARNAME>, and I need your help.~ */ GOTO 1
  IF ~~ THEN REPLY #76248 /* ~We've summoned you back to Resurrection Gorge. I'm not sure that counts as living.~ */ GOTO 7
  IF ~~ THEN REPLY #76249 /* ~It's who can send you back you need to concern yourself with now, druid.~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 
  SAY #76251 /* ~You have my thanks. I am Vernus. How may I be of service?~ [OH76251] */
  IF ~~ THEN REPLY #76253 /* ~I seek your missing summoning stones.~ */ GOTO 11
END

IF ~~ THEN BEGIN 2 
  SAY #76256 /* ~Who are you? Who comes here to my place of power and threatens me?~ [OH76256] */
  IF ~~ THEN REPLY #76257 /* ~I am <CHARNAME>. I seek your missing summoning stones.~ */ GOTO 11
  IF ~~ THEN REPLY #76258 /* ~You do realize that until a few seconds ago, you'd been lying dead in your "place of power," don't you?~ */ GOTO 3 
END

IF ~~ THEN BEGIN 3 
  SAY #76260 /* ~Yes, all right, I'll admit it: My place of power isn't all it used to be. Nevertheless, it's rude to threaten someone in the place of their working.~ [OH76260] */
  IF ~~ THEN REPLY #76261 /* ~I apologize. I merely sought to get you focused on the matter at hand.~ */ GOTO 4
  IF ~~ THEN REPLY #76262 /* ~I could be ruder still if you don't tell me what I wish to know.~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 
  SAY #76263 /* ~Which is?~ [OH76263] */
  IF ~~ THEN REPLY #76264 /* ~We have need of your circle. Unfortunately, it's currently missing several summoning stones.~ */ GOTO 11
END

IF ~~ THEN BEGIN 7 
  SAY #76268 /* ~Who are you? Why have you come here?~ [OH76268] */
  IF ~~ THEN REPLY ~I'm <CHARNAME>. I'm hunting down a half-orc named Dorn Il-Khan.~ GOTO 1
  IF ~~ THEN REPLY #76271 /* ~We seek the stones. Tell us where they are, or you'll regret ever leaving whatever inferno we pulled you from.~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 
  SAY #76285 /* ~Summoning stones...? Oh yes, it's coming back to me now...~ [OH76285] */
  IF ~~ THEN REPLY #76286 /* ~What do you recall?~ */ GOTO 15
  IF ~~ THEN REPLY #76287 /* ~Excellent. I'd hate to think we'd wasted a good resurrection for nothing.~ */ GOTO 12
  IF ~~ THEN REPLY #76288 /* ~Tell us where we can find the stones, druid.~ */ GOTO 23
END

IF ~~ THEN BEGIN 12 
  SAY #76289 /* ~I'd think restoring a good man's life would be its own reward.~ [OH76289] */
  IF ~~ THEN REPLY #76290 /* ~It is, but all our lives are in peril while a tanar'ri stalks the gorge.~ */ GOTO 13
  IF ~~ THEN REPLY #76292 /* ~Think again. Where are the summoning stones?~ */ GOTO 23
END

IF ~~ THEN BEGIN 13 
  SAY #76293 /* ~It's still here?~ [OH76293] */
  IF ~~ THEN REPLY #76294 /* ~Yarrow and her tree kept it from escaping.~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 
  SAY #76295 /* ~It must be stopped!~ [OH76295] */
  IF ~~ THEN REPLY #76296 /* ~The sooner you tell us where the stones are, the sooner we can deal with the monster.~ */ GOTO 23
END

IF ~~ THEN BEGIN 15 
  SAY #76297 /* ~I made the circle to gain entry to the Beastlands, but... something went wrong. Instead, I found myself connected to the Abyss!~ [OH76297] */
    IF ~~ THEN REPLY #76298 /* ~What did you do?~ */ GOTO 16
  IF ~~ THEN REPLY #76299 /* ~I hate it when that happens.~ */ GOTO 16
  IF ~~ THEN REPLY #76300 /* ~I care not how you died, druid. Just tell us where to find the summoning stones.~ */ GOTO 23
END

IF ~~ THEN BEGIN 16 
  SAY #76305 /* ~I tried to close the portal, but like the wind, a demon was upon me. In my final seconds, I had to choose: Slay my killer, or close the circle.~ [OH76305] */
  IF ~~ THEN REPLY #76306 /* ~You couldn't allow the Abyss unfettered access to our realm.~ */ GOTO 18
  IF ~~ THEN REPLY #76307 /* ~A difficult choice.~ */ GOTO 19
  IF ~~ THEN REPLY #76308 /* ~I would have slain the demon who took my life.~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 
  SAY #76309 /* ~And leave countless demons with access to this world?~ [OH76309] */
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 18 
  SAY #76312 /* ~Of course not. Can you imagine the carnage?~ [OH76312] */
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 19 
  SAY #76313 /* ~Not so difficult. What does my life matter when a world's fate hangs in the balance?~ [OH76313] */
  IF ~~ THEN REPLY #76314 /* ~When you put it that way, there really is no other choice.~ */ GOTO 23  
  IF ~~ THEN REPLY #76315 /* ~Your experience of the world may be somewhat different than mine.~ */ GOTO 22
  IF ~~ THEN REPLY #76316 /* ~I guess some lives are worth more than others. I'd not let my death go unavenged, regardless of the cost.~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 
  SAY #76317 /* ~Really? You'd take your revenge no matter the cost?~ [OH76317] */
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 21 
  SAY #76318 /* ~You'd have your revenge, regardless of the cost?~ [OH76318] */
  IF ~~ THEN REPLY #76319 /* ~I'm not here to discuss hypothetical situations. Tell me of the stones.~ */ GOTO 23
END

IF ~~ THEN BEGIN 22 
  SAY #76320 /* ~Surely not so different that you'd let it burn?~ [OH76320] */
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 
  SAY #76321 /* ~The stones still hold some of the working's power. I can sense them within the gorge.~ [OH76321] */
  IF ~~ THEN REPLY #76322 /* ~So they're all still here. Good. Can you tell us where?~ */ GOTO 26
END

IF ~~ THEN BEGIN 26 
  SAY #76332 /* ~The stones are strewn about the gorge. One can be found behind Winterbrook's fall; the dragons hold another. But most are in the tanar'ri's clutches.~ [OH76332] */
  IF ~~ THEN REPLY #76333 /* ~We knew we'd have to face the demon at some point.~ */ GOTO 27
  IF ~~ THEN REPLY #76334 /* ~I'm really starting to dislike this place.~ */ GOTO 29
  IF ~~ THEN REPLY #76335 /* ~Not for long.~ */ DO ~SetGlobal("bfsvernres","GLOBAL",1) AddJournalEntry(@10004, QUEST) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 27 
  SAY #76336 /* ~You'll have to find it first. It's invisible.~ [OH76336] */
  IF ~  OR(15)
HaveSpellParty(INQUIS_TRUE_SIGHT)
HaveSpellParty(HELM_TRUE_SIGHT)
HaveSpellParty(CLERIC_INVISIBILITY_PURGE)
HaveSpellParty(CLERIC_TRUE_SIGHT)
HaveSpellParty(WIZARD_DETECT_INVISIBILITY)
HaveSpellParty(WIZARD_GLITTERDUST)
HaveSpellParty(WIZARD_ORACLE)
HaveSpellParty(WIZARD_TRUE_SIGHT)
PartyHasItem("scrl7m")
PartyHasItem("scrl87")
PartyHasItem("scrla3")
PartyHasItem("scrl6w")
PartyHasItem("npmisc1")
PartyHasItem("sw1h32")
PartyHasItem("sw1h34")
~ THEN REPLY #76337 /* ~That shouldn't be a problem.~ */ GOTO 29
  IF ~  !HaveSpellParty(INQUIS_TRUE_SIGHT)
!HaveSpellParty(HELM_TRUE_SIGHT)
!HaveSpellParty(CLERIC_INVISIBILITY_PURGE)
!HaveSpellParty(CLERIC_TRUE_SIGHT)
!HaveSpellParty(WIZARD_DETECT_INVISIBILITY)
!HaveSpellParty(WIZARD_GLITTERDUST)
!HaveSpellParty(WIZARD_ORACLE)
!HaveSpellParty(WIZARD_TRUE_SIGHT)
!PartyHasItem("scrl7m")
!PartyHasItem("scrl87")
!PartyHasItem("scrla3")
!PartyHasItem("scrl6w")
!PartyHasItem("npmisc1")
!PartyHasItem("sw1h32")
!PartyHasItem("sw1h34")
~ THEN REPLY #76338 /* ~That could be a problem.~ */ GOTO 29
  IF ~~ THEN REPLY #76339 /* ~Of course it is. Why wouldn't it be?~ */ GOTO 28
  IF ~~ THEN REPLY #76340 /* ~Leave that to us.~ */ GOTO 29
END

IF ~~ THEN BEGIN 28 
  SAY #76341 /* ~A more dangerous, deadly creature than a glabrezu you'll never meet—at least not if you're lucky.~ [OH76341] */
  IF ~~ THEN REPLY #76342 /* ~If it bleeds, we can kill it.~ */ GOTO 30
END

IF ~~ THEN BEGIN 29 
  SAY #76343 /* ~You should have seen the gorge before I made my one tragic error. The great tree standing watch over the land, my mother and I doing our works, Yarrow and Treadsoft dancing in its branches. Ah! What horror I have wrought!~ [OH76343] */
  IF ~~ THEN REPLY #76344 /* ~Be at peace, my friend. We'll set things right.~ */ DO ~SetGlobal("bfsvernres","GLOBAL",1) AddJournalEntry(@10004, QUEST) EscapeArea()~ EXIT
  IF ~~ THEN REPLY #76345 /* ~A pretty extensive one, I'm afraid.~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 
  SAY #76347 /* ~I am a fool... and Resurrection Gorge has paid the price.~ [OH76347] */
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 
  SAY #76351 /* ~Curse me! Curse me thrice and thrice again! My ego has doomed this place, and the world will surely follow.~ [OH76351] */
  IF ~~ THEN DO ~SetGlobal("bfsvernres","GLOBAL",1) AddJournalEntry(@10004, QUEST) EscapeArea()~ EXIT
END

/* first time res, post dorn fight */ 
IF WEIGHT #0 ~!StateCheck("ohdvern",STATE_SLEEPING) NumberOfTimesTalkedTo(0) GlobalGT("OHD_ritual","OH5120",0)~ THEN BEGIN 41 
  SAY #77422 /* ~What—? I'm alive? This—this is fantastic! Hahaha! But—but who are you, and what are you doing here?~ [OH77422] */
  IF ~~ THEN REPLY ~I am <CHARNAME> and I have saved you from a most dreadful fate.~ GOTO bfs.vern2
  IF ~~ THEN REPLY ~My name is no concern of yours. You need only know that I have pulled you back from death.~ GOTO bfs.vern2
END

IF ~~ THEN BEGIN bfs.vern2
SAY ~It's coming back to me now. The summoning stones, the circle. I sought to visit the Beastlands and instead tore open a path to the Abyss. A demon came through. I remember its claws striking towards me... and then nothing.~
 IF ~~ THEN REPLY ~The glabrezu you unleashed has been destroyed and the portal closed.~ GOTO bfs.vern3
 IF ~~ THEN REPLY ~Your mistake nearly cost this gorge everything. By my hand, it has been corrected.~ GOTO bfs.vern3
END

IF ~~ THEN BEGIN bfs.vern3
  SAY ~Then I am guilty of much...but not of dooming the world. Small comfort. In my folly I have surely corrupted my home.~
  IF ~~ THEN REPLY ~Learn from your mistake. Protect your home. That is all I ask.~ GOTO bfs.vern4
  IF ~~ THEN REPLY ~The dead rarely receive second chances. Do not squander this one.~ GOTO bfs.vern4
  IF ~OR(2) Class(Player1,DRUID_ALL) Class(Player1,RANGER_ALL)~ THEN REPLY ~You erred as any of us might. But we are sworn to the land. That duty does not end with death. You have been given a second chance, use it to restore and protect the balance.~ GOTO bfs.vern4
END

IF ~~ THEN BEGIN bfs.vern4
  SAY ~A second chance...~
 IF ~~ THEN REPLY ~You should return to Summerheigh.~ GOTO bfs.vern5
END

IF ~~ THEN BEGIN bfs.vern5
  SAY ~My mother yet lives? I will go to her. I will learn humility at her side once more. Thank you, <PRO_RACE>.~
 IF ~~ THEN DO ~AddJournalEntry(@10004, QUEST) EscapeArea()~ EXIT
END
