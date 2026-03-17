BEGIN ~BFSUMM~

/* quest is completed, vernus might be resurrected */
IF ~GlobalGT("bfazodefeat","GLOBAL",0)~ THEN BEGIN bfs.sumcomplete
SAY @0 /* I sense a change upon the wind. The land breathes easier and the tree's branches no longer bow beneath their burden. My boy's folly need not define the gorge forever. You have done a great thing, <PRO_RACE>. */
  IF ~Global("bfsvernres","GLOBAL",1)~ THEN REPLY @1 /* Has Vernus returned to you safely? */ GOTO bfs.sumvernreunion
  IF ~NumInPartyGT(1)~ THEN REPLY @2 /* We would like to resupply. */ DO ~StartStore("ohdsumm",LastTalkedToBy(Myself))~ EXIT
  IF ~!NumInPartyGT(1)~ THEN REPLY @3 /* I would like to resupply. */ DO ~StartStore("ohdsumm",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @4 /* That is all I wished to know. */ EXIT
  IF ~OR(2) Class(Player1,DRUID_ALL) Class(Player1,RANGER_ALL)~ THEN REPLY @5 /* May the land flourish under your guidance. */ EXIT
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN bfs.sumvernreunion
SAY @6 /* My...my son? */
IF ~~ THEN DO ~SetGlobal("bfsvernres","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("bfsumr")~ EXIT
END

/* upon entering, first talk */

IF ~GlobalLT("OHD_Dorn_Gorge","OH5100",4)~ THEN BEGIN 0 // from:
  SAY #75470 /* ~Ho there, travelers. What brings you to this blighted place?~ [OH75470] */
  IF ~NumInPartyGT(1)~ THEN REPLY @7 /* We follow the trail of a half-orc. Did you see him pass through? */ DO ~SetGlobal("OHD_Dorn_Gorge","OH5100",4)~ GOTO bfs.summer1
  IF ~!NumInPartyGT(1)~ THEN REPLY @8 /* I follow the trail of a half-orc. Did you see him pass through? */ DO ~SetGlobal("OHD_Dorn_Gorge","OH5100",4)~ GOTO bfs.summer1
  IF ~NumInPartyGT(1)~ THEN REPLY @9 /* Peace. We mean you no harm. We seek only answers. */ DO ~SetGlobal("OHD_Dorn_Gorge","OH5100",4)~ GOTO 13
  IF ~!NumInPartyGT(1)~ THEN REPLY @10 /* Peace. I mean you no harm. I only seek answers. */ DO ~SetGlobal("OHD_Dorn_Gorge","OH5100",4)~ GOTO 13
  IF ~!Class(Player1,RANGER_ALL) !Class(Player1,DRUID_ALL)~ THEN REPLY #75473 /* ~You call this lovely pastoral scene blighted? Are you mad, woman?~ */ DO ~SetGlobal("OHD_Dorn_Gorge","OH5100",4)~ GOTO 3
  IF ~OR(2) Class(Player1,RANGER_ALL) Class(Player1,DRUID_ALL)~ THEN REPLY @11 /* This seems a lovely pastoral scene, yet the land feels wounded. */ DO ~SetGlobal("OHD_Dorn_Gorge","OH5100",4)~ GOTO bfs.summer2
END

IF ~ Global("OHD_Dorn_Gorge","OH5100",4)
~ THEN BEGIN 1 // from:
  SAY #75573 /* ~You again? You're still alive, so I assume you've yet to enter the gorge. Having second thoughts?~ [OH75573] */
  IF ~NumInPartyGT(1)~ THEN REPLY @12 /* I was hoping you could tell us more about what happened. */ GOTO 37
  IF ~!NumInPartyGT(1)~ THEN REPLY @13 /* I was hoping you could tell me more about what happened. */ GOTO 37
  IF ~NumInPartyGT(1)~ THEN REPLY @2 /* We would like to resupply. */ DO ~StartStore("ohdsumm",LastTalkedToBy(Myself))~ EXIT
  IF ~!NumInPartyGT(1)~ THEN REPLY @3 /* I would like to resupply. */ DO ~StartStore("ohdsumm",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @14 /* Not yet. We'll speak again if we must. */ EXIT
END

IF ~~ THEN BEGIN bfs.summer1
SAY @15 /* Another stormed past. He did not linger, nor heed my warnings. */
= @16 /* I fear he may have found his way inside the gorge, or worse, into the tree itself. */
IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN bfs.summer2
SAY @17 /* You sense it too? */
IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 3 
  SAY #75478 /* ~I'm not mad. Perhaps you are blind?~ [OH75478] */
  IF ~~ THEN REPLY #75479 /* ~I prefer to think of myself as optimistic.~ */ GOTO 4
  IF ~~ THEN REPLY @18 /* Then tell me what you sense that I do not. */ GOTO 13
  IF ~~ THEN REPLY @19 /* If there is danger here, I want to be forewarned. */ GOTO 13
END

IF ~~ THEN BEGIN 4 
  SAY #75480 /* ~Well, there's little enough of that to be found in this place. I am Summerheigh. Welcome.~ [OH75480] */
  IF ~~ THEN REPLY #75481 /* ~Thank you, Summerheigh. I am <CHARNAME>. Have you lived here long?~ */ GOTO 14
END

IF ~~ THEN BEGIN 13 
  SAY #75516 /* ~My name is Summerheigh.~ [OH75516] */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 
  SAY #75517 /* ~I've lived here all my life.~ [OH75517] */
  IF ~~ THEN REPLY #75518 /* ~And a full life it looks to have been.~ */ GOTO 15
  IF ~~ THEN REPLY #75519 /* ~I'm sorry to hear it.~ */ GOTO 16
  IF ~~ THEN REPLY #75520 /* ~If you wish that life to continue, prithee skip to the part about the gorge.~ */ GOTO 20
END

IF ~~ THEN BEGIN 15 
  SAY #75521 /* ~It's empty now. All that once filled me with joy has been twisted beyond recognition, corrupted by the foul creature trapped within the great tree or killed outright.~ [OH75521] */
  IF ~~ THEN REPLY #75522 /* ~You've suffered much.~ */ GOTO 16
  IF ~~ THEN REPLY #75524 /* ~By the gods, woman, get to the point.~ */ GOTO 22
END

IF ~~ THEN BEGIN 16 
  SAY #75525 /* ~Sorrow abounds in the shade of that gnarled monstrosity.~ [OH75525] */
  IF ~~ THEN REPLY #75526 /* ~The tree?~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 
  SAY #75527 /* ~The tree, aye. It wasn't always the misshapen thing you see before you. Once this was a place of light and peace. No longer.~ [OH75527] */
  IF ~~ THEN REPLY @20 /* I'm sorry to hear that. */ GOTO 22
  IF ~~ THEN REPLY #75528 /* ~What happened?~ */ GOTO 22
  IF ~OR(2) Class(Player1,DRUID_ALL) Class(Player1,RANGER_ALL)~ THEN REPLY @21 /* The land remembers what was taken from it. */ GOTO bfs.summer3
END

IF ~~ THEN BEGIN bfs.summer3
SAY @22 /* You understand more than most. The wound runs deep and it festers still. */
IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 19 
  SAY #75531 /* ~I know not the exact nature of the fiend that lurks within the gorge. Perhaps someday, when I've had my fill of this life, I'll venture down into the darkness. For now, I know only the effect it had.~ [OH75531] */
  IF ~~ THEN REPLY #75532 /* ~Do you know how it came to be here?~ */ GOTO 22
  IF ~~ THEN REPLY #75534 /* ~Interesting. Less informative than I'd hoped, but I'm getting accustomed to taking action without knowing the entire picture.~ */ GOTO 22
  IF ~~ THEN REPLY #75535 /* ~If that's all you know, then you're of no use to us. ~ */ EXIT
END

IF ~~ THEN BEGIN 20 
  SAY #75537 /* ~You think to sway me with threats? End my life, I beg you. I've naught left to live for.~ [OH75537] */
  IF ~~ THEN REPLY #75538 /* ~I merely wish to know what we shall face within the gorge.~ */ GOTO 19
  IF ~~ THEN REPLY #75539 /* ~You make it mighty tempting. I'll consider your request while you finish with your tale.~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 
  SAY #75543 /* ~My son, oh, my poor boy, Vernus... He sought a portal to the Beastlands.~ [OH75543] */
  IF ~~ THEN REPLY #75544 /* ~Did it work?~ */ GOTO 23
  IF ~~ THEN REPLY #75545 /* ~Obviously, it failed.~ */ GOTO 23
  IF ~~ THEN REPLY #75546 /* ~Show some dignity, woman. Your tears are of no use to us.~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 
  SAY #75549 /* ~Vernus was an accomplished druid. I don't know what went wrong. My boy, my poor, poor boy...~ [OH75549] */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 
  SAY #75550 /* ~Instead of the Beastlands, Vernus's portal reached into the Abyss. If I was only there to help him prepare—but I didn't know. I couldn't know...~ [OH75550] */
  IF ~~ THEN REPLY #75551 /* ~I'm sure you did everything you could for your son.~ */ DO ~SetGlobal("OHD_Summerheigh2","GLOBAL",1)~ GOTO 38
  IF ~~ THEN REPLY #75552 /* ~I won't let Vernus's loss be for nothing. What happened next?~ */ DO ~SetGlobal("OHD_Summerheigh2","GLOBAL",1)~ GOTO 38
  IF ~~ THEN REPLY @23 /* Dwelling on your regret won't resolve the problem. */ DO ~SetGlobal("OHD_Summerheigh2","GLOBAL",1)~ GOTO 38
END

IF ~~ THEN BEGIN 37 
  SAY #75604 /* ~My boy, ah, my poor, poor boy—he sought to make contact with the Beastlands and instead opened a portal to the Abyss.~ [OH75604] */
  IF ~~ THEN REPLY #75605 /* ~And then?~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 
  SAY #75606 /* ~A great evil escaped into our world through Vernus's portal.~ [OH75606] */
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39 
  SAY #75607 /* ~But for the great tree's dryad, Yarrow, it would surely have wreaked havoc upon the realm. She used the tree's power to confine the monster to the gorge.~ [OH75607] */
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 
  SAY #75608 /* ~For years, its vile presence has poisoned this place. Soon its corrupting touch will spread from Athkatla to Esmeltaran!~ [OH75608] */
  IF ~~ THEN REPLY #75609 /* ~I thought you said it was confined to the gorge.~ */ GOTO 41
  IF ~~ THEN REPLY #75610 /* ~It'll what now?~ */ GOTO 42  
  IF ~~ THEN REPLY #75612 /* ~That remains to be seen.~ */ GOTO 42
END

IF ~~ THEN BEGIN 41 
  SAY #75613 /* ~For now.~ [OH75613] */
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42 
  SAY #75614 /* ~The Abyss's corruption touches every part of the tree. With every passing day, the tree grows weaker. Yarrow cannot contain that malign creature much longer.~ [OH75614] */
  IF ~~ THEN REPLY #75615 /* ~Then we must make haste.~ */ GOTO 47  
  IF ~~ THEN REPLY #75616 /* ~So if we fail, unimaginable evil will be unleashed upon the world. Great. That's just great. ~ */ GOTO 47
  IF ~~ THEN REPLY #75617 /* ~Then the dryad is fortunate indeed, for her labors near an end.~ */ GOTO 48
END

IF ~~ THEN BEGIN 45 
  SAY #75627 /* ~But the evil within the gorge must be stopped, and you appear to be the only ones willing to take on the task. To that end, I will offer you what little aid I can.~ [OH75627] */
  IF ~~ THEN REPLY #75628 /* ~I appreciate that, Summerheigh.~ */ GOTO 47
  IF ~~ THEN REPLY #75629 /* ~You have more to offer than words of encouragement?~ */ GOTO 63
  IF ~~ THEN REPLY #75630 /* ~Finally, a shred of wisdom from your withered hide. What can you do to help us?~ */ GOTO 47
END

IF ~~ THEN BEGIN 47 
  SAY @24 /* There's no straight path to enter the gorge. A treacherous journey awaits you, regardless of what I do. */ 
  IF ~~ THEN REPLY @25 /* Thank you for your assistance, Summerheigh. */ GOTO 61  
  IF ~~ THEN REPLY @26 /* If that's all you have to say, then you've been of no help. */ GOTO 61
END

IF ~~ THEN BEGIN 48 
  SAY #75640 /* ~Your arrogance blinds you to the menace you're about to face. I pray to Silvanus your eyes are opened before it's too late for us all.~ [OH75640] */
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 61 
  SAY #75682 /* ~I also have some items that may be of use.~ [OH75682] */
  IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 62 
  SAY #75683 /* ~You understand that though I support your efforts, I cannot part with them for nothing.~ [OH75683] */ 
  IF ~~ THEN DO ~StartStore("ohdsumm",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 63 
  SAY #75687 /* ~I have some items that may be of use to you.~ [OH75687] */
  IF ~~ THEN GOTO 62
END
