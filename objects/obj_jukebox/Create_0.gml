/// @description Insert description here
// You can write your code in this editor
// global volume control

// global volume control
global.masterVolume = 1;
global.musicVolume = 1;
// info for song we're playing

songInstance = noone;
songAsset = noone;
targetSongAsset = noone;
endFadeOutTime = 0; //how long to fade song out
startFadeInTime = 120; //how long to fade in new song
fadeInInstVol = 1

//stopping music that is not playing

fadeOutInst = array_create(0); //audio instances to fade out
fadeOutInstVol = array_create(0); //volumes of each individual audio instance
fadeOutInstTime = array_create(0); //how fast the fadeout should happen

//_______________

songInstance = title_screen;
audio_play_sound(songInstance, 1, true);