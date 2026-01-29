BEGIN BFBOL

/* bollard greeting */
CHAIN IF ~Global("bfbollardaddress","LOCALS",0)~ THEN bfbol bfs.bollard1
~You have answered my summons. That speaks well of you.~
== BFBOL ~I am Bollard Firejaw, paladin of the Radiant Heart, sworn to the service of Torm.~
/* keldorn & lawful anomen is in the party */
== BFBOL IF ~InParty("Keldorn") InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) OR(2) Alignment("ANOMEN",LAWFUL_GOOD) Alignment("ANOMEN",LAWFUL_NEUTRAL) InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ ~I see Sir Keldorn Firecam and Anomen Delryn among your party. Their presence is reassuring.~
== KELDORJ IF ~InParty("Keldorn") !InParty("Anomen") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ ~You are gracious, Bollard Firejaw. Pray tell, how may we be of service?~
/* keldorn is in the party, anomen is not */
== BFBOL IF ~InParty("Keldorn") !InParty("Anomen") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ ~I see Sir Keldorn Firecam amongst your party. His presence is reassuring.~
== KELDORJ IF ~InParty("Keldorn") !InParty("Anomen") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ ~You are gracious, Bollard Firejaw. Pray tell, how may we be of service?~
/* lawful anomen is in party, keldorn is not */ 
== BFBOL IF ~!InParty("Keldorn") InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) OR(2) Alignment("ANOMEN",LAWFUL_GOOD) Alignment("ANOMEN",LAWFUL_NEUTRAL)~ THEN ~I see Anomen Delryn among your party. His presence is reassuring.~
/* chaotic anomen is in the party */ 
== BFBOL IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Alignment("ANOMEN",CHAOTIC_NEUTRAL)~ THEN ~I see Anomen Delryn among your party. Your choice of company gives me pause. Still, the need is great, and I will not turn you away.~
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Alignment("ANOMEN",CHAOTIC_NEUTRAL)~ THEN ~I owe no fealthy to those who doubt my worth. I am here due to <CHARNAME>'s insistence and nothing more.~
DO ~SetGlobal("bfbollardaddress","LOCALS",1)~
END
++ ~You have my attention, Bollard. What matter weighs upon you?~ EXTERN bfbol bfs.bollard2
++ ~You asked for me in your letter. What do you need?~ EXTERN bfbol bfs.bollard2
++ ~I am no stranger to dark deeds. Tell me what happened.~ EXTERN bfbol bfs.bollard2

CHAIN bfbol bfs.bollard2
~We stand among the faithful of Helm because I owe them my life.~
== BFBOL ~I was officiating a wedding within the halls of the Radiant Heart. The vows had been exchanged, the blessings had begun. ...Then a blade was drawn and blood was spilled.~
== BFBOL ~I was struck down where I stood, attempting to defend the visitors, and would have died had the Helmites not intervened. They arrived in time to drive my attacker back and heal my wounds.~
END
++ ~Who would commit murder in such a sacred place?~ EXTERN bfbol bfs.bollard3
++ ~Then we must act quickly, before anyone else is harmed.~ EXTERN bfbol bfs.bollard3
+ ~OR(2) Class(Player1,PALADIN) Class(Player1,CLERIC)~ + ~Such sacrilege cannot go unanswered.~ EXTERN bfbol bfs.bollard3

CHAIN bfbol bfs.bollard3
~The murderer is a half-orc blackguard named Dorn Il-Khan. ~
== BFBOL ~He butchered the wedding guests without hesitation, gleeful about his slaughter, and only fled when he met resistance.~
== BFBOL ~There was no madness in his eyes. No fear or pain. Only evil intent.~
END
++ ~Do you know where he has gone?~ EXTERN bfbol bfs.bollard4
+ ~Class(Player1,PALADIN)~ + ~I will see him answer for every life he took.~ EXTERN bfbol bfs.bollard4

CHAIN bfbol bfs.bollard4
~His trail leads to an area called Resurrection Gorge. I would have you follow him and bring him to justice.~
== BFBOL ~If he can be taken alive, then he will stand trial. If he resists your efforts, then his fate is of his own making.~
DO ~RevealAreaOnMap("OH5100")~ EXIT
