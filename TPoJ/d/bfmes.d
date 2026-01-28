BEGIN bfmes

/* helmite messenger */
CHAIN IF ~Global("bfhelmitemessenger","GLOBAL",3)~ THEN bfmes bfs.helmitemes1
~Pardon me, <PRO_SIRMAAM>, are you <CHARNAME>?~
DO ~SetGlobal("bfhelmitemessenger","GLOBAL",4) SetGlobal("bfspursuitaccepted","GLOBAL",1) ~
END
++ ~Yes, I am <CHARNAME>. Why do you seek me?~ EXTERN bfmes bfs.helmitemes2
++ ~That depends on who is asking.~ EXTERN bfmes bfs.helmitemes2
++ ~You found me. Now speak your piece.~ EXTERN bfmes bfs.helmitemes2

CHAIN bfmes bfs.helmitemes2
~I have a message for you, sent by the faithful of Helm.~
== BFMES ~They requested it be delivered from my hands into yours without delay.~
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) OR(2) Alignment("ANOMEN",LAWFUL_GOOD) Alignment("ANOMEN",LAWFUL_NEUTRAL)~ THEN ~My brethren would not contact us without cause. Duty demands we honour their summons.~
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Alignment("ANOMEN",CHAOTIC_NEUTRAL)~ THEN ~So the Helmites think to summon us now? Pay their letter no heed.~
== KELDORJ IF ~InParty("Anomen") Alignment("ANOMEN",CHAOTIC_NEUTRAL) InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN ~Do not let personal grievances blind you to what must be done, Anomen.~
== KELDORJ IF ~!InParty("Anomen") InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN ~Helmites are not prone to idle correspondence. They have reached out to us, <CHARNAME>, so duty demands we answer.~
== JAHEIRAJ IF ~!InParty("Anomen") !InParty("Keldorn") InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN ~The Helmites maintain balance through their vigilance. When they reach out to those beyond their order, it is usually because dark events are stirring. We would do well to seek them out, <CHARNAME>.~
== AERIEJ IF ~!InParty("Anomen") !InParty("Keldorn") !InParty("Jaheira") InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN ~Helm's charge is duty and vigilance, is it not? If his followers have reached out to us, I...I hope we can help them.~
END
++ ~Very well. I will read their letter.~ EXTERN bfmes bfs.helmitemes3
++ ~Give it here and be done with it.~ EXTERN bfmes bfs.helmitemes3

CHAIN bfmes bfs.helmitemes3
~A good <DAYNIGHT> to you.~
DO ~AddJournalEntry(@9001, QUEST) GiveItemCreate("bfhlt",Player1,1,0,0)~ EXIT

