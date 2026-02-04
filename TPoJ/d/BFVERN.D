// creator  : D:\Games\Baldur's Gate II Enhanced Edition\Data\00783\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Baldur's Gate II Enhanced Edition\Data\00783
// resource : OHDVERN.DLG
// source   : data\25Dialog.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~OHDVERN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 41 even though they appear after this state */
~  NumberOfTimesTalkedTo(0)
GlobalLT("OHD_ritual","OH5120",3)
Global("OHD_vernus_resurrected","OH5120",1)
~ THEN BEGIN 0 // from:
  SAY #76246 /* ~Who has summoned me back to the plane of the living?~ [OH76246] */
  IF ~~ THEN REPLY #76247 /* ~I am <CHARNAME>, and I need your help.~ */ GOTO 1
  IF ~~ THEN REPLY #76248 /* ~We've summoned you back to Resurrection Gorge. I'm not sure that counts as living.~ */ GOTO 7
  IF ~~ THEN REPLY #76249 /* ~It's who can send you back you need to concern yourself with now, druid.~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0 7.0
  SAY #76251 /* ~You have my thanks. I am Vernus. How may I be of service?~ [OH76251] */
  IF ~  IfValidForPartyDialogue("dorn")
~ THEN REPLY #76252 /* ~Dorn?~ */ EXTERN ~DORNJ~ 619
  IF ~  !IfValidForPartyDialogue("dorn")
~ THEN REPLY #76253 /* ~I seek your missing summoning stones.~ */ GOTO 11
  IF ~  !IfValidForPartyDialogue("dorn")
~ THEN REPLY #76254 /* ~I'll get back to you on that.~ */ EXIT
  IF ~  !IfValidForPartyDialogue("dorn")
CheckStatGT(Player1,13,STR)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY #76255 /* ~If you wish to continue breathing, you'll tell me where to find the stones to complete your summoning circle.~ */ GOTO 8
  IF ~  !IfValidForPartyDialogue("dorn")
OR(2)
!CheckStatGT(Player1,13,STR)
!CheckStatGT(Player1,13,CHR)
~ THEN REPLY #76255 /* ~If you wish to continue breathing, you'll tell me where to find the stones to complete your summoning circle.~ */ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY #76256 /* ~Who are you? Who comes here to my place of power and threatens me?~ [OH76256] */
  IF ~~ THEN REPLY #76257 /* ~I am <CHARNAME>. I seek your missing summoning stones.~ */ GOTO 11
  IF ~~ THEN REPLY #76258 /* ~You do realize that until a few seconds ago, you'd been lying dead in your "place of power," don't you?~ */ GOTO 3
  IF ~  CheckStatGT(Player1,13,STR)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY #76259 /* ~My name is <CHARNAME>. If you dislike threats, we can dispense with making them and move straight to fulfilling them.~ */ GOTO 5
  IF ~  OR(2)
!CheckStatGT(Player1,13,STR)
!CheckStatGT(Player1,13,CHR)
~ THEN REPLY #76259 /* ~My name is <CHARNAME>. If you dislike threats, we can dispense with making them and move straight to fulfilling them.~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #76260 /* ~Yes, all right, I'll admit it: My place of power isn't all it used to be. Nevertheless, it's rude to threaten someone in the place of their working.~ [OH76260] */
  IF ~~ THEN REPLY #76261 /* ~I apologize. I merely sought to get you focused on the matter at hand.~ */ GOTO 4
  IF ~~ THEN REPLY #76262 /* ~I could be ruder still if you don't tell me what I wish to know.~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #76263 /* ~Which is?~ [OH76263] */
  IF ~~ THEN REPLY #76264 /* ~We have need of your circle. Unfortunately, it's currently missing several summoning stones.~ */ GOTO 11
END

IF ~~ THEN BEGIN 5 // from: 2.2 3.1
  SAY #76265 /* ~I'll answer any question if it'll help me be rid of you.~ [OH76265] */
  IF ~~ THEN EXTERN ~DORNJ~ 619
END

IF ~~ THEN BEGIN 6 // from: 1.4 2.3 9.4 11.3 15.4 24.4
  SAY #76266 /* ~I've died once already. I'll not be cowed by you!~ [OH76266] */
  IF ~~ THEN DO ~AddJournalEntry(76266,INFO)
Enemy()
~ EXIT
  IF ~  IfValidForPartyDialogue("dorn")
~ THEN EXTERN ~DORNJ~ 620
END

IF ~~ THEN BEGIN 7 // from: 0.1
  SAY #76268 /* ~Who are you? Why have you come here?~ [OH76268] */
  IF ~~ THEN REPLY #76269 /* ~I'm <CHARNAME>. I'm here to help a friend.~ */ GOTO 1
  IF ~~ THEN REPLY #76270 /* ~Good questions. The answers, not so much. ~ */ GOTO 9
  IF ~~ THEN REPLY #76271 /* ~We seek the stones. Tell us where they are, or you'll regret ever leaving whatever inferno we pulled you from.~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 1.3 7.2
  SAY #76272 /* ~The stones...?~ [OH76272] */
  IF ~~ THEN GOTO 11
  IF ~  IfValidForPartyDialogue("dorn")
~ THEN EXTERN ~DORNJ~ 621
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY #76274 /* ~Explain yourself.~ [OH76274] */
  IF ~~ THEN REPLY #76275 /* ~You may call me <CHARNAME>. We came in search of your circle of summoning. Unfortunately, it's a few stones short of functional at the moment.~ */ GOTO 11
  IF ~  !IfValidForPartyDialogue("dorn")
~ THEN REPLY #76276 /* ~Would that I could. Looking around, I can think of no satisfactory explanation for why I allowed myself to be dragged to this place.~ */ GOTO 10
  IF ~  IfValidForPartyDialogue("dorn")
~ THEN REPLY #76276 /* ~Would that I could. Looking around, I can think of no satisfactory explanation for why I allowed myself to be dragged to this place.~ */ EXTERN ~DORNJ~ 622
  IF ~  CheckStatGT(Player1,13,STR)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY #76277 /* ~You would make demands of <CHARNAME>? Count yourself lucky you are yet of use to me, druid. And pray that remains the case, for your own sake.~ */ GOTO 10
  IF ~  OR(2)
!CheckStatGT(Player1,13,STR)
!CheckStatGT(Player1,13,CHR)
~ THEN REPLY #76277 /* ~You would make demands of <CHARNAME>? Count yourself lucky you are yet of use to me, druid. And pray that remains the case, for your own sake.~ */ GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 9.1 9.3
  SAY #76282 /* ~Who are you, and what do you want?~ [OH76282] */
  IF ~~ THEN REPLY #76283 /* ~My name is <CHARNAME>. I want the summoning stones. Where are they?~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 1.1 2.0 4.0 8.0 9.0 10.0
  SAY #76285 /* ~Summoning stones...? Oh yes, it's coming back to me now...~ [OH76285] */
  IF ~~ THEN REPLY #76286 /* ~What do you recall?~ */ GOTO 15
  IF ~~ THEN REPLY #76287 /* ~Excellent. I'd hate to think we'd wasted a good resurrection for nothing.~ */ GOTO 12
  IF ~  CheckStatGT(Player1,13,STR)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY #76288 /* ~Tell us where we can find the stones, druid.~ */ GOTO 23
  IF ~  OR(2)
!CheckStatGT(Player1,13,STR)
!CheckStatGT(Player1,13,CHR)
~ THEN REPLY #76288 /* ~Tell us where we can find the stones, druid.~ */ GOTO 6
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #76289 /* ~I'd think restoring a good man's life would be its own reward.~ [OH76289] */
  IF ~~ THEN REPLY #76290 /* ~It is, but all our lives are in peril while a tanar'ri stalks the gorge.~ */ GOTO 13
  IF ~~ THEN REPLY #76291 /* ~I'll sleep well tonight knowing we helped you. But I'll sleep even better if we bring our business here to a rapid conclusion and get out of this thrice-damned hellhole.~ */ GOTO 26
  IF ~~ THEN REPLY #76292 /* ~Think again. Where are the summoning stones?~ */ GOTO 23
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #76293 /* ~It's still here?~ [OH76293] */
  IF ~~ THEN REPLY #76294 /* ~Yarrow and her tree kept it from escaping.~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #76295 /* ~It must be stopped!~ [OH76295] */
  IF ~~ THEN REPLY #76296 /* ~The sooner you tell us where the stones are, the sooner we can deal with the monster.~ */ GOTO 23
END

IF ~~ THEN BEGIN 15 // from: 11.0
  SAY #76297 /* ~I made the circle to gain entry to the Beastlands, but... something went wrong. Instead, I found myself connected to the Abyss!~ [OH76297] */
  IF ~  IfValidForPartyDialogue("dorn")
~ THEN REPLY #76298 /* ~What did you do?~ */ EXTERN ~DORNJ~ 624
  IF ~  !IfValidForPartyDialogue("dorn")
~ THEN REPLY #76298 /* ~What did you do?~ */ GOTO 16
  IF ~~ THEN REPLY #76299 /* ~I hate it when that happens.~ */ GOTO 16
  IF ~  CheckStatGT(Player1,13,STR)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY #76300 /* ~I care not how you died, druid. Just tell us where to find the summoning stones.~ */ GOTO 23
  IF ~  OR(2)
!CheckStatGT(Player1,13,STR)
!CheckStatGT(Player1,13,CHR)
~ THEN REPLY #76300 /* ~I care not how you died, druid. Just tell us where to find the summoning stones.~ */ GOTO 6
END

IF ~~ THEN BEGIN 16 // from: 15.1 15.2
  SAY #76305 /* ~I tried to close the portal, but like the wind, a demon was upon me. In my final seconds, I had to choose: Slay my killer, or close the circle.~ [OH76305] */
  IF ~~ THEN REPLY #76306 /* ~You couldn't allow the Abyss unfettered access to our realm.~ */ GOTO 18
  IF ~~ THEN REPLY #76307 /* ~A difficult choice.~ */ GOTO 19
  IF ~~ THEN REPLY #76308 /* ~I would have slain the demon who took my life.~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.2 20.0
  SAY #76309 /* ~And leave countless demons with access to this world?~ [OH76309] */
  IF ~  !IfValidForPartyDialogue("dorn")
~ THEN REPLY #76310 /* ~The Abyss take the world. I'd have my vengeance.~ */ GOTO 21
  IF ~  IfValidForPartyDialogue("dorn")
~ THEN REPLY #76310 /* ~The Abyss take the world. I'd have my vengeance.~ */ EXTERN ~DORNJ~ 626
END

IF ~~ THEN BEGIN 18 // from: 16.0
  SAY #76312 /* ~Of course not. Can you imagine the carnage?~ [OH76312] */
  IF ~  !IfValidForPartyDialogue("dorn")
~ THEN GOTO 21
  IF ~  IfValidForPartyDialogue("dorn")
~ THEN EXTERN ~DORNJ~ 626
END

IF ~~ THEN BEGIN 19 // from: 16.1
  SAY #76313 /* ~Not so difficult. What does my life matter when a world's fate hangs in the balance?~ [OH76313] */
  IF ~  !IfValidForPartyDialogue("dorn")
~ THEN REPLY #76314 /* ~When you put it that way, there really is no other choice.~ */ GOTO 21
  IF ~  IfValidForPartyDialogue("dorn")
~ THEN REPLY #76314 /* ~When you put it that way, there really is no other choice.~ */ EXTERN ~DORNJ~ 626
  IF ~~ THEN REPLY #76315 /* ~Your experience of the world may be somewhat different than mine.~ */ GOTO 22
  IF ~~ THEN REPLY #76316 /* ~I guess some lives are worth more than others. I'd not let my death go unavenged, regardless of the cost.~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.3
  SAY #76317 /* ~Really? You'd take your revenge no matter the cost?~ [OH76317] */
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 21 // from: 17.0 18.0 19.0 22.0
  SAY #76318 /* ~You'd have your revenge, regardless of the cost?~ [OH76318] */
  IF ~~ THEN REPLY #76319 /* ~I'm not here to discuss hypothetical situations. Tell me of the stones.~ */ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 19.2
  SAY #76320 /* ~Surely not so different that you'd let it burn?~ [OH76320] */
  IF ~  !IfValidForPartyDialogue("dorn")
~ THEN REPLY #76314 /* ~When you put it that way, there really is no other choice.~ */ GOTO 21
  IF ~  IfValidForPartyDialogue("dorn")
~ THEN REPLY #76314 /* ~When you put it that way, there really is no other choice.~ */ EXTERN ~DORNJ~ 626
END

IF ~~ THEN BEGIN 23 // from: 11.2 12.2 14.0 15.3 21.0
  SAY #76321 /* ~The stones still hold some of the working's power. I can sense them within the gorge.~ [OH76321] */
  IF ~~ THEN REPLY #76322 /* ~So they're all still here. Good. Can you tell us where?~ */ GOTO 26
  IF ~~ THEN REPLY #76323 /* ~Could you be a little more specific? Or a lot more specific. More specific, anyway. That would be good.~ */ EXTERN ~DORNJ~ 627
  IF ~~ THEN REPLY #76324 /* ~We already know they're in the gorge. Tell us where, damn you!~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.2
  SAY #76325 /* ~Patience, my friend...~ [OH76325] */
  IF ~~ THEN REPLY #76326 /* ~My apologies. I'm anxious to be free of this place.~ */ GOTO 26
  IF ~  !IfValidForPartyDialogue("dorn")
~ THEN REPLY #76327 /* ~I've patience aplenty. ~ */ GOTO 26
  IF ~  IfValidForPartyDialogue("dorn")
~ THEN REPLY #76327 /* ~I've patience aplenty. ~ */ EXTERN ~DORNJ~ 627
  IF ~  CheckStatGT(Player1,13,STR)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY #76328 /* ~We're no friends, and I've no patience. Tell us the location of the stones, or on this poisoned tree's life, I swear I'll see you back to the netherworld!~ */ GOTO 25
  IF ~  OR(2)
!CheckStatGT(Player1,13,STR)
!CheckStatGT(Player1,13,CHR)
~ THEN REPLY #76328 /* ~We're no friends, and I've no patience. Tell us the location of the stones, or on this poisoned tree's life, I swear I'll see you back to the netherworld!~ */ GOTO 6
END

IF ~~ THEN BEGIN 25 // from: 24.3
  SAY #76329 /* ~Go ahead—I'll meet you pigs there soon enough!~ [OH76329] */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 12.1 23.0 24.0 24.1 25.0
  SAY #76332 /* ~The stones are strewn about the gorge. One can be found behind Winterbrook's fall; the dragons hold another. But most are in the tanar'ri's clutches.~ [OH76332] */
  IF ~~ THEN REPLY #76333 /* ~We knew we'd have to face the demon at some point.~ */ GOTO 27
  IF ~~ THEN REPLY #76334 /* ~I'm really starting to dislike this place.~ */ GOTO 29
  IF ~~ THEN REPLY #76335 /* ~Not for long.~ */ DO ~AddJournalEntry(90346,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
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
!IfValidForPartyDialogue("dorn")
~ THEN REPLY #76337 /* ~That shouldn't be a problem.~ */ GOTO 29
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
IfValidForPartyDialogue("dorn")
~ THEN REPLY #76337 /* ~That shouldn't be a problem.~ */ EXTERN ~DORNJ~ 628
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
!IfValidForPartyDialogue("dorn")
~ THEN REPLY #76338 /* ~That could be a problem.~ */ GOTO 29
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
IfValidForPartyDialogue("dorn")
~ THEN REPLY #76338 /* ~That could be a problem.~ */ EXTERN ~DORNJ~ 628
  IF ~~ THEN REPLY #76339 /* ~Of course it is. Why wouldn't it be?~ */ GOTO 28
  IF ~~ THEN REPLY #76340 /* ~Leave that to us.~ */ GOTO 29
END

IF ~~ THEN BEGIN 28 // from: 27.4
  SAY #76341 /* ~A more dangerous, deadly creature than a glabrezu you'll never meet—at least not if you're lucky.~ [OH76341] */
  IF ~~ THEN REPLY #76342 /* ~If it bleeds, we can kill it.~ */ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 26.1 27.0 27.2 27.5
  SAY #76343 /* ~You should have seen the gorge before I made my one tragic error. The great tree standing watch over the land, my mother and I doing our works, Yarrow and Treadsoft dancing in its branches. Ah! What horror I have wrought!~ [OH76343] */
  IF ~~ THEN REPLY #76344 /* ~Be at peace, my friend. We'll set things right.~ */ EXIT
  IF ~~ THEN REPLY #76345 /* ~A pretty extensive one, I'm afraid.~ */ GOTO 30
  IF ~  IfValidForPartyDialogue("dorn")
~ THEN REPLY #76346 /* ~A worthy one, if it furnishes what I desire.~ */ EXTERN ~DORNJ~ 628
  IF ~  !IfValidForPartyDialogue("dorn")
~ THEN REPLY #76346 /* ~A worthy one, if it furnishes what I desire.~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.0 29.1
  SAY #76347 /* ~I am a fool... and Resurrection Gorge has paid the price.~ [OH76347] */
  IF ~~ THEN REPLY #76348 /* ~Calm yourself. The tree can still be restored. You'll see.~ */ DO ~AddJournalEntry(90346,QUEST)
~ EXIT
  IF ~~ THEN REPLY #76349 /* ~Yeah, pretty much.~ */ GOTO 31
  IF ~  IfValidForPartyDialogue("dorn")
~ THEN REPLY #76350 /* ~Your wailing changes nothing, druid. Accept your folly and move on.~ */ EXTERN ~DORNJ~ 628
  IF ~  !IfValidForPartyDialogue("dorn")
~ THEN REPLY #76350 /* ~Your wailing changes nothing, druid. Accept your folly and move on.~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY #76351 /* ~Curse me! Curse me thrice and thrice again! My ego has doomed this place, and the world will surely follow.~ [OH76351] */
  IF ~~ THEN REPLY #76352 /* ~Take heart, druid. We shall do everything in our power to ensure the tanar'ri's reign of terror ends before that happens.~ */ DO ~AddJournalEntry(90346,QUEST)
~ EXIT
  IF ~~ THEN REPLY #76353 /* ~Cheer up. The only thing my ego's ever doomed is my prospects for a happy, contented future.~ */ GOTO 32
  IF ~  IfValidForPartyDialogue("dorn")
~ THEN REPLY #76354 /* ~Hah! Even now your ego gets away from you. The world's fate is in our hands now, not yours.~ */ EXTERN ~DORNJ~ 628
  IF ~  !IfValidForPartyDialogue("dorn")
~ THEN REPLY #76354 /* ~Hah! Even now your ego gets away from you. The world's fate is in our hands now, not yours.~ */ DO ~AddJournalEntry(90346,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.1
  SAY #76355 /* ~Would that I could die a thousand times! I deserve no better!~ [OH76355] */
  IF ~~ THEN REPLY #76356 /* ~You've already died once; that is more than enough. Rest now; we'll return with the summoning stones, or not at all.~ */ DO ~AddJournalEntry(90346,QUEST)
~ EXIT
  IF ~~ THEN REPLY #76357 /* ~That's a little harsh.~ */ GOTO 33
  IF ~  IfValidForPartyDialogue("dorn")
~ THEN REPLY #76358 /* ~You'll die a second time if you don't shut your blubbering mouth, you mewling wretch.~ */ EXTERN ~DORNJ~ 628
  IF ~  !IfValidForPartyDialogue("dorn")
~ THEN REPLY #76358 /* ~You'll die a second time if you don't shut your blubbering mouth, you mewling wretch.~ */ DO ~AddJournalEntry(90346,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.1
  SAY #76359 /* ~A pox upon my mother's womb! May it blacken and fester for nurturing the scourge who would bring Resurrection Gorge to such ruin!~ [OH76359] */
  IF ~~ THEN REPLY #76360 /* ~Come now, friend. Think bright thoughts, hold on to your memories of the good times. They will come again, I promise you.~ */ DO ~AddJournalEntry(90346,QUEST)
~ EXIT
  IF ~~ THEN REPLY #76361 /* ~There's really no reason to bring your mother into this, is there...?~ */ GOTO 34
  IF ~  IfValidForPartyDialogue("dorn")
~ THEN REPLY #76362 /* ~A pox upon you and your mother both! I'll hear no more of your infernal whining!~ */ EXTERN ~DORNJ~ 628
  IF ~  !IfValidForPartyDialogue("dorn")
~ THEN REPLY #76362 /* ~A pox upon you and your mother both! I'll hear no more of your infernal whining!~ */ DO ~AddJournalEntry(90346,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY #76363 /* ~May my father and grandfather burn in eternal torment for providing the seed that sprouted into the vines that drag this place down... tainting the great tree with the shadow of the Abyss! ~ [OH76363] */
  IF ~~ THEN REPLY #76364 /* ~Okay, we're going to be going now. Have a nice day.~ */ DO ~AddJournalEntry(90346,QUEST)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 41 even though they appear after this state */
~  Global("OHD_ritual","OH5120",2)
Global("OHD_vernus_resurrected","OH5120",1)
~ THEN BEGIN 35 // from:
  SAY #77212 /* ~So, you've returned.~ [OH77212] */
  IF ~~ THEN REPLY #77213 /* ~We have.~ */ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #77214 /* ~To what end?~ [OH77214] */
  IF ~~ THEN REPLY #77215 /* ~To bid you farewell.~ */ EXIT
  IF ~~ THEN REPLY #77216 /* ~Just wanted to check the place out, make sure everything is where it's supposed to be. Looks good.~ */ EXIT
  IF ~~ THEN REPLY #77217 /* ~To your end, druid.~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.2
  SAY #77218 /* ~I've already died once! I'll not do so again without a fight!~ [OH77218] */
  IF ~~ THEN DO ~Enemy()
Attack(Player1)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from:
  SAY #77408 /* ~W-what are you doing?~ [OH77408] */
  IF ~~ THEN EXTERN ~DORNJ~ 755
END

IF ~~ THEN BEGIN 39 // from:
  SAY #77417 /* ~Mercy, please. I've only just returned to life. I can't lose it again—~ [OH77417] */
  IF ~~ THEN EXTERN ~DORNJ~ 757
END

IF ~~ THEN BEGIN 40 // from:
  SAY #77419 /* ~No, please, I—I beg you, don't do this—~ [OH77419] */
  IF ~~ THEN EXTERN ~DORNJ~ 757
END

IF WEIGHT #0 ~  !StateCheck("ohdvern",STATE_SLEEPING)
NumberOfTimesTalkedTo(0)
Global("OHD_ritual","OH5120",3)
~ THEN BEGIN 41 // from:
  SAY #77422 /* ~What—? I'm alive? This—this is fantastic! Hahaha! But—but who are you, and what are you doing here?~ [OH77422] */
  IF ~~ THEN EXIT
END
