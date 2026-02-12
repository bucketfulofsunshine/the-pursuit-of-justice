BEGIN ~BFYARR~

IF ~  Global("OHD_YARROW_START","LOCALS",0)
!AreaCheck("oh5200")
~ THEN BEGIN 0 
  SAY #75742 /* ~Treadsoft! Let them go.~ [OH75742] */
  IF ~~ THEN DO ~SetGlobal("OHD_YARROW_START","LOCALS",1)
~ EXTERN ~BFTREAD~ 0
END

IF ~~ THEN BEGIN 1 
  SAY #75758 /* ~Treadsoft! I said withdraw. Do as I command.~ [OH75758] */
  IF ~~ THEN EXTERN ~BFTREAD~ 3
END

IF ~~ THEN BEGIN 2 
  SAY #75763 /* ~I am Yarrow, dryad of the great tree. Why have ye come here, <CHARNAME>?~ [OH75763] */
  + ~NumInPartyGT(1)~ + ~We're tracking a half-orc, Dorn Il-Khan. He passed this way. Have you seen him?~ + bfs.yarrow1
  + ~!NumInPartyGT(1)~ + ~I'm tracking a half-orc, Dorn Il-Khan. He passed this way. Have you seen him?~ + bfs.yarrow1
  IF ~OR(2) Class(Player1,DRUID_ALL) Class(Player1,RANGER_ALL)~ THEN REPLY #75857 /* ~Whatever's within the gorge is poisoning the land. For the greater good, it must be dealt with.~ */ + bfs.yarrow2
  IF ~~ THEN REPLY ~There is a summoning circle within the gorge. I would seek it out.~ GOTO 3
  IF ~~ THEN REPLY #75765 /* ~To see the Great Tree, of course. When I told my friends I planned to tour Amn, all said the same thing: That Resurrection Gorge's Great Tree was a sight not to be missed!~ */ GOTO 4
END

IF ~~ THEN BEGIN bfs.yarrow1
SAY ~He entered the gorge ahead of ye. The land recoiled at his passing, but I lacked the strength to stop him.~
IF ~~ THEN DO ~SetGlobal("bfdornmention","LOCALS",1)~ GOTO 6
END

IF ~~ THEN BEGIN bfs.yarrow2
SAY ~Yer senses have not misled ye. This blight runs deeper than root or stone.~
IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 3 
  SAY #75767 /* ~I know the circle ye seek, but I tell ye now your life will be longer and happier if ye find another to serve your purpose.~ [OH75767] */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 4 
  SAY #75768 /* ~That was true once, but the days of the great tree's glory are long past.~ [OH75768] */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 
  SAY #75775 /* ~A druid—Vernus by name—made a grave error. Resurrection Gorge paid the price.~ [OH75775] */
  = ~Three summoning stones were bound in Vernus' ritual, and they remain within the gorge.~
  = ~Should they fall into the wrong hands, I fear the portal's gate may be opened once more.~                                        
  IF ~~ THEN GOTO 19
END


IF ~~ THEN BEGIN 19 
  SAY #75826 /* ~The gorge is a place of darkness and death. Any who can be turned away must be turned away—for their own sake.~ [OH75826] */
  IF ~~ THEN REPLY ~If Dorn remains within the gorge, he will bring further harm. I cannot turn back now.~ GOTO 21
  IF ~~ THEN REPLY #75827 /* ~I see. Well... Thanks, I guess.~ */ GOTO 21
  IF ~~ THEN REPLY #75828 /* ~Protecting the gorge makes about as much sense as wanting to go into it, so I'm in no position to judge you.~ */ GOTO 20
  IF ~~ THEN REPLY #75829 /* ~Your servant tried and failed to turn us away. Now stand aside and let us be about our business.~ */ GOTO 26
END

IF ~~ THEN BEGIN 20 
  SAY #75830 /* ~So you would enter it, though you know what awaits you?~ [OH75830] */
  IF ~~ THEN REPLY #75831 /* ~I would.~ */ GOTO 22
  IF ~~ THEN REPLY #75832 /* ~The gods alone know what awaits me, but yes, I am going there. Can you help?~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 
  SAY #75834 /* ~If you cannot be swayed from your course, I'll help ye.~ [OH75834] */
  IF ~~ THEN REPLY #75835 /* ~My path is chosen.~ */ GOTO 22
  IF ~~ THEN REPLY #75836 /* ~Uhh, let me get back to you on that, all right?~ */ EXIT
  IF ~~ THEN REPLY #75837 /* ~A wise choice.~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 
  SAY ~So be it. Listen carefully.~ 
  IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 26 
  SAY #75848 /* ~You reek of violence and death, <PRO_GIRLBOY>. If you want more of it, I'll gladly let ye pass. More, even—I'll help you into the gorge. Given your taste, you should find it most accommodating.~ [OH75848] */
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 27 
  SAY #75849 /* ~I can help you with that.~ [OH75849] */
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28 
  SAY #75850 /* ~Simply step upon this branch and the great tree will deliver you to your fate.~ [OH75850] */
  IF ~~ THEN DO ~AddJournalEntry(@10001, QUEST)
StartCutSceneMode()
StartCutScene("ohdcut11")
~ EXIT
END

/* second time speaking to yarrow */ 

IF ~  GlobalGT("OHD_YARROW_START","LOCALS",0)
!AreaCheck("oh5200")
~ THEN BEGIN 29 
  SAY #75852 /* ~Why have you returned here, <PRO_RACE>?~ [OH75852] */
  IF ~~ THEN REPLY #75853 /* ~I would enter the gorge.~ */ GOTO 30
  IF ~~ THEN REPLY #75854 /* ~Just passing by.~ */ EXIT
END

IF ~~ THEN BEGIN 30 
  SAY #75855 /* ~To what end? ~ [OH75855] */
  ++ ~The beast trapped within threatens all. It must be dealt with.~ + 33
  ++ ~If Dorn Il-Khan fled into the gorge, then I must follow and bring him to justice.~ + 33
  IF ~OR(2) Class(Player1,DRUID_ALL) Class(Player1,RANGER_ALL)~ THEN REPLY #75857 /* ~Whatever's within the gorge is poisoning the land. For the greater good, it must be dealt with.~ */ GOTO 33
  IF ~~ THEN REPLY #75858 /* ~Fortune, glory, you know. The usual stuff.~ */ GOTO 37
END

IF ~~ THEN BEGIN 33 
  SAY #75867 /* ~Truly?~ [OH75867] */
  IF ~~ THEN REPLY #75868 /* ~Why would I lie?~ */ GOTO 38
  IF ~~ THEN REPLY #75869 /* ~What other reason could there be to venture into so grim a place?~ */ GOTO 38
END

IF ~~ THEN BEGIN 37 
  SAY #75881 /* ~You make light of the danger, but there is nothing funny about the gorge.~ [OH75881] */
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 38 
  SAY #75885 /* ~I do not pretend to understand the intricacies of the mortal mind.~ [OH75885] */
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41 
  SAY #75889 /* ~I want to believe you, <CHARNAME>. Desperately.~ [OH75889] */
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43 
  SAY #75895 /* ~The tree has not fallen—not yet. We are bent, it and I, but we are not broken. How much longer I'll be able to say that, I don't know.~ [OH75895] */
  IF ~~ THEN REPLY #75896 /* ~Perhaps we can help restore you and your tree to your former state.~ */ GOTO 46
  IF ~~ THEN REPLY #75897 /* ~What happened?~ */ GOTO 52
  IF ~~ THEN REPLY #75898 /* ~Not much longer now, I think. You and the oak are both fit only for burning.~ */ GOTO 48
END

IF ~~ THEN BEGIN 46 
  SAY #75922 /* ~Many have thought as much. None have returned from the gorge. I no longer have the strength to hope. It takes everything I have just to keep myself going from day to day.~ [OH75922] */
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 48 
  SAY #75928 /* ~Were it not for the creature that stalks the gorge, I'd light the torch myself.~ [OH75928] */
  IF ~~ THEN REPLY #75929 /* ~What is this creature you speak of?~ */ GOTO 52
  IF ~~ THEN REPLY #75930 /* ~A little extreme. Maybe you could let us try and help first?~ */ GOTO 50
END

IF ~~ THEN BEGIN 50 
  SAY #75944 /* ~Many have tried. All have failed. I cannot bring myself to hope that you will be any different.~ [OH75944] */
  IF ~~ THEN REPLY #75945 /* ~It'll be different this time, I promise you.~ */ GOTO 51
  IF ~~ THEN REPLY #75946 /* ~I don't ask you to hope—only to hang on a little longer. Give us a chance to do what we can.~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 
  SAY #75948 /* ~With each passing day, I grow more weak while the foul thing within the gorge gains strength. I'll let go of life neither easily nor gracefully, but I do not know how much longer I have.~ [OH75948] */
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 52 
  SAY #75952 /* ~A druid—Vernus was his name—sought to create a portal into the Beastlands. He failed. Instead of the Beastlands, he created an opening into the Abyss. The druid closed the portal, but it was too late—a tanar'ri had already escaped its infernal prison.~ [OH75952] */
  IF ~~ THEN REPLY #75953 /* ~And it remains in the gorge? Why?~ */ GOTO 54
  IF ~~ THEN REPLY #75955 /* ~I assume he paid the price for his foolishness.~ */ GOTO 53
END

IF ~~ THEN BEGIN 53 
  SAY #75956 /* ~His body lays tangled in the roots of the great tree.~ [OH75956] */
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54 
  SAY #75957 /* ~The demon is too dangerous to be allowed to roam free. I and the tree contain it within the gorge, but it has taken a heavy toll.~ [OH75957] */
  IF ~~ THEN GOTO 61
END

IF ~~ THEN BEGIN 61 
  SAY #76036 /* ~Both I and my tree are dying. We hold the tanar'ri within the gorge at the cost of our own lives. Its malign influence is a disease, eating away at our bodies from within.~ [OH76036] */
  IF ~~ THEN REPLY #76037 /* ~Well then, we shall have to cure the disease.~ */ GOTO 62
  IF ~~ THEN REPLY #76038 /* ~We'll get to the root of this problem. Root? Get it?~ */ GOTO 89
  IF ~~ THEN REPLY #76039 /* ~Better a quick death in battle than a slow crawl to an ignominious end.~ */ GOTO 64
END

IF ~~ THEN BEGIN 62 
  SAY #76040 /* ~Bold words. But words will serve you ill against a tanar'ri.~ [OH76040] */
  IF ~~ THEN REPLY #76041 /* ~Rest assured, I'll have more than words to offer the demon. What more can you tell us of the gorge?~ */ GOTO 69
  IF ~~ THEN REPLY #76042 /* ~Words are the least I'll have to offer the demon. Can you help us get into the gorge?~ */ GOTO 89
  IF ~~ THEN REPLY #76043 /* ~The tanar'ri will fall, like all who oppose me.~ */ GOTO 63
END

IF ~~ THEN BEGIN 63 
  SAY #76044 /* ~You reek of violence and death, <PRO_RACE>. If you want more of it, I'll help you into the gorge. Given your taste, you should find it most accommodating.~ [OH76044] */
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 64 
  SAY #76046 /* ~Life is a gift. I'll hold on to it as long as I may.~ [OH76046] */
  IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 69 
  SAY #76072 /* ~At the base of the great tree are the remains of those who came before you. But there is no rest, no peace to be found in death, not in the gorge. Beware the bones of your predecessors lest yours join them.~ [OH76072] */
  IF ~~ THEN GOTO 71
END

IF ~~ THEN BEGIN 71 
  SAY #76092 /* ~Countless creatures make their home in the sunless southeast corner of the gorge. What isn't covered in fungi is streaked in slime, and vile creatures burrow beneath the earth. A veritable swarm of ankhegs hibernate beneath the soil—waking them would be ill-advised.~ [OH76092] */
  IF ~~ THEN GOTO 72
END

IF ~~ THEN BEGIN 72 
  SAY #76093 /* ~A clutch of faerie dragons nest in the northeast. If you encounter them, ask for the Great and Magnificent Filbert. He's the most sociable of the bunch and may be willing to assist you. In any event, I'm sure he'd be glad for the company.~ [OH76093] */
  IF ~~ THEN GOTO 73
END

IF ~~ THEN BEGIN 73 
  SAY #76094 /* ~As clean water still feeds the great tree, I can only assume my nereid friend Winterbrook yet lives. She guards a waterfall in the southwest corner of the gorge. She may be able to assist you in your quest, but be warned—her time in the gorge has changed her. She was always fickle; when last we spoke, she barely knew her own mind. I fear for what's become of her.~ [OH76094] */
  IF ~~ THEN GOTO 74
END

IF ~~ THEN BEGIN 74 
  SAY #76095 /* ~At all times, you must be wary of the tanar'ri. It strikes without warning or mercy, its ebon blade cutting down all in its path.~ [OH76095] */
  IF ~~ THEN GOTO 77
END

IF ~~ THEN BEGIN 77 
  SAY #76099 /* ~Know this: Once you enter the gorge, there will be no escape, not until the tanar'ri is slain. Vernus opened a portal; the demon slipped through, and you see the result before you. I will not make the same mistake.~ [OH76099] */
  IF ~~ THEN REPLY #76100 /* ~I would never leave the job unfinished.~ */ GOTO 81
  IF ~~ THEN REPLY #76102 /* ~You would sacrifice us?~ */ GOTO 82
END

IF ~~ THEN BEGIN 81 
  SAY #76113 /* ~Very well.~ [OH76113] */
  IF ~~ THEN GOTO 89
END

IF ~~ THEN BEGIN 82 
  SAY #76114 /* ~Your loss is hardly a sacrifice. Consider what I've lost already, limiting the demon's damage to the gorge.~ [OH76114] */
  IF ~~ THEN GOTO 89
END

IF ~~ THEN BEGIN 89 
  SAY #76179 /* ~Simply step upon the branch and the great tree will deliver you to your fate.~ [OH76179] */
  IF ~~ THEN DO ~AddJournalEntry(@10001, QUEST)
  ClearAllActions()
StartCutSceneMode()
StartCutScene("OHDCUT11")
~ EXIT
END

/* creature defeated */ 

IF ~ Global("OHD_Yarrow_init","oh5200",1)~ THEN BEGIN 92 
  SAY #77184 /* ~When I first saw you, I'll admit I had doubts about you, <CHARNAME>. But in slaying the glabrezu, you have done Resurrection Gorge a great service.~ [OH77184] */
  IF ~~ THEN REPLY #77185 /* ~All in a day's work, madam.~ */ DO ~EraseJournalEntry(@10001) AddJournalEntry(@10002, QUEST_DONE) SetGlobal("OHD_Yarrow_init","oh5200",2)
~ GOTO 96
  IF ~Global("OHD_END_REWARD","GLOBAL",1)~ THEN REPLY #77186 /* ~Great. Now get me the hell out of here.~ */ DO ~EraseJournalEntry(@10001) AddJournalEntry(@10002, QUEST_DONE) SetGlobal("OHD_Yarrow_init","oh5200",2)
~ GOTO 95
  IF ~Global("OHD_END_REWARD","GLOBAL",1)~ THEN REPLY #77187 /* ~The gorge means nothing to me. Slaying the glabrezu was its own reward.~ */ DO ~EraseJournalEntry(@10001) AddJournalEntry(@10002, QUEST_DONE) SetGlobal("OHD_Yarrow_init","oh5200",2)
~ GOTO 94
END

IF ~~ THEN BEGIN 93 
  SAY #77191 /* ~As you wish. Take this acorn. When you are ready to depart, use it to summon me.~ [OH77191] */
  IF ~~ THEN DO ~GiveItemCreate("ohdacorn",Player1,100,1,1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 94 
  SAY #77193 /* ~Be that as it may, you still have my thanks. Now, at last, the great tree can begin to heal itself and the gorge.~ [OH77193] */
  IF ~~ THEN GOTO 96
END

IF ~~ THEN BEGIN 95 
  SAY #77194 /* ~Nothing would make me happier.~ [OH77194] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("OHDCUT13")
~ EXIT
END

IF ~~ THEN BEGIN 96 
  SAY #77195 /* ~While Xachrimos lived, I had no choice but to keep all who entered the gorge contained within it. With the demon gone, you are free to leave whenever you want.~ [OH77195] */
  IF ~~ THEN REPLY #77196 /* ~I don't think we'll be much longer, but there's still some business I need to attend to down here.~ */ GOTO 93
  IF ~Global("OHD_END_REWARD","GLOBAL",1)~ THEN REPLY #77197 /* ~Why are we still talking? Get me out of this place.~ */ GOTO 95
  IF ~~ THEN REPLY #77198 /* ~I will leave this place when I'm sure it holds nothing more of value to me.~ */ GOTO 97
END

IF ~~ THEN BEGIN 97 
  SAY #77199 /* ~Even with Xachrimos gone, you'll not find the gorge a welcoming place. But do as you will. Take this acorn; when you're ready to leave, use it to summon me.~ [OH77199] */
  IF ~~ THEN DO ~GiveItemCreate("ohdacorn",Player1,100,1,1)
EscapeArea()
~ EXIT
END

IF ~ Global("Summoned","LOCALS",1)
~ THEN BEGIN 98 
  SAY #77200 /* ~So, <CHARNAME>, you're ready to take your leave of Resurrection Gorge?~ [OH77200] */
  IF ~~ THEN REPLY #77201 /* ~Yes. I've seen enough of this place.~ */ DO ~SetGlobal("ohd_summon_yarrow","oh5200",2)
~ GOTO 99
  IF ~~ THEN REPLY #77202 /* ~Not really, no. I was just checking to make sure you'd actually come.~ */ DO ~SetGlobal("ohd_summon_yarrow","oh5200",2)
~ GOTO 100
  IF ~~ THEN REPLY #77203 /* ~I'll leave the gorge on my own time, dryad.~ */ DO ~SetGlobal("ohd_summon_yarrow","oh5200",2)
~ GOTO 102
END

IF ~~ THEN BEGIN 99 
  SAY #77204 /* ~As you wish.~ [OH77204] */
  IF ~~ THEN DO ~SetGlobal("Summoned","LOCALS",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("ohdcut13")
~ EXIT
END

IF ~~ THEN BEGIN 100 
  SAY #77205 /* ~I have come, as you can plainly see. Did I waste my time and energy, or do you wish to leave the gorge?~ [OH77205] */
  IF ~~ THEN REPLY #77206 /* ~I'd hate to have wasted your time. Please, get me out of here.~ */ GOTO 99
  IF ~~ THEN REPLY #77207 /* ~I'm staying.~ */ GOTO 101
END

IF ~~ THEN BEGIN 101 
  SAY #77208 /* ~Very well. I'll see you again when you're prepared to go.~ [OH77208] */
  IF ~~ THEN DO ~SetGlobal("Summoned","LOCALS",2)
~ EXIT
END

IF ~~ THEN BEGIN 102 
  SAY #77209 /* ~And is this the time you choose?~ [OH77209] */
  IF ~~ THEN REPLY #77210 /* ~It is.~ */ GOTO 99
  IF ~~ THEN REPLY #77211 /* ~Not yet.~ */ GOTO 101
END
