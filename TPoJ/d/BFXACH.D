BEGIN ~BFXACH~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 47 even though they appear after this state */
~  Global("OHD_xach_dlg","LOCALS",0)
~ THEN BEGIN 0 // from:
  SAY #77030 /* ~Ah! Damn your hides! I am Xachrimos! I'll not be laid low by such rabble!~ [OH77030] */
  IF ~~ THEN REPLY #77031 /* ~The evidence seems to say otherwise.~ */ DO ~SetGlobal("OHD_xach_dlg","LOCALS",1)
DestroyItem("minhp1")
ApplySpell(Myself,HEAL_NO_VISUAL)
~ GOTO 3
  IF ~~ THEN REPLY #77032 /* ~Are you sure about that? Because I'm pretty sure we're laying you pretty low.~ */ DO ~SetGlobal("OHD_xach_dlg","LOCALS",1)
DestroyItem("minhp1")
ApplySpell(Myself,HEAL_NO_VISUAL)
~ GOTO 6
  IF ~~ THEN REPLY #77033 /* ~No—you'll be slain by this rabble.~ */ DO ~SetGlobal("OHD_xach_dlg","LOCALS",1)
DestroyItem("minhp1")
ApplySpell(Myself,HEAL_NO_VISUAL)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.2 6.1
  SAY #77034 /* ~Wait!~ [OH77034] */
  IF ~~ THEN REPLY #77035 /* ~That doesn't seem the wisest course of action.~ */ GOTO 8
  IF ~~ THEN REPLY #77036 /* ~And give you a chance to recover? That sounds like a good idea.~ */ GOTO 2
  IF ~  !IfValidForPartyDialogue("dorn")
~ THEN REPLY #77037 /* ~I'll not listen to your demon promises, tanar'ri!~ */ GOTO 2
  IF ~  IfValidForPartyDialogue("dorn")
~ THEN REPLY #77037 /* ~I'll not listen to your demon promises, tanar'ri!~ */ EXTERN ~DORNJ~ 695
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.2
  SAY #77039 /* ~Then feel my demon wrath!~ [OH77039] */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 47 even though they appear after this state */
~  Global("OHD_xach_dlg","LOCALS",2)
~ THEN BEGIN 3 // from: 0.0
  SAY #77040 /* ~I cannot deny this battle doesn't go as I anticipated.~ [OH77040] */
  IF ~~ THEN REPLY #77041 /* ~Will you surrender?~ */ DO ~SetGlobal("OHD_xach_dlg","LOCALS",3)
~ GOTO 4
  IF ~~ THEN REPLY #77042 /* ~You think?~ */ DO ~SetGlobal("OHD_xach_dlg","LOCALS",3)
~ GOTO 8
  IF ~  !IfValidForPartyDialogue("dorn")
~ THEN REPLY #77043 /* ~Anticipate its quick and painful end.~ */ DO ~SetGlobal("OHD_xach_dlg","LOCALS",3)
~ GOTO 4
  IF ~  IfValidForPartyDialogue("dorn")
~ THEN REPLY #77043 /* ~Anticipate its quick and painful end.~ */ DO ~SetGlobal("OHD_xach_dlg","LOCALS",3)
~ EXTERN ~DORNJ~ 696
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.2
  SAY #77044 /* ~I will not.~ [OH77044] */
  IF ~  !IfValidForPartyDialogue("dorn")
~ THEN GOTO 5
  IF ~  IfValidForPartyDialogue("dorn")
~ THEN EXTERN ~DORNJ~ 697
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #77046 /* ~Stay your hand but a moment, I implore you.~ [OH77046] */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 0.1
  SAY #77047 /* ~Your arrogance will be your downfall.~ [OH77047] */
  IF ~~ THEN REPLY #77048 /* ~Perhaps, but you'll not live to see it.~ */ GOTO 8
  IF ~~ THEN REPLY #77049 /* ~That is undoubtedly true. But I sincerely doubt you'll have anything to do with it.~ */ GOTO 1
  IF ~  !IfValidForPartyDialogue("dorn")
~ THEN REPLY #77050 /* ~Your arch tongue will be yours.~ */ GOTO 7
  IF ~  IfValidForPartyDialogue("dorn")
~ THEN REPLY #77050 /* ~Your arch tongue will be yours.~ */ EXTERN ~DORNJ~ 698
END

IF ~~ THEN BEGIN 7 // from: 6.2
  SAY #77052 /* ~I'll rip your body to pieces and chew on your soul, <PRO_RACE>!~ [OH77052] */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.0 3.1 5.0 6.0
  SAY #77053 /* ~We can make a deal. I have much of value to offer adventurers such as yourselves.~ [OH77053] */
  IF ~~ THEN REPLY #77054 /* ~What could you possibly have that we would want?~ */ GOTO 14
  IF ~  !IfValidForPartyDialogue("dorn")
~ THEN REPLY #77055 /* ~Nothing good comes from cutting deals with glabrezu.~ */ GOTO 14
  IF ~  IfValidForPartyDialogue("dorn")
~ THEN REPLY #77055 /* ~Nothing good comes from cutting deals with glabrezu.~ */ EXTERN ~DORNJ~ 701
  IF ~~ THEN REPLY #77056 /* ~I'll believe nothing that rolls from your oily tongue.~ */ GOTO 13
END

IF ~~ THEN BEGIN 9 // from:
  SAY #77066 /* ~If it's power you seek, I can supply it. My abyssal sword's edge is as sharp as a shadow.~ [OH77066] */
  IF ~~ THEN EXTERN ~DORNJ~ 702
END

IF ~~ THEN BEGIN 10 // from:
  SAY #77069 /* ~I have many of the stones, but not all. Some were stolen while I was... distracted. But... spare my life and they and my sword will be yours.~ [OH77069] */
  IF ~~ THEN REPLY #77070 /* ~And we're just supposed to trust you to hand them over, are we?~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #77071 /* ~A demon's word binds it tighter than any chain can.~ [OH77071] */
  IF ~  !IfValidForPartyDialogue("dorn")
~ THEN REPLY #77073 /* ~And you'll swear an oath? You'll give us the sword and all the summoning stones you possess?~ */ GOTO 12
  IF ~  IfValidForPartyDialogue("dorn")
~ THEN EXTERN ~DORNJ~ 703
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #77074 /* ~The abyssal sword and all the summoning stones I have! Yes!~ [OH77074] */
  IF ~~ THEN DO ~EraseJournalEntry(@10001) GiveItem("ohdsw2ha",LastTalkedToBy(Myself))
GiveItem("ohdsums3",LastTalkedToBy(Myself))
SetGlobal("OHD_xach_ambush","GLOBAL",1)
AddJournalEntry(92458,INFO)
~ GOTO 44
END

IF ~~ THEN BEGIN 13 // from: 8.3
  SAY #77076 /* ~Then you are a fool!~ [OH77076] */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 8.0 8.1 13.0
  SAY #77085 /* ~If it's power you desire, I can supply that, and more. Wealth beyond your wildest imagining.~ [OH77085] */
  IF ~~ THEN REPLY #77086 /* ~Whatever you offer, the cost will be too high.~ */ GOTO 16
  IF ~~ THEN REPLY #77087 /* ~I require the summoning stones you stole from the great tree's circle.~ */ GOTO 15
  IF ~~ THEN REPLY #77088 /* ~Do you think us fools? Why would we ever take a tanar'ri at its word?~ */ GOTO 28
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY #77089 /* ~What are they worth to you?~ [OH77089] */
  IF ~~ THEN REPLY #77090 /* ~I've journeyed a great distance and overcome many obstacles to obtain them. They are not without value.~ */ GOTO 21
  IF ~~ THEN REPLY #77091 /* ~More than your life, I can assure you of that.~ */ GOTO 21
END

IF ~~ THEN BEGIN 16 // from: 14.0
  SAY #77092 /* ~I ask only that you spare my life.~ [OH77092] */
  IF ~~ THEN REPLY #77093 /* ~We require the stones of summoning taken from the great tree's circle.~ */ GOTO 19
  IF ~  !IfValidForPartyDialogue("dorn")
~ THEN REPLY #77094 /* ~Then you ask more than I'm prepared to give.~ */ GOTO 17
  IF ~  IfValidForPartyDialogue("dorn")
~ THEN REPLY #77094 /* ~Then you ask more than I'm prepared to give.~ */ EXTERN ~DORNJ~ 709
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY #77095 /* ~Pigheaded thing! Die!~ [OH77095] */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY #77097 /* ~You are wise, half-orc.~ [OH77097] */
  IF ~~ THEN EXTERN ~DORNJ~ 710
END

IF ~~ THEN BEGIN 19 // from: 16.0
  SAY @0 /* I may possess one. */
  IF ~~ THEN REPLY @1 /* We'll take everything you have. */ GOTO 21
END

IF ~~ THEN BEGIN 20 // from: 15.0
  SAY #77105 /* ~You seem to have me at a disadvantage, <PRO_RACE>. As I'm in no position to barter, I ask only that you spare my life.~ [OH77105] */
  IF ~~ THEN EXTERN ~DORNJ~ 711
END

IF ~~ THEN BEGIN 21 // from: 15.1
  SAY @2 /* My blade and the summoning stones in exchange for my life. You drive a hard bargain, <PRO_RACE>. */ 
  IF ~~ THEN REPLY #77107 /* ~Then we're agreed. Hand them over.~ */ DO ~EraseJournalEntry(@10001) GiveItem("ohdsw2ha",LastTalkedToBy(Myself))
GiveItem("ohdsums3",LastTalkedToBy(Myself))
SetGlobal("OHD_xach_ambush","GLOBAL",1)
~ GOTO 46
  IF ~  !IfValidForPartyDialogue("jaheira")
~ THEN REPLY #77108 /* ~I believe you also said something about wealth beyond my wildest imagining?~ */ DO ~EraseJournalEntry(@10001) GiveItem("ohdsw2ha",LastTalkedToBy(Myself))
GiveItem("ohdsums3",LastTalkedToBy(Myself))
~ GOTO 24
  IF ~  IfValidForPartyDialogue("jaheira")
~ THEN REPLY #77108 /* ~I believe you also said something about wealth beyond my wildest imagining?~ */ DO ~EraseJournalEntry(@10001) GiveItem("ohdsw2ha",LastTalkedToBy(Myself))
GiveItem("ohdsums3",LastTalkedToBy(Myself))
~ EXTERN ~JAHEIRAJ~ 540
  IF ~~ THEN REPLY #77109 /* ~And I'll drive a harder one still, tanar'ri.~ */ DO ~EraseJournalEntry(@10001) GiveItem("ohdsw2ha",LastTalkedToBy(Myself))
GiveItem("ohdsums3",LastTalkedToBy(Myself))
~ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.3
  SAY #77111 /* ~I've already offered you the stones and my sword. What more can you want?~ [OH77111] */
  IF ~~ THEN REPLY #77112 /* ~In truth, I believe you have nothing more that I desire. Begone.~ */ DO ~SetGlobal("OHD_xach_ambush","GLOBAL",1)
SetGlobal("OHD_xach_dlg","LOCALS",3)
~ EXIT
  IF ~~ THEN REPLY #77113 /* ~What more do you have?~ */ GOTO 24
  IF ~  !IfValidForPartyDialogue("dorn")
~ THEN REPLY #77114 /* ~Just your wretched life, demon.~ */ GOTO 23
  IF ~  IfValidForPartyDialogue("dorn")
~ THEN REPLY #77114 /* ~Just your wretched life, demon.~ */ EXTERN ~DORNJ~ 713
END

IF ~~ THEN BEGIN 23 // from: 22.2 25.3 26.2
  SAY #77115 /* ~Cursed thing! I'll dine on your screams!~ [OH77115] */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 21.1 22.1
  SAY #77117 /* ~How does gold sound to you, <PRO_RACE>? I can give you more than you've ever seen.~ [OH77117] */
  IF ~  !IfValidForPartyDialogue("dorn")
~ THEN REPLY #77118 /* ~Gold? You think I care about gold?~ */ GOTO 26
  IF ~  IfValidForPartyDialogue("dorn")
~ THEN REPLY #77118 /* ~Gold? You think I care about gold?~ */ EXTERN ~DORNJ~ 714
  IF ~~ THEN REPLY #77119 /* ~I've seen a lot of gold.~ */ GOTO 25
  IF ~~ THEN REPLY #77120 /* ~How can we trust you'll keep your word?~ */ GOTO 30
END

IF ~~ THEN BEGIN 25 // from: 24.2
  SAY #77121 /* ~Never so much as I can, and will, provide—if only you spare my life.~ [OH77121] */
  IF ~  !IfValidForPartyDialogue("dorn")
~ THEN REPLY #77122 /* ~Gold is of limited interest to me.~ */ GOTO 26
  IF ~  IfValidForPartyDialogue("dorn")
~ THEN REPLY #77122 /* ~Gold is of limited interest to me.~ */ EXTERN ~DORNJ~ 714
  IF ~~ THEN REPLY #77123 /* ~How do I know I can trust you to keep your word?~ */ GOTO 29
  IF ~  !IfValidForPartyDialogue("dorn")
~ THEN REPLY #77124 /* ~I don't want your gold, demon. I want your blood.~ */ GOTO 23
  IF ~  IfValidForPartyDialogue("dorn")
~ THEN REPLY #77124 /* ~I don't want your gold, demon. I want your blood.~ */ EXTERN ~DORNJ~ 713
END

IF ~~ THEN BEGIN 26 // from: 24.0 25.0
  SAY #77125 /* ~I've already offered you the stones and my sword. What more can you want?~ [OH77125] */
  IF ~~ THEN REPLY #77126 /* ~In truth, I believe you have nothing more that I desire. Begone.~ */ DO ~SetGlobal("OHD_xach_ambush","GLOBAL",1)
SetGlobal("OHD_xach_dlg","LOCALS",3)
~ EXIT
  IF ~~ THEN REPLY #77127 /* ~How do I know I can trust you to keep your word?~ */ GOTO 29
  IF ~  !IfValidForPartyDialogue("dorn")
~ THEN REPLY #77128 /* ~Just your wretched life, demon.~ */ GOTO 23
  IF ~  IfValidForPartyDialogue("dorn")
~ THEN REPLY #77128 /* ~Just your wretched life, demon.~ */ EXTERN ~DORNJ~ 713
END

IF ~~ THEN BEGIN 27 // from:
  SAY #77130 /* ~More than you can imagine. A wealth incalculable.~ [OH77130] */
  IF ~~ THEN EXTERN ~DORNJ~ 715
END

IF ~~ THEN BEGIN 28 // from: 14.2
  SAY #77135 /* ~You wound me, <PRO_RACE>.~ [OH77135] */
  IF ~~ THEN REPLY #77136 /* ~If that is the greatest of my sins, I'll sleep soundly tonight.~ */ GOTO 29
  IF ~~ THEN REPLY #77137 /* ~Words don't wound, demon. Swords do.~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 25.2 26.1 28.0
  SAY #77138 /* ~A tanar'ri's word is his bond!~ [OH77138] */
  IF ~~ THEN REPLY #77140 /* ~So you'll swear an oath to give us the sword, the summoning stones, the wealth, and also let us proceed unhindered through the gorge?~ */ GOTO 32
  IF ~  IfValidForPartyDialogue("viconia")
~ THEN EXTERN ~VICONIJ~ 411
END

IF ~~ THEN BEGIN 30 // from: 24.3
  SAY #77141 /* ~A demon's word is his bond!~ [OH77141] */
  IF ~~ THEN REPLY #77143 /* ~So you'll swear an oath to give us the sword, the stones, and great wealth?~ */ GOTO 31
  IF ~  IfValidForPartyDialogue("viconia")
~ THEN EXTERN ~VICONIJ~ 412
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #77144 /* ~The sword, summoning stones, and more gold than you've ever seen.~ [OH77144] */
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 32 // from: 29.0
  SAY #77145 /* ~Curse you, <PRO_RACE>! Very well...~ [OH77145] */
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 31.0 32.0
  SAY #77146 /* ~ I swear to it, to all the things you said!~ [OH77146] */
  IF ~~ THEN REPLY #77147 /* ~Excellent. We'll be taking those now.~ */ DO ~EraseJournalEntry(@10001) GiveItem("ohdsw2ha",LastTalkedToBy(Myself))
GiveItem("ohdsums3",LastTalkedToBy(Myself))
SetGlobal("OHD_xach_gold","GLOBAL",1)
AddJournalEntry(92456,INFO)
~ GOTO 34
  IF ~~ THEN REPLY #77148 /* ~A pleasure doing business with you. And by doing business, I mean taking all your stuff. Hand it over.~ */ DO ~EraseJournalEntry(@10001) GiveItem("ohdsw2ha",LastTalkedToBy(Myself))
GiveItem("ohdsums3",LastTalkedToBy(Myself))
SetGlobal("OHD_xach_gold","GLOBAL",1)
AddJournalEntry(92456,INFO)
~ GOTO 35
  IF ~~ THEN REPLY #77149 /* ~Count yourself lucky, demon. Not many cross paths with <CHARNAME> and survive.~ */ DO ~EraseJournalEntry(@10001) GiveItem("ohdsw2ha",LastTalkedToBy(Myself))
GiveItem("ohdsums3",LastTalkedToBy(Myself))
SetGlobal("OHD_xach_gold","GLOBAL",1)
AddJournalEntry(92456,INFO)
~ GOTO 37
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #77150 /* ~As you wish. My sword, my stones, and of course, your gold.~ [OH77150] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.1
  SAY #77151 /* ~Take them, then, my sword and the stones, and get out of my sight!~ [OH77151] */
  IF ~~ THEN REPLY #77152 /* ~I thought a demon's word was its bond. Where's the gold?~ */ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #77153 /* ~The gold, of course. I wouldn't want you to leave without that. Here it is.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 37 // from: 33.2
  SAY #77154 /* ~My good fortune knows no bounds.~ [OH77154] */
  IF ~~ THEN REPLY #77155 /* ~Speaking of fortune, I believe you have some gold for us?~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #77156 /* ~Oh yes, the gold. We wouldn't want to forget that. Behold!~ [OH77156] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 39 // from:
  SAY #77158 /* ~No treachery at all, half-orc! I promised you more gold than you'd ever seen before—did I not speak the truth?~ [OH77158] */
  IF ~~ THEN REPLY #77159 /* ~You did, and like the fools we are, we bought it.~ */ EXTERN ~DORNJ~ 717
  IF ~~ THEN REPLY #77160 /* ~Not exactly what we had in mind, Xachrimos.~ */ GOTO 42
  IF ~  !IfValidForPartyDialogue("dorn")
~ THEN REPLY #77161 /* ~I promise you a bloody death. Let us see if I can match your honesty.~ */ GOTO 43
  IF ~  IfValidForPartyDialogue("dorn")
~ THEN REPLY #77161 /* ~I promise you a bloody death. Let us see if I can match your honesty.~ */ EXTERN ~DORNJ~ 718
END

IF WEIGHT #3 /* Triggers after states #: 47 even though they appear after this state */
~  Global("OHD_xach_gold","GLOBAL",2)
~ THEN BEGIN 40 // from:
  SAY #77162 /* ~Have you ever seen so much gold, <PRO_RACE>? I think not!~ [OH77162] */
  IF ~~ THEN REPLY #77163 /* ~I guess the joke's on me. Leave me be, you foul beast.~ */ DO ~SetGlobal("OHD_xach_dlg","LOCALS",3)
~ EXIT
  IF ~~ THEN REPLY #77164 /* ~Not exactly what I had in mind, Xachrimos.~ */ GOTO 42
  IF ~~ THEN REPLY #77165 /* ~I can tell you think this is funny, demon. You won't be laughing shortly.~ */ GOTO 41
  IF ~  IfValidForPartyDialogue("dorn")
~ THEN EXTERN ~DORNJ~ 716
END

IF ~~ THEN BEGIN 41 // from: 40.2 42.2
  SAY #77166 /* ~I will laugh even as you scream, <PRO_RACE>!~ [OH77166] */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 39.1 40.1
  SAY #77169 /* ~What you had in mind is of no consequence, <PRO_RACE>. All that matters is what was in the promise—and I provided what I said I would.~ [OH77169] */
  IF ~  !IfValidForPartyDialogue("dorn")
~ THEN REPLY #77170 /* ~Curse you, Xachrimos. You get the last laugh.~ */ DO ~SetGlobal("OHD_xach_dlg","LOCALS",3)
~ EXIT
  IF ~  IfValidForPartyDialogue("dorn")
~ THEN REPLY #77170 /* ~Curse you, Xachrimos. You get the last laugh.~ */ EXTERN ~DORNJ~ 720
  IF ~  !IfValidForPartyDialogue("dorn")
~ THEN REPLY #77171 /* ~Good one, Xachrimos. You sure made us look stupid. Not as stupid as your headless body will, though.~ */ GOTO 41
  IF ~  IfValidForPartyDialogue("dorn")
~ THEN REPLY #77171 /* ~Good one, Xachrimos. You sure made us look stupid. Not as stupid as your headless body will, though.~ */ EXTERN ~DORNJ~ 717
  IF ~  !IfValidForPartyDialogue("dorn")
~ THEN REPLY #77172 /* ~It's your ill fortune we made no promises to you.~ */ GOTO 43
  IF ~  IfValidForPartyDialogue("dorn")
~ THEN REPLY #77172 /* ~It's your ill fortune we made no promises to you.~ */ EXTERN ~DORNJ~ 719
END

IF ~~ THEN BEGIN 43 // from: 39.2 42.4
  SAY #77174 /* ~Malevolent thing! I did but give you all you requested, and you turn me into an oathbreaker!~ [OH77174] */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 12.0
  SAY #77176 /* ~I swear to it, to all the things you said!~ [OH77176] */
  IF ~~ THEN REPLY #77177 /* ~Excellent. We'll be taking those now.~ */ GOTO 45
  IF ~~ THEN REPLY #77178 /* ~A pleasure doing business with you. And by doing business, I mean taking all your stuff.~ */ DO ~SetGlobal("OHD_xach_dlg","LOCALS",3)
~ EXIT
  IF ~~ THEN REPLY #77179 /* ~The sword and the stones. Hand them over, demon.~ */ GOTO 46
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #77180 /* ~My sword and the stones. There. Take them and get out of my sight!~ [OH77180] */
  IF ~~ THEN REPLY #77181 /* ~Gladly.~ */ DO ~SetGlobal("OHD_xach_dlg","LOCALS",3)
~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 21.0 44.2
  SAY #77182 /* ~Take them. Take them and pray our paths never cross again!~ [OH77182] */
  IF ~~ THEN REPLY #77183 /* ~Nothing would make me happier. I'd say farewell, but really? I hope you don't.~ */ DO ~SetGlobal("OHD_xach_dlg","LOCALS",3)
~ EXIT
END

IF WEIGHT #0 ~  Global("OHD_xachkillsyarrow","OH5200",1)
~ THEN BEGIN 47 // from:
  SAY #95173 /* ~It seems foolishness is not limited to mortals. The magic keeping me here has already begun to fade. Thank you for your efforts, <PRO_RACE>! You were most useful.~ [OH95173] */
  IF ~~ THEN DO ~SetGlobal("OHD_xachkillsyarrow","OH5200",2)
CreateVisualEffectObject("SPDIMNDR","ohdxach")
Wait(2)
DestroySelf()
~ EXIT
END
