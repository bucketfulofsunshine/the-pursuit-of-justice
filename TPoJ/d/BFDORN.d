BEGIN BFDORN

CHAIN IF ~NumTimesTalkedToLT(1)~ THEN bfdorn bfs.dorn1
~So Bollard Firejaw finally sends someone crawling after me. Do you truly believe you can stop Dorn Il-Khan? Ha!~ 
  END
  ++ ~Dorn, your bloody path ends here. Surrender and you may yet stand trial.~ EXTERN bfdorn bfs.dorn2 
  ++ ~Murderer! Bollard's injuries, the death of innocents within the Radiant Heart, you will die for your crimes!~ EXTERN bfdorn bfs.dorn6
  ++ ~Whatever power you seek here, I will claim for myself.~ EXTERN bfdorn bfs.dorn4
  ++ ~We travelled together along the Sword Coast, Dorn. But your bloodthirst ends here.~ EXTERN bfdorn bfs.dorn5
  + ~OR(2) Class(Player1,DRUID_ALL) Class(Player1,RANGER_ALL)~ + ~This ritual defiles the gorge. I will seal the portal and restore balance to this land.~ EXTERN bfdorn bfs.dorn7
    
CHAIN bfdorn bfs.dorn2
~A trial? Presided over by weak priests and craven knights? By you? No. I will be both judge and executioner this <DAYNIGHT>.~
END
IF ~~ EXTERN bfdorn bfs.dorn6

CHAIN bfdorn bfs.dorn4
~You think yourself worthy? Then prove it with blood.~
END
IF ~~ EXTERN bfdorn bfs.dorn6

CHAIN bfdorn bfs.dorn5
~Once, I accepted your aid. That was a courtesy. But I have no need for companions any longer.~
END
IF ~~ EXTERN bfdorn bfs.dorn6

CHAIN bfdorn bfs.dorn7
~Your ideals of balance mean nothing.~
END
IF ~~ EXTERN bfdorn bfs.dorn6

CHAIN bfdorn bfs.dorn6
~Every step I have taken, every life I have claimed, has led to this moment. You will bear witness to the culmination of my power.~
== BFDORN ~I see you have already gathered the stones needed to open the portal. That leaves only one final, vital component: blood.~
== BFDORN ~My own will suffice for the summoning, but yours will serve as the sacrifice that binds the pact.~
== BFDORN ~Ur-Gothoz! Come and witness your champion's triumph!~
DO ~ClearAllActions() Enemy() StartCutSceneMode() StartCutScene("bfcut8a")~ EXIT

/* ur gothoz dies, dorn summons azothet */ 
CHAIN IF ~NumTimesTalkedToGT(0) Global("bfdornchat2","LOCALS",0)~ THEN bfdorn bfs.dorn10
~Ur-Gothoz falls. No matter. It changes nothing. Azothet, I call upon you - grant me your power!~
DO ~SetGlobal("bfdornchat2","LOCALS",1)
    ClearAllActions()
    StartCutSceneMode()
    StartCutScene("bfcut9c")~ EXIT
