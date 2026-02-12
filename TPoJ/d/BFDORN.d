BEGIN BFDORN

CHAIN IF ~NumTimesTalkedToLT(1)~ THEN bfdorn bfs.dorn1
~So Bollard Firejaw finally sends someone crawling after me. Do you truly believe you can stop Dorn Il-Khan? Ha!~ 
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ ~Whatever evil you intend here... w-we will stop you.~
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ ~Yield now, blackguard, and face justice with what honour you have left.~
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ ~You open doors to bad places! Boo says we close them - after kicking you through!~
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ ~Nature will endure here long after your bones are dust.~
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ ~The scar you would carve here will echo across many seasons. I cannot permit it.~
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ ~Hmph. Amateur theatrics. One would think a portal to the Hells warrants more competence.~
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ ~Then open yer damned portal. I'll spill yer guts long before anything crawls out.~
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ ~Once more, magic seeps into the land and poisons it.~
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ ~The stage is set. A bloodbath is promised. The ending, the fall of an overconfident villain, practically writes itself.~
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ ~This reminds me of Aunt Poppy's trip into her cellar. She went down looking for turnips and wandered into Baator instead. These things always end badly.~
  END
  ++ ~Dorn, your bloody path ends here. Surrender and you may yet stand trial.~ EXTERN bfdorn bfs.dorn2 
  ++ ~Murderer! Bollard's injuries, the death of innocents within the Radiant Heart, you will die for your crimes!~ EXTERN bfdorn bfs.dorn6
  ++ ~I admire your ambition, but I don't kneel to rivals. Whatever power you seek to gain will be mine once you're dead.~ EXTERN bfdorn bfs.dorn4
  ++ ~We travelled together along the Sword Coast, Dorn. But your bloodthirst ends here.~ EXTERN bfdorn bfs.dorn5
  ++ ~This ends one way, Dorn. We can make it quick or messy.~ EXTERN bfdorn bfs.dorn6
  + ~OR(2) Class(Player1,DRUID_ALL) Class(Player1,RANGER_ALL)~ + ~This ritual defiles the gorge. I will seal the portal and restore balance to this land.~ EXTERN bfdorn bfs.dorn7
  + ~Class(Player1,PALADIN_ALL) !Kit(Player1,BLACKGUARD)~ + ~By my oath, I will see you disarmed and brought to lawful judgment.~ EXTERN bfdorn bfs.dorn2 
  + ~OR(2) Class(Player1,MAGE_ALL) Class(Player1,SORCERER)~ + ~Planar bindings always exact a cost on its summoner, Dorn. You will not be the one who decides the price.~ EXTERN bfdorn bfs.dorn6

    
CHAIN bfdorn bfs.dorn2
~A trial? Presided over by weak priests and craven knights? By you?~
== BFDORN ~You believe law has meaning but the strong barter in blood.~
== BFDORN ~No. I will be both judge and executioner this <DAYNIGHT>.~
END
IF ~~ EXTERN bfdorn bfs.dorn6

CHAIN bfdorn bfs.dorn4
~You think yourself worthy? Then prove it with blood.~
END
IF ~~ EXTERN bfdorn bfs.dorn6

CHAIN bfdorn bfs.dorn5
~Once, I accepted your aid. That was a courtesy, nothing more.~
== BFDORN ~You mistake shared bloodshed for kinship. With the power I will soon gain, I will have no need for companions.~
END
IF ~~ EXTERN bfdorn bfs.dorn6

CHAIN bfdorn bfs.dorn7
~Your ideals of balance mean nothing.~
== BFDORN ~From this land's ruin, I will ascend.~
END
IF ~~ EXTERN bfdorn bfs.dorn6

CHAIN bfdorn bfs.dorn6
~Every step I have taken, every life I have claimed, has led to this moment. You will bear witness to the culmination of my power.~
== BFDORN ~I see you have already gathered the stones needed to open the portal. That leaves only one final, vital component: blood. My own will suffice for the summoning, but yours will serve as the sacrifice that binds the pact.~
== BFDORN ~Ur-Gothoz! Come and witness your champion's triumph!~
DO ~ClearAllActions() Enemy() StartCutSceneMode() StartCutScene("bfcut8a")~ EXIT

/* ur gothoz dies, dorn summons azothet */ 
CHAIN IF ~NumTimesTalkedToGT(0) Global("bfdornchat2","LOCALS",0)~ THEN bfdorn bfs.dorn10
~Ur-Gothoz falls. No matter. It changes nothing. Azothet, I call upon you, grant me your power!~
DO ~SetGlobal("bfdornchat2","LOCALS",1)
    ClearAllActions()
    StartCutSceneMode()
    StartCutScene("bfcut9c")~ EXIT
	