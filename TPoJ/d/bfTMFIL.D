BEGIN ~BFTMFIL~

IF WEIGHT #1 
~  Global("OHD_fil_dialog","OH5200",1)
~ THEN BEGIN 1 
  SAY #76636 /* ~Hey! Hey, you! Yeah, you. Go away. You're not welcome here.~ [OH76636] */
  IF ~~ THEN REPLY #76637 /* ~Would that we could. But before we can leave, we need to gather the stones of summoning.~ */ GOTO 4
  IF ~~ THEN REPLY #76638 /* ~That works for me.~ */ EXIT
  IF ~~ THEN REPLY #76639 /* ~Faerie dragons can talk?~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 
  SAY #76641 /* ~Of course we can talk. Obviously, we can talk. We're talking right now. You need to use your ears more. You could learn something.~ [OH76641] */
  IF ~~ THEN REPLY #76642 /* ~I am <CHARNAME>. I'm searching for the stones of summoning taken from yon tree.~ */ GOTO 5
  IF ~~ THEN REPLY #76643 /* ~Who are you?~ */ GOTO 12
  IF ~~ THEN REPLY #76644 /* ~You need to use your mouth less, lest you learn something you'd rather not.~ */ GOTO 16
END

IF ~~ THEN BEGIN 3 
  SAY #76645 /* ~It's a pleasure to make your acquaintance, <CHARNAME>.~ [OH76645] */
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 4 
  SAY #76646 /* ~The stones of summoning, hm? That's a tall order, whatever-your-name-is.~ [OH76646] */
  IF ~~ THEN REPLY #76647 /* ~My name is <CHARNAME>.~ */ GOTO 3
  IF ~~ THEN REPLY #76648 /* ~My name is unimportant.~ */ GOTO 19
END

IF ~~ THEN BEGIN 5 
  SAY #76649 /* ~Well, <CHARNAME>, I trust you're suitably mortified by your flagrant public display of ignorance.~ [OH76649] */
  IF ~~ THEN REPLY #76650 /* ~I am. What is your name, dragon?~ */ GOTO 37
END

IF ~~ THEN BEGIN 12 
  SAY #76668 /* ~Who am I? Who are you?~ [OH76668] */
  IF ~~ THEN REPLY #76669 /* ~I am <CHARNAME>. And you are...?~ */ GOTO 37
  IF ~~ THEN REPLY #76670 /* ~That is the question, isn't it? Who is anyone in this world, truly, and are they the same person once they enter Resurrection Gorge?~ */ GOTO 13
  IF ~~ THEN REPLY #76671 /* ~My name is unimportant. What matters is what I seek: the stones of summoning.~ */ GOTO 4
END

IF ~~ THEN BEGIN 13 
  SAY #76672 /* ~That's actually two questions, and one of them was rhetorical. I was really looking for something more in the vein of your name.~ [OH76672] */
  IF ~~ THEN REPLY #76673 /* ~Oh. My name is <CHARNAME>.~ */ GOTO 37
  IF ~~ THEN REPLY #76674 /* ~Okay, I'm done with this.~ */ EXIT
END

IF ~~ THEN BEGIN 16 
  SAY #76678 /* ~Well, that's just fabulous. Ugly, rude, and missing two legs. How you survive is beyond me.~ [OH76678] */
  IF ~~ THEN REPLY #76679 /* ~What is your name, dragon?~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 
  SAY #76680 /* ~Tell me yours first.~ [OH76680] */
  IF ~~ THEN REPLY #76681 /* ~I am <CHARNAME>.~ */ GOTO 37
  IF ~~ THEN REPLY #76156 /* ~No.~ */ GOTO 19
  IF ~~ THEN REPLY #76682 /* ~I've no time for games.~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 
  SAY #76683 /* ~No time for games? Doesn't sound like much of a life.~ [OH76683] */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 
  SAY #76684 /* ~Oh, come on. I'll tell you mine.~ [OH76684] */
  IF ~  Global("ohd_asked_fil_name_first","LOCALS",0)
~ THEN REPLY #76685 /* ~Tell me yours first.~ */ DO ~SetGlobal("ohd_asked_fil_name_first","LOCALS",1)
~ GOTO 20
  IF ~~ THEN REPLY #76686 /* ~Very well. I am <CHARNAME>. And you are...?~ */ GOTO 37
  IF ~~ THEN REPLY #76687 /* ~As tantalizing an offer as that is, I believe I'll be going now.~ */ GOTO 21
END

IF ~~ THEN BEGIN 20 
  SAY #76688 /* ~No.~ [OH76688] */
  IF ~~ THEN REPLY #76690 /* ~Fine. My name is <CHARNAME>. I'm searching for the stones of summoning taken from the great tree.~ */ GOTO 37
  IF ~~ THEN REPLY #76691 /* ~I won't waste my time with this silliness.~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 
  SAY #76692 /* ~No, come back! I'll tell you my name.~ [OH76692] */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 
  SAY #76693 /* ~Right after you tell me yours.~ [OH76693] */
  IF ~~ THEN REPLY #76694 /* ~All right. If you must know, I am <CHARNAME>. I'm currently scouring the gorge trying to find the summoning stones missing from the great tree.~ */ GOTO 37
  IF ~~ THEN REPLY #76695 /* ~I'm not getting your name 'til I give you mine, am I?~ */ GOTO 28
  IF ~~ THEN REPLY #76696 /* ~We're done.~ */ EXIT
END

IF ~~ THEN BEGIN 28 
  SAY #76714 /* ~I'd say it's highly unlikely.~ [OH76714] */
  IF ~~ THEN REPLY #76715 /* ~So be it. I am <CHARNAME>.~ */ GOTO 3
  IF ~~ THEN REPLY #76716 /* ~And you are?~ */ GOTO 29
  IF ~~ THEN REPLY #76717 /* ~I'll come back later. Much later.~ */ EXIT
END

IF ~~ THEN BEGIN 29 
  SAY #76718 /* ~Nice try.~ [OH76718] */
  IF ~~ THEN REPLY #76719 /* ~It was worth a shot. My name is <CHARNAME>.~ */ GOTO 3
  IF ~~ THEN REPLY #76720 /* ~Is there anyone else here I can talk to?~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 
  SAY #76721 /* ~Oh, sure. There are lots.~ [OH76721] */
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 
  SAY #76722 /* ~They probably won't talk back, though. They're a bit antisocial.~ [OH76722] */
  IF ~~ THEN REPLY #76723 /* ~I see. Very well. My name is <CHARNAME>.~ */ GOTO 3
  IF ~~ THEN REPLY #76725 /* ~I'll risk it.~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 
  SAY #76734 /* ~You'll be back.~ [OH76734] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 37 
  SAY #76739 /* ~You may call me the Great and Magnificent and Also Irresistibly Handsome Filbert!~ [OH76739] */
  IF ~~ THEN REPLY #76740 /* ~It is a pleasure to meet you, Great and Magnificent and Also Irresistibly Handsome Filbert.~ */ GOTO 38
  IF ~~ THEN REPLY #76741 /* ~Do I have to?~ */ GOTO 54
  IF ~~ THEN REPLY #76742 /* ~Yeah, I'm not going to do that. Farewell.~ */ GOTO 35
  IF ~~ THEN REPLY #76743 /* ~What do you know of the summoning stones?~ */ GOTO 39
END

IF ~~ THEN BEGIN 38 
  SAY #76744 /* ~Call me Fil, please.~ [OH76744] */
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 39 
  SAY #76746 /* ~What do you want to know?~ [OH76746] */
  IF ~~ THEN REPLY #76747 /* ~We need to gather them all to restore the great tree.~ */ GOTO 40
  IF ~~ THEN REPLY #76748 /* ~Where they are, mostly. And how to get them back in the summoning circle where they belong.~ */ GOTO 60
  IF ~~ THEN REPLY #76749 /* ~How I may obtain them.~ */ GOTO 43
END

IF ~~ THEN BEGIN 40 
  SAY #76750 /* ~Tricky. The stones are spread all over the gorge. Even the nereid has one, and she hardly ever crosses her stream.~ [OH76750] */
  IF ~~ THEN REPLY #76751 /* ~Do you have any?~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 
  SAY #76752 /* ~What? On me?~ [OH76752] */
  IF ~~ THEN REPLY #76753 /* ~I mean can you get any?~ */ GOTO 43
END

IF ~~ THEN BEGIN 43 
  SAY #76755 /* ~Getting me some crystals probably wouldn't hurt your effort.~ [OH76755] */
  IF ~~ THEN REPLY #76756 /* ~How would I do that?~ */ GOTO 75
  IF ~~ THEN REPLY #76757 /* ~I'll see what I can do.~ */ DO ~AddJournalEntry(90357,INFO)
SetGlobal("OHD_fil_dialog","OH5200",2)
~ EXIT
  IF ~~ THEN REPLY #76758 /* ~Neither would throttling a mouthy dragon.~ */ GOTO 44
END

IF ~~ THEN BEGIN 44 
  SAY #76759 /* ~No, see, that's where you're wrong. Kill me and you'll never find what you're looking for.~ [OH76759] */
  IF ~~ THEN REPLY #76760 /* ~All right. Where can we find these crystals?~ */ GOTO 75
  IF ~~ THEN REPLY #76761 /* ~It's hidden that well, is it?~ */ GOTO 45
END

IF ~~ THEN BEGIN 45 
  SAY #76763 /* ~Oh yes. You mightn't guess it to look at us, but faerie dragons are masters of concealment.~ [OH76763] */
  IF ~~ THEN REPLY #76764 /* ~Very well. Where can I find these crystals?~ */ GOTO 75
  IF ~~ THEN REPLY #76765 /* ~I'm done wasting my time with you.~ */ GOTO 35
  IF ~~ THEN REPLY #76766 /* ~I'm pretty good at concealing things too. Want to see me hide a sword in a faerie dragon's body?~ */ GOTO 89
END

IF ~~ THEN BEGIN 46 
  SAY #76768 /* ~So, what brings you to Resurrection Gorge?~ [OH76768] */
  IF ~~ THEN REPLY #76769 /* ~Did I not mention the summoning stones?~ */ GOTO 53
  IF ~~ THEN REPLY #76770 /* ~It's what'll get us out of here that I'm concerned with.~ */ GOTO 48
  IF ~~ THEN REPLY #76771 /* ~I would find the stones of summoning.~ */ GOTO 47
END

IF ~~ THEN BEGIN 47 
  SAY #76772 /* ~From Vernus's circle in the great tree? Why?~ [OH76772] */
  IF ~~ THEN REPLY #76774 /* ~It will allow us to restore Resurrection Gorge to its proper state. Will you help us?~ */ GOTO 52
  IF ~~ THEN REPLY #76775 /* ~Because that's the only way we'll be free from this pit.~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 
  SAY #76777 /* ~Hey, that's my home you're talking about there.~ [OH76777] */
  IF ~~ THEN REPLY #76778 /* ~Forgive me, Fil. I wasn't thinking.~ */ GOTO 50
  IF ~~ THEN REPLY #76779 /* ~And a dismal home it is.~ */ GOTO 49
END

IF ~~ THEN BEGIN 49 
  SAY #76780 /* ~I'll admit it isn't what it used to be, but there's no call for rudeness. I was considering helping you in your quest, but you can forget it now.~ [OH76780] */
  IF ~~ THEN REPLY #76781 /* ~I am truly sorry, Fil. It's... a trying time. But that's no reason to insult your home.~ */ GOTO 50
  IF ~~ THEN REPLY #76782 /* ~Sorry, Fil. I calls 'em like I sees 'em.~ */ GOTO 50
END

IF ~~ THEN BEGIN 50 
  SAY #76784 /* ~Not to worry, <CHARNAME>. I realize this place isn't exactly welcoming for people like yourself.~ [OH76784] */
  IF ~~ THEN REPLY #76785 /* ~Be it ever so humble, there's no place like home.~ */ GOTO 46 
  IF ~~ THEN REPLY #76786 /* ~We need to gather the stones of summoning if we're to escape the gorge.~ */ GOTO 47
END

IF ~~ THEN BEGIN 52 
  SAY #76791 /* ~As it happens, I do know something of the stones. I'd be happy to help you...~ [OH76791] */
  IF ~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 53 
  SAY #76792 /* ~From Vernus's circle in the great tree? I don't think so.~ [OH76792] */
  IF ~~ THEN REPLY #76793 /* ~They're what brings us to the gorge. Or, more precisely, the circle they were part of does.~ */ GOTO 59
END

IF ~~ THEN BEGIN 54 
  SAY #76794 /* ~You could call me Fil, I suppose. Bit dull, though.~ [OH76794] */
  IF ~~ THEN REPLY #76795 /* ~I shall call you Fil.~ */ GOTO 58
  IF ~~ THEN REPLY #76796 /* ~Oh, how I yearn for a dull life.~ */ GOTO 55
END

IF ~~ THEN BEGIN 55 
  SAY #76797 /* ~You've come to the wrong place for that, friend.~ [OH76797] */
  IF ~~ THEN REPLY #76798 /* ~Well, hopefully it'll be more dull here when we complete the summoning circle in the tree.~ */ GOTO 60
  IF ~~ THEN REPLY #76799 /* ~Then I'll go find another.~ */ EXIT
  IF ~~ THEN REPLY #76800 /* ~We won't be here long. What do you know of the stones?~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 
  SAY #76801 /* ~Stones?~ [OH76801] */
  IF ~~ THEN REPLY #76802 /* ~The summoning stones.~ */ GOTO 47
END

IF ~~ THEN BEGIN 58 
  SAY #76805 /* ~All right. I guess that's all right.~ [OH76805] */
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 59 
  SAY #76806 /* ~It won't be easy to restore the circle.~ [OH76806] */
  IF ~~ THEN REPLY #76807 /* ~Nothing here has been, but that is still what we plan to do.~ */ GOTO 60
  IF ~~ THEN REPLY #76808 /* ~Really? But everything up till this point has been sooo easy.~ */ GOTO 52
  IF ~~ THEN REPLY #76809 /* ~The acquisition of power is worth the effort.~ */ GOTO 52
END

IF ~~ THEN BEGIN 60 
  SAY #76810 /* ~Why would you want to? The circle's completion wasn't exactly a cause for celebration around these parts.~ [OH76810] */
  IF ~~ THEN REPLY #76811 /* ~A terrible thing happened when the circle was first used. Worse awaits if we cannot fix it.~ */ GOTO 52
  IF ~~ THEN REPLY #76813 /* ~Tell me what you know about the stones.~ */ GOTO 52
END


IF ~~ THEN BEGIN 68 
  SAY #76864 /* ~...once you help me.~ [OH76864] */
  IF ~~ GOTO 73
END

IF ~~ THEN BEGIN 73 
  SAY #76883 /* ~What I want is some crystals.~ [OH76883] */
  IF ~~ THEN REPLY #76884 /* ~That's all?~ */ GOTO 74
  IF ~~ THEN REPLY #76885 /* ~Why?~ */ GOTO 77
  IF ~~ THEN REPLY #76886 /* ~What I want is some dragon stew.~ */ GOTO 76
END

IF ~~ THEN BEGIN 74 
  SAY #76887 /* ~That's it! ~ [OH76887] */
  IF ~~ THEN GOTO 75
END

IF ~~ THEN BEGIN 75 
  SAY #76888 /* ~You can find them in the northeast corner of the gorge.~ [OH76888] */
  IF ~~ THEN REPLY #76889 /* ~And if we bring you these crystals, you'll give us the summoning stones?~ */ GOTO 85
  IF ~~ THEN REPLY #76890 /* ~Why don't you go get them yourself?~ */ GOTO 78
  IF ~~ THEN REPLY #76891 /* ~Very well. We'll return when we've got the crystals.~ */ GOTO 86
END

IF ~~ THEN BEGIN 76 
  SAY #76893 /* ~We'll see who's picking at whose bones come dinnertime, <PRO_RACE>!~ [OH76893] */
  IF ~~ THEN DO ~SetGlobal("OHD_fil_hostile","OH5200",1)
Enemy()
Attack(Player1)
~ EXIT
END

IF ~~ THEN BEGIN 77 
  SAY #76894 /* ~Since the demon arrived... how to put this? The ladies—the lady dragons, I mean—they've been a little... uptight? In my experience, they find the crystals relaxing.~ [OH76894] */
  IF ~~ THEN REPLY #76897 /* ~Where can we find these crystals?~ */ GOTO 75
END

IF ~~ THEN BEGIN 78 
  SAY #76898 /* ~You may not have noticed this because it's invisible... but there's a tanar'ri demon wandering around. I'd rather not cross paths with it if at all possible.~ [OH76898] */
  IF ~  Dead("ohdxach")
~ THEN REPLY #76899 /* ~You've no need to fear the demon. It's been slain.~ */ GOTO 79
  IF ~~ THEN REPLY #76901 /* ~Understandable. Very well, we'll get you your crystals.~ */ GOTO 86
END

IF ~~ THEN BEGIN 79 
  SAY #76902 /* ~It has? Seriously?~ [OH76902] */
  IF ~~ THEN GOTO 80
END

IF ~~ THEN BEGIN 80 
  SAY #76904 /* ~That's great news!~ [OH76904] */
  IF ~~ THEN REPLY #76905 /* ~So you'll give us your stones?~ */ GOTO 82
END

IF ~~ THEN BEGIN 82 
  SAY #76908 /* ~Sure, but I still want the crystals.~ [OH76908] */
  IF ~~ THEN REPLY #76909 /* ~But we slew the demon!~ */ GOTO 83
END

IF ~~ THEN BEGIN 83 
  SAY #76910 /* ~And hey, good job on that. But I'd still rather you collect the crystals. There's plenty of danger in the gorge beyond the demon.~ [OH76910] */
  IF ~~ THEN REPLY #76911 /* ~Very well. We'll return when we've got the crystals.~ */ GOTO 86
END

IF ~~ THEN BEGIN 85 
  SAY #76914 /* ~We've only got one. It's very nice though. Pink, if memory serves.~ [OH76914] */
  IF ~~ THEN REPLY #76915 /* ~Very well. We'll return when we've got the crystals.~ */ GOTO 86
  IF ~~ THEN REPLY #76917 /* ~Pink, you say? That shouldn't be too hard to find in this pit's murk. Which means you have officially outlived your usefulness.~ */ GOTO 89
END

IF ~~ THEN BEGIN 86 
  SAY #76919 /* ~Watch your step. There's some nasty things out there.~ [OH76919] */
  IF ~~ THEN DO ~AddJournalEntry(90357,INFO)
SetGlobal("OHD_fil_dialog","OH5200",2)
~ EXIT
END

IF ~~ THEN BEGIN 88 
  SAY #76926 /* ~Better than that, I can get you one.~ [OH76926] */
  IF ~~ THEN REPLY #76927 /* ~We need them all.~ */ GOTO 91
END

IF ~~ THEN BEGIN 89 
  SAY #76928 /* ~Fool! You'll regret crossing the Great and Magnificent and Also Irresistibly Handsome Filbert!~ [OH76928] */
  IF ~~ THEN DO ~SetGlobal("OHD_fil_hostile","OH5200",2)
Enemy()
Attack(Player1)
~ EXIT
END

IF WEIGHT #0 ~  Global("OHD_fil_hostile","OH5200",3)
~ THEN BEGIN 90 
  SAY #76929 /* ~No more, please, I beg you! I'll give you what you want; just spare me.~ [OH76929] */
  IF ~~ THEN REPLY #76930 /* ~You know where we can find the summoning stones?~ */ DO ~SetGlobal("OHD_fil_hostile","OH5200",5)
~ GOTO 88
  IF ~~ THEN REPLY #76931 /* ~You have the stones?~ */ DO ~SetGlobal("OHD_fil_hostile","OH5200",5)
~ GOTO 91
END

IF ~~ THEN BEGIN 91 
  SAY #76933 /* ~We only have one! It's pink!~ [OH76933] */
  IF ~~ THEN REPLY #76936 /* ~Its color matters not. Hand it over.~ */ DO ~GiveItem("OHDSUMS2",Player1)
~ EXIT
END

IF WEIGHT #2 ~  Global("OHD_fil_dialog","OH5200",2)
~ THEN BEGIN 96 
  SAY #76949 /* ~<CHARNAME>! You've returned! Did you bring my crystals?~ [OH76949] */
  IF ~  !PartyHasItem("ohdcryst")
~ THEN REPLY #77211 /* ~Not yet.~ */ EXIT
  IF ~  PartyHasItem("ohdcryst")
~ THEN REPLY #76950 /* ~We have.~ */ GOTO 97
  IF ~  PartyHasItem("ohdcryst")
~ THEN REPLY #76951 /* ~We brought crystals. They're staying with us until you hand over the summoning stone.~ */ GOTO 101
  IF ~  PartyHasItem("ohdcryst")
~ THEN REPLY #76952 /* ~Do you have the summoning stone?~ */ GOTO 98
END

IF ~~ THEN BEGIN 97 
  SAY #76953 /* ~That's excellent. Give them to me and I'll fetch your summoning stone.~ [OH76953] */
  IF ~~ THEN REPLY #76954 /* ~Here you go—~ */ GOTO 109
  IF ~~ THEN REPLY #76955 /* ~No, I think you'll bring us the summoning stone first.~ */ GOTO 101
  IF ~~ THEN REPLY #76956 /* ~My patience with you is nearly at an end, dragon. Bring me the stone. Now.~ */ GOTO 108
END

IF ~~ THEN BEGIN 98 
  SAY #76957 /* ~Not on me, but I can get it easily enough once you've given me the crystals.~ [OH76957] */
  IF ~~ THEN REPLY #76958 /* ~Excellent. I have the crystals right here—~ */ GOTO 109
  IF ~~ THEN REPLY #76959 /* ~I'd be more comfortable if you brought us the stone first.~ */ GOTO 101
END

IF ~~ THEN BEGIN 101 
  SAY #76966 /* ~You don't trust the Great and Magnificent and Also Incredibly Handsome Filbert?~ [OH76966] */
  IF ~~ THEN REPLY #76967 /* ~I'm finding it very difficult to trust anyone and anything in Resurrection Gorge.~ */ GOTO 102
  IF ~~ THEN REPLY #76968 /* ~I've found "verify before trusting" to be a very handy policy.~ */ GOTO 103
END

IF ~~ THEN BEGIN 102 
  SAY #76969 /* ~I suppose I can understand that. All right, wait here a minute; I'll go get your stone.~ [OH76969] */
  IF ~~ THEN GOTO 109
END

IF ~~ THEN BEGIN 103 
  SAY #76970 /* ~Ah, come on. This is your old buddy Fil you're talking to.~ [OH76970] */
  IF ~~ THEN REPLY #76971 /* ~My "old buddy" who sent me to pick crystals right over an ankheg nest.~ */ GOTO 104
  IF ~~ THEN REPLY #76972 /* ~I won't be talking to him much longer if he doesn't provide what he promised us.~ */ GOTO 108
END

IF ~~ THEN BEGIN 104 
  SAY #76973 /* ~Ah. Ran into the ankhegs, did you? Are there any left...?~ [OH76973] */
  IF ~~ THEN REPLY #76974 /* ~None.~ */ GOTO 105
  IF ~~ THEN REPLY #76975 /* ~Go over there and find out for yourself.~ */ GOTO 106
  IF ~~ THEN REPLY #76976 /* ~Many. Their infestation grows by the minute. Soon they'll have overrun the gorge.~ */ GOTO 107
END

IF ~~ THEN BEGIN 105 
  SAY #76977 /* ~That's the best news since... well, since I heard you'd brought me some crystals.~ [OH76977] */
  IF ~~ THEN GOTO 109
END

IF ~~ THEN BEGIN 106 
  SAY #76979 /* ~I don't think I'll be doing that. Maybe I can talk Tornyn into it. He's stupid...~ [OH76979] */
  IF ~~ THEN GOTO 109
END

IF ~~ THEN BEGIN 107 
  SAY #76981 /* ~That's terrible!~ [OH76981] */
  IF ~~ THEN GOTO 109
END

IF ~~ THEN BEGIN 108 
  SAY #76983 /* ~All right, all right. Just wait here a few minutes.~ [OH76983] */
  IF ~~ THEN GOTO 109
END

IF ~~ THEN BEGIN 109 
  SAY #76984 /* ~And there's your stone. Satisfied?~ [OH76984] */
  IF ~~ THEN REPLY #76985 /* ~Very. Here are the crystals we collected.~ */ DO ~GiveItem("OHDSUMS2",Player1)
~ GOTO 112
END

IF ~~ THEN BEGIN 112 
  SAY #76994 /* ~Oh. Oh yeah. These will turn Oleska's head away from that great oaf Tornyn.~ [OH76994] */
  IF ~~ THEN REPLY #76995 /* ~Good luck to you, Fil.~ */ DO ~SetGlobal("OHD_fil_dialog","OH5200",3)
TakePartyItem("OHDCRYST")
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #76996 /* ~So everything we did was for love. I should feel good about that... Nope.~ */ DO ~SetGlobal("OHD_fil_dialog","OH5200",3)
TakePartyItem("OHDCRYST")
EscapeArea()
~ EXIT
END
