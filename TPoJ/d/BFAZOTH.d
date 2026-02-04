BEGIN BFAZOTH

CHAIN IF ~NumTimesTalkedToLT(1)~ THEN bfazoth bfs.azo1
~You reek of another's bargain but I will not be denied. I bind you to my will, Dorn Il-Khan. Come. You will not fall here.~
DO ~CreateVisualEffectObject("bfdorn",Player1)
ActionOverride("bfdorn",DestroySelf()
Enemy()~ EXIT
