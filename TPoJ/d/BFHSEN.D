BEGIN ~BFHSEN~

/* greeting */

IF ~NumTimesTalkedToLT(1)~ THEN BEGIN 0 // from:
  SAY #75048 /* ~Who goes there?~ [OH75048] */
  IF ~~ THEN REPLY #75049 /* ~Good day to you. My name is <CHARNAME>.~ */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #75050 /* ~Well met, <CHARNAME>. I am Tennek. What can I do for you?~ [OH75050] */
  IF ~~ THEN REPLY #75051 /* ~I ask nothing more than you've already given. In these troubled times, a simple pleasant greeting is a rare treasure.~ */ GOTO 4
  IF ~~ THEN REPLY #75052 /* ~That depends. There's a few items I could use on my journey: If you or your colleagues have them, there's much we could discuss.~ */ GOTO 5
  ++ ~Bollard Firejaw summoned me here to speak with him.~ + bfs.bollardsummons
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #75057 /* ~What you say is all too true. I know not where you go, but I hope your journey is quick and safe.~ [OH75057] */
  IF ~~ THEN REPLY #75058 /* ~Thank you for that, Tennek. Farewell.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY #75059 /* ~What are you looking for?~ [OH75059] */
  IF ~~ THEN REPLY #75060 /* ~Let's see what you have.~ */ DO ~StartStore("OHDHSEN",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ bfs.bollardsummons
SAY ~The Tormite? Aye, you'll find him deeper within the camp. Follow the path towards the tents.~ 
IF ~~ EXIT
END

/* access to store */ 
IF ~True()~ THEN BEGIN bfs.helmitestore
  SAY ~Well met. What can I do for you?~ [BFTEN]
  IF ~~ THEN REPLY #75060 /* ~Let's see what you have.~ */ DO ~StartStore("OHDHSEN",LastTalkedToBy(Myself))~ EXIT
  ++ ~Nothing for now.~ EXIT
END
