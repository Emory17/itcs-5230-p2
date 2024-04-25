/// @description Insert description here
// You can write your code in this editor
if room == TitleScreen 
{
setSongInGame(title_screen, 0, 10);
}

if room == CutsceneRoom
|| room == ForestLevel1
|| room == ForestLevel2

{
setSongInGame(lesserforest, 20, 20);
}


if room == ForestLevel3
|| room == ForestLevel4
|| room == ForestLevel5

{
setSongInGame(forestcombat, 20, 10);
}

if room == CastleLevel1
|| room == CastleLevel2
||room == CastleLevel3
{
setSongInGame(castle, 20, 20);
}