BEGIN bfhlt

IF ~True()~ THEN BEGIN bfhlt
SAY ~This is a letter from the Helmites, inviting you to their camp.~ 
+ ~!AreaCheck("OH5300")~ + ~Follow the directions.~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("hltport")~ EXIT
++ ~I'll stay here for now.~ EXIT
END
