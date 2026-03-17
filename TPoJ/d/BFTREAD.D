BEGIN ~BFTREAD~

IF ~~ THEN BEGIN 0 
  SAY #75743 /* ~Get back, mistress! I'll make short work of these intruders!~ [OH75743] */
  IF ~~ THEN REPLY #75744 /* ~Listen to your mistress—Treadsoft, was it? I've no wish to harm you further.~ */ EXTERN ~BFYARR~ 1
  IF ~~ THEN REPLY #75745 /* ~Are you mad? You're all but dead as it is!~ */ GOTO 1
  IF ~~ THEN REPLY #75746 /* ~Valiant words, halfling. But hollow ones.~ */ GOTO 2  
END

IF ~~ THEN BEGIN 1 
  SAY #75747 /* ~It'll take more than a couple scratches to stop me.~ [OH75747] */
  IF ~~ THEN REPLY #75748 /* ~There's more than a couple and they're more than scratches.~ */ GOTO 2
  IF ~~ THEN REPLY #75750 /* ~We'll see what it takes to stop you.~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 
  SAY #75757 /* ~It'll take more than the likes of you wretches to give me pause!~ [OH75757] */
  IF ~~ THEN EXTERN ~BFYARR~ 1
END

IF ~~ THEN BEGIN 3 
  SAY #75759 /* ~Yes, mistress.~ [OH75759] */
  IF ~~ THEN REPLY #75760 /* ~All right. Now that we've got that out of the way: I'm <CHARNAME>. I didn't catch your name.~ */ EXTERN ~BFYARR~ 2  
END
