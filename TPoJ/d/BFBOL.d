BEGIN BFBOL

/* bollard greeting */
CHAIN IF ~Global("bfbollardaddress","LOCALS",0)~ THEN bfbol bfs.bollard1
@0 /* You have answered my summons. That speaks well of you. */
DO ~SetGlobal("bfbollardaddress","LOCALS",1)~
== BFBOL @1 /* I am Bollard Firejaw, paladin of the Radiant Heart, sworn to the service of Torm. */
/* keldorn & lawful anomen is in the party */
== BFBOL IF ~InParty("Keldorn") InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) OR(2) Alignment("ANOMEN",LAWFUL_GOOD) Alignment("ANOMEN",LAWFUL_NEUTRAL) InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ @2 /* I see Sir Keldorn Firecam and Anomen Delryn among your party. Their presence is reassuring. */
== KELDORJ IF ~InParty("Keldorn") !InParty("Anomen") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ @3 /* You are gracious, Bollard Firejaw. Pray tell, how may we be of service? */
/* keldorn is in the party, anomen is not */
== BFBOL IF ~InParty("Keldorn") !InParty("Anomen") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ @4 /* I see Sir Keldorn Firecam amongst your party. His presence is reassuring. */
== KELDORJ IF ~InParty("Keldorn") !InParty("Anomen") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ @3 /* You are gracious, Bollard Firejaw. Pray tell, how may we be of service? */
/* lawful anomen is in party, keldorn is not */ 
== BFBOL IF ~!InParty("Keldorn") InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) OR(2) Alignment("ANOMEN",LAWFUL_GOOD) Alignment("ANOMEN",LAWFUL_NEUTRAL)~ THEN @5 /* I see Anomen Delryn among your party. His presence is reassuring. */
/* chaotic anomen is in the party */ 
== BFBOL IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Alignment("ANOMEN",CHAOTIC_NEUTRAL)~ THEN @6 /* I see Anomen Delryn among your party. Your choice of company gives me pause. Still, the need is great, and I will not turn you away. */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Alignment("ANOMEN",CHAOTIC_NEUTRAL)~ THEN @7 /* I owe no fealty to those who doubt my worth. I am here due to <CHARNAME>'s insistence and nothing more. */
END
++ @8 /* You have my attention, Bollard. What matter weighs upon you? */ EXTERN bfbol bfs.bollard2
++ @9 /* You asked for me in your letter. What do you need? */ EXTERN bfbol bfs.bollard2
++ @10 /* I am no stranger to dark deeds. Tell me what happened. */ EXTERN bfbol bfs.bollard2

CHAIN bfbol bfs.bollard2
@11 /* We stand among the faithful of Helm because I owe them my life. */
== BFBOL @12 /* I was officiating a wedding within the halls of the Radiant Heart. The vows had been exchanged, the blessings had begun. Then a blade was drawn and blood was spilled. */
== BFBOL @13 /* I was struck down where I stood, attempting to defend the visitors, and would have died had the Helmites not intervened. They arrived in time to drive my attacker back and heal my wounds. */
END
++ @14 /* Who would commit murder in such a sacred place? */ EXTERN bfbol bfs.bollard3
++ @15 /* Then we must act quickly, before anyone else is harmed. */ EXTERN bfbol bfs.bollard3
+ ~OR(2) Class(Player1,PALADIN) Class(Player1,CLERIC)~ + @16 /* Such sacrilege cannot go unanswered. */ EXTERN bfbol bfs.bollard3

CHAIN bfbol bfs.bollard3
@17 /* The murderer is a half-orc blackguard named Dorn Il-Khan.  */
== BFBOL @18 /* He butchered the wedding guests without hesitation, gleeful about his slaughter, and only fled when he met resistance. */
== BFBOL @19 /* There was no madness in his eyes. No fear or pain. Only evil intent. */
END
++ @20 /* Do you know where he has gone? */ EXTERN bfbol bfs.bollard4
+ ~Class(Player1,PALADIN)~ + @21 /* I will see him answer for every life he took. */ EXTERN bfbol bfs.bollard4

CHAIN bfbol bfs.bollard4
@22 /* His trail leads to an area called Resurrection Gorge. I would have you follow him and bring him to justice. */
== BFBOL @23 /* If he can be taken alive, then he will stand trial. If he resists your efforts, then his fate is of his own making. */
== BFBOL @24 /* Return to me when the blackguard lies vanquished or in chains, <CHARNAME>. */
DO ~RevealAreaOnMap("OH5100") EraseJournalEntry(@9001) AddJournalEntry(@9002, QUEST)~ EXIT

/* bollard return */
CHAIN IF ~Global("bfbollardaddress","LOCALS",1)~ THEN bfbol bfs.bollardreturn
@25 /* You return. Has Dorn Il-Khan answered for his transgressions? */
END
++ @26 /* Not yet. */ EXIT
+ ~Global("bfazodefeat","GLOBAL",1)~ + @27 /* I confronted him, but his patron intervened. Dorn was slain before I could stop the blow. */ EXTERN bfbol bfs.bollardreturn2
+ ~Global("bfazodefeat","GLOBAL",1)~ + @28 /* He was within my grasp, yet his patron struck first, ending Dorn's life before I could claim the killing blow. */ EXTERN bfbol bfs.bollardreturn2

CHAIN bfbol bfs.bollardreturn2
@29 /* Then justice, in part, has been meted out. That his patron killed him first attests to the danger you faced. */ 
== BFBOL @30 /* You have earned my gratitude, <CHARNAME>. May this victory, disguised as it is, remind us that justice will always prevail. */
DO ~EraseJournalEntry(@9003) AddJournalEntry(@9004, QUEST_DONE) ReputationInc(1) GivePartyGold(2500) SetGlobal("bfbollardaddress","LOCALS",2) EscapeArea()~ 
EXIT

