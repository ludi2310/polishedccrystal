const_value set 2
	const GIOVANNISCAVE_CELEBI
	const GIOVANNISCAVE_LYRA
	const GIOVANNISCAVE_GIOVANNI
	const GIOVANNISCAVE_ROCK1
	const GIOVANNISCAVE_ROCK2

GiovannisCave_MapScriptHeader:
.MapTriggers:
	db 1

	; triggers
	maptrigger .Trigger0

.MapCallbacks:
	db 0

.Trigger0:
	priorityjump GiovannisCaveCelebiEventScript
	end

GiovannisCaveCelebiEventScript:
	pause 30
	spriteface PLAYER, UP
	spriteface GIOVANNISCAVE_LYRA, UP
	showemote EMOTE_SHOCK, GIOVANNISCAVE_GIOVANNI, 15
	spriteface GIOVANNISCAVE_GIOVANNI, DOWN
	opentext
	writetext GiovannisCaveGiovanniIntroText
	waitbutton
	closetext
	applymovement GIOVANNISCAVE_GIOVANNI, GiovannisCave_GiovanniStepsDownMovementData
	opentext
	writetext GiovannisCaveGiovanniMemoriesText
	waitbutton
	closetext
	spriteface GIOVANNISCAVE_LYRA, RIGHT
	opentext
	writetext GiovannisCaveLyraQuestionsText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, GIOVANNISCAVE_LYRA, 15
	opentext
	writetext GiovannisCaveLyraRecognizesGiovanniText
	waitbutton
	closetext
	playmusic MUSIC_ROCKET_OVERTURE
	spriteface GIOVANNISCAVE_LYRA, UP
	spriteface GIOVANNISCAVE_GIOVANNI, UP
	opentext
	writetext GiovannisCaveRadioText
	waitbutton
	closetext
	spriteface GIOVANNISCAVE_GIOVANNI, DOWN
	opentext
	writetext GiovannisCaveGiovanniIMustGoText
	waitbutton
	closetext
	winlosstext GiovannisCaveGiovanniBeatenText, 0
	setlasttalked GIOVANNISCAVE_GIOVANNI
	loadtrainer GIOVANNI, 1
	startbattle
	reloadmapafterbattle
	applymovement GIOVANNISCAVE_GIOVANNI, GiovannisCave_GiovanniStepsBackMovementData
	opentext
	writetext GiovannisCaveGiovanniAfterText
	waitbutton
	closetext
	applymovement GIOVANNISCAVE_GIOVANNI, GiovannisCave_GiovanniLeavesMovementData
	playsound SFX_ENTER_DOOR
	disappear GIOVANNISCAVE_GIOVANNI
	waitsfx
	spriteface PLAYER, DOWN
	spriteface GIOVANNISCAVE_LYRA, DOWN
	opentext
	writetext GiovannisCaveRadioAfterText
	waitbutton
	closetext
	applymovement GIOVANNISCAVE_LYRA, GiovannisCave_LyraStepsDownMovementData
	opentext
	writetext GiovannisCaveLyraFeelsSorryText
	waitbutton
	closetext
	playsound SFX_GAME_FREAK_LOGO_GS
	special FadeOutPalettes
	pause 30
	special FadeInPalettes
	waitsfx
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, GiovannisCave_PlayerStepsAsideMovementData
	applymovement GIOVANNISCAVE_LYRA, GiovannisCave_LyraLooksAroundMovementData
	opentext
	writetext GiovannisCaveLyraWantsToLeaveText
	waitbutton
	closetext
	playsound SFX_PROTECT
	applymovement GIOVANNISCAVE_CELEBI, GiovannisCave_CelebiFloatsMovementData
	waitsfx
	playsound SFX_GAME_FREAK_LOGO_GS
	special FadeOutPalettes
	pause 30
	waitsfx
;	warp CINNABAR_LAB, ?, ?
	end

GiovannisCave_GiovanniStepsDownMovementData:
GiovannisCave_LyraStepsDownMovementData:
	slow_step_down
	step_end

GiovannisCave_GiovanniStepsBackMovementData:
	turn_head_down
	fix_facing
	slow_step_up
	remove_fixed_facing
	slow_step_right
	step_end

GiovannisCave_GiovanniLeavesMovementData:
	step_down
	step_down
	step_down
	step_down
	step_left
	turn_head_down
	step_end

GiovannisCave_PlayerStepsAsideMovementData:
	turn_head_left
	fix_facing
	slow_step_right
	remove_fixed_facing
	step_end

GiovannisCave_LyraLooksAroundMovementData:
	turn_head_left
	step_sleep_8
	step_sleep_8
	step_sleep_8
	turn_head_right
	step_end

GiovannisCave_CelebiFloatsMovementData:
	turn_head_down
	fix_facing
	slow_step_up
	slow_step_up
	slow_step_up
	remove_fixed_facing
	step_end

GiovannisCaveGiovanniIntroText:
	text "…"

	para "I don't know why"
	line "you came here,"

	para "but I have to warn"
	line "you that this is"
	cont "no place for kids"
	cont "like you."

	para "Lyra: Huh? That's"
	line "the guy we just"

	para "saw arguing with"
	line "that boy!"
	done

GiovannisCaveGiovanniMemoriesText:
	text "You have a certain"
	line "look…"

	para "I remember you!"

	para "That kid three"
	line "years ago kept"
	cont "ruining our plans,"

	para "but you caused all"
	line "our problems in"
	cont "the first place!"

	para "…"

	para "I'm on my way to"
	line "Goldenrod City to"

	para "answer the call"
	line "and join my team."

	para "Are you going to"
	line "get in my way"
	cont "again?"
	done

GiovannisCaveLyraQuestionsText:
	text "Lyra: Three years"
	line "ago…? Goldenrod"
	cont "City…?"
	done

GiovannisCaveLyraRecognizesGiovanniText:
	text "This is who Team"
	line "Rocket was trying"
	cont "to reach!"

	para "Their boss,"
	line "Giovanni!"

	para "<PLAYER>, when did"
	line "you meet Giovanni"
	cont "before…?"
	done

GiovannisCaveRadioText:
	text "<``>… …Ahem, we are"
	line "Team Rocket!"
	cont "After three years"
	cont "of preparation, we"
	cont "have risen again"
	cont "from the ashes!"
	cont "Giovanni! Can you"
	cont "hear? We did it!"
	cont "Where is our boss?"
	cont "Is he listening?<''>"

	para "Lyra: Team Rocket"
	line "has occupied the"

	para "Radio Tower right"
	line "now…"

	para "You're there, but"
	line "you're also here…"
	done

GiovannisCaveGiovanniIMustGoText:
	text "Giovanni: My old"
	line "associates need"
	cont "me…"

	para "We will not repeat"
	line "the failure of"
	cont "three years ago!"

	para "Team Rocket will"
	line "be born again!"

	para "Lyra: Hah!"
	line "<PLAYER> already"
	cont "stopped you!"
	cont "…Will stop you."

	para "Will have stopped"
	line "you…?"

	para "…Traveling through"
	line "time is confusing!"

	para "Giovanni: Enough"
	line "chatter! Get out"
	cont "of my way!"
	done

GiovannisCaveGiovanniBeatenText:
	text "What in the world"
	line "are you?"
	done

GiovannisCaveGiovanniAfterText:
	text "Giovanni: How is"
	line "this possible…?"

	para "The past three"
	line "years have been"
	cont "a waste…?"

	para "How can a kid like"
	line "you manage to"

	para "destroy my dream"
	line "once again?"
	done

GiovannisCaveRadioAfterText:
	text "<``>… …Hey! Where has"
	line "Giovanni gone?"
	cont "I wonder if he is"
	cont "listening to our"
	cont "broadcast… …<''>"
	done

GiovannisCaveLyraFeelsSorryText:
	text "Lyra: They keep"
	line "calling for their"
	cont "boss."

	para "I feel sorry they"
	line "don't know he's not"
	cont "coming."

	para "But right now,"
	line "<PLAYER>, you must"
	cont "be defeating them!"
	done

GiovannisCaveLyraWantsToLeaveText:
	text "Lyra: Not again…!"
	line "I've had enough!"

	para "Please let us go"
	line "back to our time!"
	done

GiovannisCave_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 0

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 5
	person_event SPRITE_CELEBI, 6, 5, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	person_event SPRITE_LYRA, 5, 4, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	person_event SPRITE_GIOVANNI, 3, 5, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_GIOVANNIS_CAVE_GIOVANNI
	person_event SPRITE_ROCK, 6, 3, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	person_event SPRITE_ROCK, 2, 6, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
