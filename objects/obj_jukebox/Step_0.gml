var _finalVol = global.musicVolume*global.masterVolume
/// @description Insert description here
// You can write your code in this editor


if songAsset != targetSongAsset
{
	// fade out the old song
	if audio_is_playing(songInstance) 
	{
	array_push(fadeOutInst, songInstance);
	//add the songInstance starting volume
	array_push(fadeOutInstVol, fadeInInstVol);
	// fade frames
	array_push(fadeOutInstTime, endFadeOutTime);
	
	//reset songInstance
	songInstance = noone;
	songAsset = noone;
	}

//play song if the old has faded
if array_length(fadeOutInst) == 0
{
	if audio_exists(targetSongAsset)
	{
	songInstance = audio_play_sound(targetSongAsset, 4, true)

	audio_sound_gain(songInstance, 0, 0);
	fadeInInstVol = 0;
	}
	// set songasset to match target
	songAsset = targetSongAsset;

	}
}
//Volume Control
	// Main Song volume
	if audio_is_playing(songInstance)
	{
		// Fade in
		if startFadeInTime > 0
		{
			if fadeInInstVol < 1 { fadeInInstVol += 1/startFadeInTime } else fadeInInstVol = 1;
		}
		else { 
			fadeInInstVol = 1;
			}
			//set gain
			audio_sound_gain(songInstance, fadeInInstVol*global.musicVolume, 0);
	}
	
	//fade out
	
	for(var i = 0; i < array_length(fadeOutInst); i++)
	{
	//fade vol
	if fadeOutInstTime[i] > 0
	{ 
		if fadeOutInstVol[i] > 0 {fadeOutInstVol[i] -= 1/fadeOutInstTime[i]; };
	}
	// immediately cut volume to 0 otherwise
	else 
	{
	fadeInInstVol[i] = 0;
	}
		//actually set gain
		audio_sound_gain(fadeOutInst[i], fadeOutInstVol[i]* _finalVol, 0 );
		// stop when vol is 0 and remove it from all arrays
		if fadeInInstVol[i] <= 0
		{
		if audio_is_playing(fadeOutInst[i] ) {audio_stop_sound( fadeOutInst[i] ); };
		//remove from arrays
		array_delete(fadeOutInst, i, 1);
		array_delete(fadeOutInstVol, i, 1);
		array_delete(fadeOutInstTime, i, 1);
		i--;
		}
	
	}