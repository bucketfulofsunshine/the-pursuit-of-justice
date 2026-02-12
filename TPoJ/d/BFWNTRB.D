BEGIN ~BFWNTRB~

IF ~GlobalGT("bfazodefeat","GLOBAL",0)~ THEN BEGIN bfs.wintcomplete
SAY ~My mind feels as clear as a fresh spring in summer. Thank you, <PRO_RACE>, by defeating the demon and closing the portal done a great thing for all of us.~
IF ~~ THEN EXIT
END

IF ~  Global("OHD_winterbrook_stone","OH5200",0)
!PartyHasItem("OHDSUMS1")
~ THEN BEGIN 0 
  SAY #76366 /* ~Eh? Who is it? Who goes there, in the shadows beyond Winterbrook's stream, eh? Tell me, tell me now!~ [OH76366] */
  IF ~~ THEN REPLY #76367 /* ~I am <CHARNAME>.~ */ GOTO 1
  IF ~~ THEN REPLY #76368 /* ~Many things go over here. I'm just one of them.~ */ GOTO 2
  IF ~~ THEN REPLY #76369 /* ~You may call me <CHARNAME>. I seek the stones of summoning.~ */ GOTO 20
  IF ~~ THEN REPLY #76370 /* ~Whoever goes there is now going elsewhere.~ */ EXIT
END

IF ~~ THEN BEGIN 1 
  SAY #76371 /* ~What's that? Tell me that, why don't you? What is it, and what's it doing oh so close to the glittering water's edge?~ [OH76371] */
  IF ~~ THEN REPLY #76372 /* ~I am a <CHARNAME>, and I seek some stones.~ */ GOTO 10
  IF ~~ THEN REPLY #76374 /* ~My name is <CHARNAME>. I'm here looking for some stones.~ */ GOTO 10
  IF ~~ THEN REPLY #76375 /* ~We're on a tour of Awful Places of Amn, and Resurrection Gorge is the latest stop.~ */ GOTO 3
  IF ~~ THEN REPLY #76376 /* ~I am here for the summoning stones. Give them to me, or you'll find out exactly what I am.~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 
  SAY #76373 /* ~Just one? Just one with some others, yes? I see them there in the shadows with you. What are you, eh? Why are you here?~ [OH76373] */
  IF ~~ THEN REPLY #76372 /* ~I am a <CHARNAME>, and I seek some stones.~ */ GOTO 10
  IF ~~ THEN REPLY #76374 /* ~My name is <CHARNAME>. I'm here looking for some stones.~ */ GOTO 10
  IF ~~ THEN REPLY #76375 /* ~We're on a tour of Awful Places of Amn, and Resurrection Gorge is the latest stop.~ */ GOTO 3
  IF ~~ THEN REPLY #76376 /* ~I am here for the summoning stones. Give them to me, or you'll find out exactly what I am.~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 
  SAY #76377 /* ~The latest and the last you'll see—you'll see! You should never have come here; you never, never should have!~ [OH76377] */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 4 
  SAY #76381 /* ~Oh, I know what you are, fish. What are you doing? Get back in your pool before you drown on the air.~ [OH76381] */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 
  SAY #76382 /* ~Oh! Oh, little fishies, dancing and dying and never knowing why.~ [OH76382] */
  IF ~~ THEN REPLY #76383 /* ~You poor creature. You must have suffered greatly.~ */ GOTO 8
  IF ~~ THEN REPLY #76384 /* ~Nodding and listening and never knowing why is more like it. Do you know anything about the stones of summoning?~ */ GOTO 10
  IF ~CheckStatLT(Player1,15,CHR) ~ THEN REPLY #76385 /* ~Cease your babbling, waterwitch. Tell me where I can find the stones, or pay the price.~ */ GOTO 6  
  IF ~ CheckStatGT(Player1,14,CHR)~ THEN REPLY #76385 /* ~Cease your babbling, waterwitch. Tell me where I can find the stones, or pay the price.~ */ GOTO 10
END

IF ~~ THEN BEGIN 6 
  SAY #76387 /* ~You'll find no stones where you're going, <PRO_RACE>.~ [OH76387] */
  IF ~~ THEN DO ~SetGlobal("OHD_WINTERB_HOSTILE","OH5200",1)
~ EXIT
END

IF ~~ THEN BEGIN 8 
  SAY #76392 /* ~Oh, greatly, yes, how greatly I've suffered. You have no idea.~ [OH76392] */
  IF ~~ THEN REPLY #76393 /* ~We're here to help you. We need the stones of summoning. Can you help us?~ */ GOTO 20
  IF ~~ THEN REPLY #76394 /* ~Listening to you, I think I've some idea.~ */ GOTO 9  
  IF ~~ THEN REPLY #76395 /* ~I'd love to hear all about it, except I've got a pot of stew simmering elsewhere and must attend to it.~ */ EXIT
  IF ~~ THEN REPLY #76396 /* ~Tell us what you know of the stones or you'll learn what true suffering is!~ */ GOTO 10  
END

IF ~~ THEN BEGIN 9 
  SAY #76399 /* ~The thoughts, they run through my mind like water through cracks in stone, always moving, always, always...~ [OH76399] */
  IF ~~ THEN REPLY #76400 /* ~I'll be moving myself, I think. ~ */ EXIT
  IF ~~ THEN REPLY #76401 /* ~Speaking of stones...~ */ GOTO 10
  IF ~~ THEN REPLY #76402 /* ~Your endless burbling wearies me, nereid. Where can I find the summoning stones?~ */ GOTO 12
END

IF ~~ THEN BEGIN 10 
  SAY #76403 /* ~I know of stones, many stones; my stream smooths them out, you see? Don't touch them though, oh don't touch them—the water is clear, but it's ice beneath the surface. It eats fingers, yes, it does.~ [OH76403] */
  IF ~~ THEN REPLY #76404 /* ~I'm looking for specific stones. Ones taken from a summoning circle in the bole of yon tree.~ */ GOTO 11
  IF ~~ THEN REPLY #76405 /* ~I've no wish to cross your stream. I only want the summoning stones.~ */ GOTO 20
END

IF ~~ THEN BEGIN 11 
  SAY #76407 /* ~Ah. Those stones.~ [OH76407] */
  IF ~~ THEN REPLY #76408 /* ~Yes. Do you know where I might find them?~ */ GOTO 12  
  IF ~~ THEN REPLY #76409 /* ~Those very stones. We'd give much to know where they are. Can you help us?~ */ GOTO 18
  IF ~~ THEN REPLY #76410 /* ~Indeed. Hand them over or pay the price.~ */ GOTO 25
END

IF ~~ THEN BEGIN 12 
  SAY #76411 /* ~I know where you might find one, but only if you looked in the right place.~ [OH76411] */
  IF ~~ THEN REPLY #76412 /* ~What place would that be?~ */ GOTO 16
  IF ~~ THEN REPLY #76413 /* ~Having looked in a number of wrong places and found nothing, I believe you.~ */ GOTO 16  
  IF ~OR(2) CheckStatLT(Player1,14,STR) CheckStatLT(Player1,15,CHR)~ THEN REPLY #76414 /* ~Tell me where it is, or I swear what I do to you will make you look on what you've endured these past months with longing and affection.~ */ GOTO 15
  IF ~ CheckStatGT(Player1,13,STR) CheckStatGT(Player1,14,CHR)~ THEN REPLY #76414 /* ~Tell me where it is, or I swear what I do to you will make you look on what you've endured these past months with longing and affection.~ */ GOTO 16
END

IF ~~ THEN BEGIN 15 
  SAY #76424 /* ~Trembling I am, trembling with fear. Oh, what terrible fate will befall me at your hands?~ [OH76424] */
  IF ~~ THEN GOTO 61 
END

IF ~~ THEN BEGIN 16 
  SAY #76427 /* ~There is no place under the water, not for you, not for stones—no, no safe place. But behind the water, ah, that is another tale.~ [OH76427] */
  IF ~~ THEN REPLY #76428 /* ~There's a summoning stone behind the waterfall?~ */ GOTO 18
  IF ~~ THEN REPLY #76429 /* ~And a lovely tale I'm sure it is. Tell me more of the stone's adventures in this sanctuary you speak of.~ */ GOTO 17
  IF ~~ THEN REPLY #76430 /* ~When I'm of a mind to listen to a madwoman's tale, I shall return.~ */ EXIT
  IF ~~ THEN REPLY #76431 /* ~Enough! I'll waste no more time listening to a madwoman's nonsense.~ */ GOTO 61 
END

IF ~~ THEN BEGIN 17 
  SAY #76433 /* ~...Are you mocking me? Me, the keeper of the stone in a safe place behind the water?~ [OH76433] */
  IF ~~ THEN REPLY #76434 /* ~No, not at all. I only want to know where to find the stone.~ */ GOTO 18
  IF ~CheckStatLT(Player1,14,STR) CheckStatLT(Player1,15,CHR)~ THEN REPLY #76436 /* ~Where is the stone, madwoman?~ */ GOTO 62
  IF ~OR(2) CheckStatGT(Player1,13,STR) CheckStatGT(Player1,14,CHR)~ THEN REPLY #76436 /* ~Where is the stone, madwoman?~ */ GOTO 38
END

IF ~~ THEN BEGIN 18 
  SAY #76437 /* ~It's someplace safe. I'll say no more on that, no, nothing more.~ [OH76437] */
  IF ~~ THEN REPLY #76438 /* ~Please, Winterbrook. Without the stones, we'll not be able to restore the tree.~ */ GOTO 36
  IF ~~ THEN REPLY #76439 /* ~What safe place can there be in Resurrection Gorge? You must give us the stone, before it's too late.~ */ GOTO 19  
  IF ~~ THEN REPLY #76440 /* ~It's not the stone's safety that you should be concerned with now.~ */ GOTO 61
END

IF ~~ THEN BEGIN 19 
  SAY #76442 /* ~I mistrust your face. The stone is safe where it is, yes, it is, and there where it is is where it will stay.~ [OH76442] */ 
  IF ~CheckStatLT(Player1,15,CHR)~ THEN REPLY #76443 /* ~There is no safe place in Resurrection Gorge, Winterbrook. Yarrow and the great tree are dying. We need the stone to save them.~ */ GOTO 29
  IF ~CheckStatGT(Player1,14,CHR)~ THEN REPLY #76443 /* ~There is no safe place in Resurrection Gorge, Winterbrook. Yarrow and the great tree are dying. We need the stone to save them.~ */ GOTO 38  
  IF ~OR(2) CheckStatLT(Player1,13,CHR) CheckStatLT(Player1,15,STR)~ THEN REPLY #76445 /* ~Last chance, nereid. Hand over the stone or pay the price.~ */ GOTO 26
  IF ~OR(2) CheckStatGT(Player1,12,CHR) CheckStatGT(Player1,14,STR)~ THEN REPLY #76445 /* ~Last chance, nereid. Hand over the stone or pay the price.~ */ GOTO 38
END

IF ~~ THEN BEGIN 20 
  SAY #76446 /* ~What stones summon things? What a silly idea. I have no idea what you're talking about, none. No, I don't, I don't—DON'T CROSS MY STREAM!~ [OH76446] */
  IF ~~ THEN REPLY #76447 /* ~I've no wish to cross your stream. The stones I seek were taken from a circle in the great tree.~ */ GOTO 11
  IF ~~ THEN REPLY #76448 /* ~I wouldn't dream of it. This place is miserable enough with dry feet.~ */ GOTO 21
  IF ~~ THEN REPLY #76449 /* ~I'll cross your stream if I wish, nereid. Give me the stones taken from the bole of yon tree and I'll have no reason to get my feet wet.~ */ GOTO 18 
END

IF ~~ THEN BEGIN 21 
  SAY #76450 /* ~ 'Twasn't always so. Wouldn't be so now, no, it wouldn't if not for Vernus, the self-important twerp. Once it was beautiful, yes, it was green and blue and brown and a variety of different shades of green, more than I could count.~ [OH76450] */
  IF ~CheckStatLT(Player1,14,CHR)~ THEN REPLY #76451 /* ~As it once was, it can be again, if you give us the stones.~ */ GOTO 36
  IF ~CheckStatGT(Player1,13,CHR)~ THEN REPLY #76451 /* ~As it once was, it can be again, if you give us the stones.~ */ GOTO 38
  IF ~~ THEN REPLY #76452 /* ~There were four shades of green, then?~ */ GOTO 22
  IF ~~ THEN REPLY #76453 /* ~Your incessant babbling wearies me, nereid. Hand over the stones.~ */ GOTO 25
END

IF ~~ THEN BEGIN 22 
  SAY #76454 /* ~There were seven greens at least; I can recall them clearly. Maybe more, maybe. It was so so so long ago...~ [OH76454] */
  IF ~CheckStatLT(Player1,14,CHR)~ THEN REPLY #76455 /* ~The gorge can be restored, Winterbrook. We can do it if you just give us the stones.~ */ GOTO 36
  IF ~CheckStatGT(Player1,14,CHR)~ THEN REPLY #76455 /* ~The gorge can be restored, Winterbrook. We can do it if you just give us the stones.~ */ GOTO 38
  IF ~CheckStatLT(Player1,14,CHR)~ THEN REPLY #76456 /* ~Give us the stones and I promise you the gorge will be home to at least nine shades of green. Come now, you can't beat that offer.~ */ GOTO 27  
  IF ~CheckStatGT(Player1,13,CHR)~ THEN REPLY #76456 /* ~Give us the stones and I promise you the gorge will be home to at least nine shades of green. Come now, you can't beat that offer.~ */ GOTO 38
  IF ~~ THEN REPLY #76457 /* ~Enough prattling. Give us the stones or I'll take your head in their place.~ */ GOTO 26
END

IF ~~ THEN BEGIN 25 
  SAY #76469 /* ~Hand them over? Hand *them* over? I can't do that; no, I can't; I won't because I can't.~ [OH76469] */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 26 
  SAY #76471 /* ~Is that supposed to be a threat? Really, I've lived the water's width away from a tanar'ri, <PRO_RACE>. Its menace is blunt and to the point, which is also blunt, while your words slither and slide.~ [OH76471] */
  IF ~~ THEN REPLY #76472 /* ~Threaten you? Never. I am a <PRO_MANWOMAN> of peace. I seek only to save the great tree and restore Resurrection Gorge to its former splendor.~ */ GOTO 29  
  IF ~~ THEN REPLY #76473 /* ~Yes, that was a threat. Give us the stone or die.~ */ GOTO 32
END

IF ~~ THEN BEGIN 27 
  SAY #76474 /* ~I don't believe you, no, I don't, not you with your boots and your ears and your twin noses.~ [OH76474] */
  IF ~~ THEN REPLY #76475 /* ~Well, you can't say I didn't try. Perhaps I'll try again later.~ */ EXIT
  IF ~~ THEN REPLY #76476 /* ~Please, Winterbrook. Without the stone, Resurrection Gorge is doomed.~ */ GOTO 30
END

IF ~~ THEN BEGIN 29 
  SAY #76482 /* ~I don't believe you. You have no gills, which I find extremely suspicious.~ [OH76482] */
  IF ~~ THEN REPLY #76483 /* ~Please, Winterbrook. Without the stone, Resurrection Gorge is doomed.~ */ GOTO 30
  IF ~~ THEN REPLY #76484 /* ~And you have no mind, which I find less than useful.~ */ EXIT
  IF ~OR(2) CheckStatLT(Player1,14,CHR) CheckStatLT(Player1,14,STR) !Global("OHD_spared_xachrimos","GLOBAL",1)~ THEN REPLY #76485 /* ~What you believe is irrelevant. We need the stone. Give it to us or your wits will become the least of the things you've lost.~ */ GOTO 49
  IF ~OR(2) CheckStatLT(Player1,12,CHR) CheckStatLT(Player1,14,STR) Global("OHD_spared_xachrimos","GLOBAL",1)~ THEN REPLY #76485 /* ~What you believe is irrelevant. We need the stone. Give it to us or your wits will become the least of the things you've lost.~ */ GOTO 63
  IF ~CheckStatGT(Player1,11,CHR)~ THEN REPLY #76485 /* ~What you believe is irrelevant. We need the stone. Give it to us or your wits will become the least of the things you've lost.~ */ GOTO 38
END

IF ~~ THEN BEGIN 30 
  SAY #76486 /* ~Resurrection Gorge lives its doom with each passing day and night and day, passing night again to day. Like that.~ [OH76486] */
  IF ~CheckStatLT(Player1,13,CHR)~ THEN REPLY #76487 /* ~It could be worse, Winterbrook. It will be worse if we don't complete the circle and restore the tree. To do that, we need the summoning stone.~ */ GOTO 36
  IF ~CheckStatGT(Player1,12,CHR)~ THEN REPLY #76487 /* ~It could be worse, Winterbrook. It will be worse if we don't complete the circle and restore the tree. To do that, we need the summoning stone.~ */ GOTO 38
  IF ~~ THEN REPLY #76488 /* ~You call this a doom? Lady, you haven't seen anything yet.~ */ GOTO 31
  IF ~CheckStatLT(Player1,15,STR)~ THEN REPLY #76489 /* ~You'll see no more days pass if you don't give us the stone.~ */ GOTO 32
  IF ~CheckStatGT(Player1,14,STR)~ THEN REPLY #76489 /* ~You'll see no more days pass if you don't give us the stone.~ */ GOTO 38
END

IF ~~ THEN BEGIN 31 
  SAY #76490 /* ~You say it could be worse, worse still than this? I don't believe you, can't believe you, don't believe, won't... believe.~ [OH76490] */
  IF ~  CheckStatLT(Player1,12,CHR)
~ THEN REPLY #76491 /* ~What's happened here is just the beginning. The Abyss's influence will spread across the world if we don't stop it now, and to do that, we need the summoning stone.~ */ GOTO 36
  IF ~  CheckStatGT(Player1,11,CHR)
~ THEN REPLY #76491 /* ~What's happened here is just the beginning. The Abyss's influence will spread across the world if we don't stop it now, and to do that, we need the summoning stone.~ */ GOTO 38
  IF ~  CheckStatGT(Player1,14,CHR)
~ THEN REPLY #76492 /* ~In my experience, there's only one certainty: Things can always get worse. Help us help you: Give us the stone.~ */ GOTO 46
  IF ~  !CheckStatGT(Player1,14,CHR)
~ THEN REPLY #76492 /* ~In my experience, there's only one certainty: Things can always get worse. Help us help you: Give us the stone.~ */ GOTO 37
  IF ~~ THEN REPLY #76493 /* ~You don't need to believe it. I'll prove it to you.~ */ GOTO 61
END

IF ~~ THEN BEGIN 32 
  SAY #76494 /* ~You'd bless me with an end to my time in this accursed place? Oh, thank you, thank you, <PRO_RACE>, I knew you'd help save me from the shadows.~ [OH76494] */
  IF ~  CheckStatLT(Player1,11,CHR)
~ THEN REPLY #76495 /* ~We will save you, Winterbrook. But to do so, we need the stone.~ */ GOTO 36
  IF ~  CheckStatGT(Player1,10,CHR)
~ THEN REPLY #76495 /* ~We will save you, Winterbrook. But to do so, we need the stone.~ */ GOTO 38
  IF ~~ THEN REPLY #76496 /* ~The saving I have in mind is a little less extreme and a lot less painful. Tell you what: Give me the stone, and let me try to restore the tree. If I fail, I promise we'll come back here afterwards and kill you.~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 
  SAY #76498 /* ~Promise?~ [OH76498] */
  IF ~~ THEN REPLY #76499 /* ~If that is your wish when I return, then yes, I promise.~ */ GOTO 46
  IF ~~ THEN REPLY #76500 /* ~This offer comes with <CHARNAME>'s personal guarantee. You can take it to the moneylender.~ */ GOTO 34
  IF ~~ THEN REPLY #76501 /* ~If we fail, I promise to return and kill you. I've half a mind to return and kill you even if we succeed.~ */ GOTO 38
END

IF ~~ THEN BEGIN 34 
  SAY #76502 /* ~Moneylender? What is that?~ [OH76502] */
  IF ~~ THEN REPLY #76503 /* ~Count yourself lucky you don't need to know. Now, the stone?~ */ GOTO 46
  IF ~~ THEN REPLY #76504 /* ~It's a bit like a mortal tanar'ri, only with less of a conscience or sense of mercy.~ */ GOTO 35
  IF ~~ THEN REPLY #76505 /* ~It's a wise man or woman. Now, give me the summoning stone.~ */ GOTO 38
END

IF ~~ THEN BEGIN 35 // from: 34.1
  SAY #76506 /* ~It sounds horrific.~ [OH76506] */
  IF ~~ THEN REPLY #76507 /* ~It is. Now I believe you were going to hand over the summoning stone?~ */ GOTO 46
END

IF ~~ THEN BEGIN 36 
  SAY #76508 /* ~It's happy where it is. It doesn't want to go back to the circle, no, it doesn't; no one, nothing does; no, I don't either. Never cross the stream, never again, not with the shadows watching.~ [OH76508] */
  IF ~~ THEN REPLY #76509 /* ~If we're to save the gorge, it must be returned to the circle.~ */ GOTO 37
  IF ~  CheckStatLT(Player1,15,CHR)
~ THEN REPLY #76510 /* ~Hey, you think I want to go back in there? No. But we don't always get what we want.~ */ GOTO 38
  IF ~  CheckStatGT(Player1,14,CHR)
~ THEN REPLY #76510 /* ~Hey, you think I want to go back in there? No. But we don't always get what we want.~ */ GOTO 46
  IF ~~ THEN REPLY #76511 /* ~What the stone wants is irrelevant—~ */ GOTO 37  
END

IF ~~ THEN BEGIN 37 
  SAY #76512 /* ~You want me to betray the stone?~ [OH76512] */
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY #76513 /* ~I want you to help me save the gorge.~ */ GOTO 44
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY #76513 /* ~I want you to help me save the gorge.~ */ GOTO 46 
  IF ~  OR(2)
CheckStatLT(Player1,15,STR)
CheckStatLT(Player1,13,CHR)
!Global("OHD_spared_xachrimos","GLOBAL",1)
~ THEN REPLY #76515 /* ~I want the stone. Hand it over, or die in this dismal hole.~ */ GOTO 49
  IF ~  OR(2)
CheckStatLT(Player1,15,STR)
CheckStatLT(Player1,13,CHR)
Global("OHD_spared_xachrimos","GLOBAL",1)
~ THEN REPLY #76515 /* ~I want the stone. Hand it over, or die in this dismal hole.~ */ GOTO 63
  IF ~  CheckStatGT(Player1,14,STR)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY #76515 /* ~I want the stone. Hand it over, or die in this dismal hole.~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 
  SAY #76519 /* ~It's behind the waterfall. But you'll never get it, no you won't no you won't.~ [OH76519] */
  IF ~  CheckStatLT(Player1,16,CHR)
~ THEN REPLY #76520 /* ~I need you to get it for us.~ */ GOTO 39
  IF ~  CheckStatGT(Player1,15,CHR)
~ THEN REPLY #76520 /* ~I need you to get it for us.~ */ GOTO 46
  IF ~~ THEN REPLY #76521 /* ~I'm afraid we need the stone, Winterbrook. If the cost is getting our hands wet, it's one we're willing to pay.~ */ GOTO 45
  IF ~  OR(2)
CheckStatLT(Player1,16,STR)
CheckStatLT(Player1,14,CHR)
!Global("OHD_spared_xachrimos","GLOBAL",1)
~ THEN REPLY #76522 /* ~I'll have that stone, nereid. Give it to me now, or worms will feast on your corpse. Actually, scratch that—wyrms will feast on your corpse. Much scarier!~ */ GOTO 49
  IF ~  OR(2)
CheckStatLT(Player1,16,STR)
CheckStatLT(Player1,14,CHR)
Global("OHD_spared_xachrimos","GLOBAL",1)
~ THEN REPLY #76522 /* ~I'll have that stone, nereid. Give it to me now, or worms will feast on your corpse. Actually, scratch that—wyrms will feast on your corpse. Much scarier!~ */ GOTO 63
  IF ~  CheckStatGT(Player1,15,STR)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY #76522 /* ~I'll have that stone, nereid. Give it to me now, or worms will feast on your corpse. Actually, scratch that—wyrms will feast on your corpse. Much scarier!~ */ GOTO 46
END

IF ~~ THEN BEGIN 39 
  SAY #76523 /* ~Why would I want to do that? I don't think I would; no, I don't, I can't, I won't, I can't.~ [OH76523] */
  IF ~  CheckStatLT(Player1,13,CHR)
~ THEN REPLY #76524 /* ~We need the stone to restore the tree and save Yarrow.~ */ GOTO 40
  IF ~  CheckStatGT(Player1,12,CHR)
~ THEN REPLY #76524 /* ~We need the stone to restore the tree and save Yarrow.~ */ GOTO 46
  IF ~~ THEN REPLY #76525 /* ~I'm sure if you gave it a little thought, you could come up with a half-dozen good reasons to give us the stone.~ */ GOTO 41
  IF ~~ THEN REPLY #76526 /* ~Let me explain why you'd want to do that. You want to live.~ */ GOTO 49
END

IF ~~ THEN BEGIN 40 
  SAY #76527 /* ~I'll not betray the stone, no, I won't. It's safe behind the water; it must stay there where it's safe.~ [OH76527] */
  IF ~  CheckStatLT(Player1,12,CHR)
~ THEN REPLY #76528 /* ~There's no place safe in the gorge, not while the circle lies incomplete. You must give us the stone, Winterbrook. Please.~ */ GOTO 42
  IF ~  CheckStatGT(Player1,11,CHR)
~ THEN REPLY #76528 /* ~There's no place safe in the gorge, not while the circle lies incomplete. You must give us the stone, Winterbrook. Please.~ */ GOTO 46
  IF ~~ THEN REPLY #76530 /* ~Then you've left me little choice.~ */ GOTO 61
END

IF ~~ THEN BEGIN 41 
  SAY #76531 /* ~Well... You claim you seek to restore the gorge. And you may have the strength to do it. You entered the gorge willingly, which would make you heroes or fools, and even a fool can be a hero in the right circumstances. And the stone knows its place is in the circle, as much as it would rather stay safe behind the waters. And your half-orc friend clearly intends to take the stone by force if necessary—I don't fear death, but he has the look of one familiar with things worse than death. And my options are limited.~ [OH76531] */
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 42 
  SAY #76532 /* ~No. The circle complete brings only doom. Vernus proved that.~ [OH76532] */
  IF ~  CheckStatLT(Player1,8,CHR)
!Global("OHD_spared_xachrimos","GLOBAL",1)
~ THEN REPLY #76533 /* ~Vernus made a mistake. We can correct it, if you'll help us. Please, give us the stone.~ */ GOTO 49
  IF ~  CheckStatLT(Player1,8,CHR)
Global("OHD_spared_xachrimos","GLOBAL",1)
~ THEN REPLY #76533 /* ~Vernus made a mistake. We can correct it, if you'll help us. Please, give us the stone.~ */ GOTO 63
  IF ~  CheckStatGT(Player1,7,CHR)
~ THEN REPLY #76533 /* ~Vernus made a mistake. We can correct it, if you'll help us. Please, give us the stone.~ */ GOTO 46
  IF ~~ THEN REPLY #76534 /* ~The circle incomplete will doom more than Resurrection Gorge. Yarrow and the tree are dying.~ */ GOTO 43
  IF ~~ THEN REPLY #76535 /* ~You think the circle brings doom? Fool! <CHARNAME>, that is who brings doom.~ */ GOTO 61
END

IF ~~ THEN BEGIN 43 
  SAY #76536 /* ~They are?~ [OH76536] */
  IF ~  CheckStatLT(Player1,12,CHR)
~ THEN REPLY #76537 /* ~I tell you they will die if we don't complete the circle.~ */ GOTO 44
  IF ~  CheckStatGT(Player1,11,CHR)
~ THEN REPLY #76537 /* ~I tell you they will die if we don't complete the circle.~ */ GOTO 46
  IF ~~ THEN REPLY #76538 /* ~Have you seen the tree recently? Big old thing, bent and twisted by malevolent magic? It's right over there, kind of hard to miss.~ */ GOTO 46
  IF ~  OR(2)
CheckStatLT(Player1,13,STR)
CheckStatLT(Player1,15,CHR)
!Global("OHD_spared_xachrimos","GLOBAL",1)
~ THEN REPLY #76539 /* ~I'll kill the bloody tree myself if you don't hand over the stones.~ */ GOTO 49
  IF ~  OR(2)
CheckStatLT(Player1,13,STR)
CheckStatLT(Player1,15,CHR)
Global("OHD_spared_xachrimos","GLOBAL",1)
~ THEN REPLY #76539 /* ~I'll kill the bloody tree myself if you don't hand over the stones.~ */ GOTO 63
  IF ~  CheckStatGT(Player1,12,STR)
CheckStatGT(Player1,14,CHR)
~ THEN REPLY #76539 /* ~I'll kill the bloody tree myself if you don't hand over the stones.~ */ GOTO 46
END

IF ~~ THEN BEGIN 44 
  SAY #76540 /* ~Your tongue lies like frost on a cold winter's morning, which is to say it's chilly and you wouldn't want to lick it, though how you'd lick your own tongue I'm not sure.~ [OH76540] */
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45 
  SAY #76544 /* ~You can try and take the stone, but the falls take fingers.~ [OH76544] */
  IF ~  CheckStatLT(Player1,14,CHR)
!Global("OHD_spared_xachrimos","GLOBAL",1)
~ THEN REPLY #76545 /* ~Then I beseech you, please, for the sake of the place you've made your home, to see it restored to its former majesty, give us the stone.~ */ GOTO 49
  IF ~  CheckStatLT(Player1,14,CHR)
Global("OHD_spared_xachrimos","GLOBAL",1)
~ THEN REPLY #76545 /* ~Then I beseech you, please, for the sake of the place you've made your home, to see it restored to its former majesty, give us the stone.~ */ GOTO 63
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY #76545 /* ~Then I beseech you, please, for the sake of the place you've made your home, to see it restored to its former majesty, give us the stone.~ */ GOTO 46
  IF ~~ THEN REPLY #76547 /* ~I'll take your life first, waterwitch!~ */ GOTO 61
  IF ~~ THEN REPLY #76548 /* ~I like my fingers where they are. If that changes, you'll see me again.~ */ EXIT
END

IF ~~ THEN BEGIN 46 
  SAY #76550 /* ~Very well, I'll get it... but you must promise, you must promise me that you'll keep it safe. ~ [OH76550] */
  IF ~~ THEN DO ~SetGlobal("OHD_winterbrook_stone","OH5200",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("ohdwston")
~ EXIT
END

IF ~Global("OHD_winterbrook_stone","OH5200",1)Global("OHD_spared_xachrimos","GLOBAL",1)~ THEN BEGIN 47 
  SAY #76551 /* ~The tanar'ri wants it, wants them all for itself.~ [OH76551] */
  IF ~~ THEN GOTO 48
END

IF ~Global("OHD_winterbrook_stone","OH5200",1)~ THEN BEGIN 48 
  SAY #76552 /* ~Promise me, <PRO_RACE>. Promise me you'll keep it safe.~ [OH76552] */
  IF ~~ THEN REPLY #76553 /* ~We'll do what we can, Winterbrook. I promise. You have my thanks for your assistance.~ */ DO ~GiveItem("OHDSUMS1",Player1)
AddJournalEntry(90339,INFO)
~ EXIT
  IF ~~ THEN REPLY #76554 /* ~It's as safe with us as anywhere in this pit of woe, I can promise you that.~ */ DO ~GiveItem("OHDSUMS1",Player1)
AddJournalEntry(90339,INFO)
~ EXIT
  IF ~~ THEN REPLY #76555 /* ~I make no promises, nereid. The stone is part of a greater game; should the need arise, I'll not hesitate to sacrifice it.~ */ DO ~GiveItem("OHDSUMS1",Player1)
AddJournalEntry(90339,INFO)
~ GOTO 65
END

IF ~~ THEN BEGIN 49 
  SAY #76556 /* ~Never! Never ever, not ever, and never again! The stone stays where it is, where it's safe, where it's happy, and that's all there is; there's nothing more.~ [OH76556] */
  IF ~~ THEN REPLY #76557 /* ~Please, Winterbrook. Be reasonable.~ */ GOTO 54  
  IF ~~ THEN REPLY #76558 /* ~If it's truly in a safe place, can I join it? The gorge has left me feeling exposed.~ */ GOTO 54
  IF ~~ THEN REPLY #76559 /* ~Then pay the price for your intransigence.~ */ GOTO 61
END

IF ~~ THEN BEGIN 54 
  SAY #76594 /* ~Did you really, I mean really, really think that ruse would get you to the stone?~ [OH76594] */
  IF ~~ THEN REPLY #76595 /* ~Of course not. 'Twas but a joke.~ */ GOTO 59    
  IF ~  CheckStatLT(Player1,14,CHR)~ THEN REPLY #76596 /* ~No ruse—if there's a safe place to be found in this hole, I'd be a fool not to want to be in it.~ */ GOTO 59
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY #76596 /* ~No ruse—if there's a safe place to be found in this hole, I'd be a fool not to want to be in it.~ */ GOTO 55
END

IF ~~ THEN BEGIN 55 
  SAY #76598 /* ~What you say makes sense; it does!~ [OH76598] */
  IF ~~ THEN REPLY #76599 /* ~I'm glad you think so.~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 
  SAY #76600 /* ~But there's no safe place for you in the gorge, not here in the shadows or behind the water.~ [OH76600] */
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY #76601 /* ~I hate to tell you this, Winterbrook, but there's no safe place for anything in the gorge, and there never will be until the great tree is restored. ~ */ GOTO 58
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY #76601 /* ~I hate to tell you this, Winterbrook, but there's no safe place for anything in the gorge, and there never will be until the great tree is restored. ~ */ GOTO 46
  IF ~~ THEN REPLY #76602 /* ~Then I'll have to get out of the gorge. Which means I need the stone.~ */ GOTO 57
  IF ~~ THEN REPLY #76603 /* ~Curse you, nereid! Give me the stone or I will take it.~ */ GOTO 61
END

IF ~~ THEN BEGIN 57 
  SAY #76604 /* ~Then you've got a problem, yes, you do, for the stone stays where it's safe behind the water.~ [OH76604] */
  IF ~~ THEN REPLY #76605 /* ~I don't want to hurt you, Winterbrook.~ */ GOTO 62  
  IF ~~ THEN REPLY #76606 /* ~There is no safe place for the stone. We will have it. Nothing can stop us.~ */ GOTO 61
END

IF ~~ THEN BEGIN 58 
  SAY #76607 /* ~And I'm supposed to believe you are the one who will do the restoring?~ [OH76607] */
  IF ~~ THEN REPLY #76608 /* ~With your help, I will.~ */ GOTO 57
END

IF ~~ THEN BEGIN 59 
  SAY #76611 /* ~A joke...? I don't get it.~ [OH76611] */
  IF ~~ THEN REPLY #76612 /* ~No great loss. It wasn't a very good joke.~ */ GOTO 60
END

IF ~~ THEN BEGIN 60 
  SAY #76613 /* ~And the part about wanting the summoning stones? Was that a joke too?~ [OH76613] */
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN GOTO 57
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN GOTO 46
END

IF ~~ THEN BEGIN 61
  SAY #76617 /* ~Oh, you don't want to do that. The stream will have your toes, you'll see, and then you'll be sorry—you'll be sorry—~ [OH76617] */
  IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 62 
  SAY #76619 /* ~I'll make you sorry, you'll see!~ [OH76619] */
  IF ~~ THEN DO ~SetGlobal("OHD_WINTERB_HOSTILE","OH5200",1)
~ EXIT
END

IF ~~ THEN BEGIN 63 
  SAY #76620 /* ~No! You let the demon go, I know; I can smell its stench! No water can remove that stink—there's not enough water in the world to cleanse you.~ [OH76620] */
  IF ~  CheckStatLT(Player1,16,CHR)
~ THEN REPLY #76621 /* ~The deal we struck with the demon will see him leave you in peace, once we complete the circle. Will you help us?~ */ GOTO 64
  IF ~  CheckStatGT(Player1,15,CHR)
~ THEN REPLY #76621 /* ~The deal we struck with the demon will see him leave you in peace, once we complete the circle. Will you help us?~ */ GOTO 46
  IF ~~ THEN REPLY #76623 /* ~The tanar'ri gave us what we needed. You will do the same.~ */ GOTO 61
END

IF ~~ THEN BEGIN 64 
  SAY #76624 /* ~The glitter take your lying hides! You helped the tanar'ri; I'll not help you, no, I won't, I won't!~ [OH76624] */
  IF ~~ THEN REPLY #76626 /* ~Then pay the price for your intransigence.~ */ GOTO 61
END

IF ~~ THEN BEGIN 65 
  SAY #76627 /* ~All right, all right, take the stone; take it and be off with you! You foul the air with your presence; any longer and you'll dirty my water, my glittering water.~ [OH76627] */
  IF ~~ THEN EXIT
END

IF ~  PartyHasItem("OHDSUMS1")
!Global("OHD_winterbrook_stone","OH5200",1)
~ THEN BEGIN 66 // from:
  SAY #99913 /* ~You! You stained it! My glitter no longer shines BECAUSE OF YOU!~ */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END
