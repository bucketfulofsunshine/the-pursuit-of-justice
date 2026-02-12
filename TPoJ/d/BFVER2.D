BEGIN BFVER2

/* reunion with summerheigh */ 
CHAIN IF ~Global("bfsvernres","GLOBAL",2)~ THEN bfver2 bfs.vernreunion
~Mother...~
== BFSUMM ~Vernus.~
== BFVER2 ~I...I have no apology equal to the harm I have wrought. My pride blinded me and I reached beyond my means. Were it not for Yarrow's interference, I...I would have damned us all.~
== BFVER2 ~If you will have me, I would study at your side once more. Let me help mend what I have broken.~
== BFSUMM ~Nature does not suffer arrogance lightly. But neither does it deny renewal to those who truly repent.~
== BFSUMM ~You are my son, Vernus, that much has never changed.~
== BFVER2 ~Then you forgive me?~
== BFSUMM ~Forgiveness is not a word spoken and forgotten. It is a path chosen and walked every day. But I will tread it beside you. We will listen to the wind and tend to the roots.~
== BFSUMM ~Under our care, and with Yarrow's guidance, the gorge may flourish once more.~
DO ~SetGlobal("bfsvernres","GLOBAL",3) AddJournalEntry(@10005, QUEST_DONE) GivePartyGold(500) GiveItem("LEAT11",Player1)~ EXIT

/* returned to summerheigh, catch all */
CHAIN IF~Global("bfsvernres","GLOBAL",3)~ THEN bfver2 bfs.vernpost
~I have much to atone for, I think.~
DO ~~ EXIT
