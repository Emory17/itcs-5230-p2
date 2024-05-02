if(room = CutsceneRoom)
{
	timeline_index = opening
	timeline_position = 0;
	timeline_running = true;
}

if(room = CutsceneRoom2)
{
	timeline_index = casleIntro
	timeline_position = 0;
	timeline_running = true;
	audio_play_sound(lesserforest, 1, false)
}

