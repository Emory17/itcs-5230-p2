/// @description Insert description here
// You can write your code in this editor
if room == TitleScreen 
{
setSongInGame(title_screen, 0, 10);
}

if(room == CutsceneRoom || room == PowerUpScreen || room == CutsceneRoom2)
	setSongInGame(lesserforest, 20, 20);


if (room == ForestLevel3 || room == ForestLevel1 || room = ForestLevel2 ||
	room == ForestLevel4 || room == ForestLevel5)
	setSongInGame(forestcombat, 20, 10);


if (room == CastleLevel1 || room == CastleLevel2 || room == CastleLevel3 || room == CastleLevel4 || room == CastleLevel5)
	setSongInGame(castle, 20, 20);

if room == WinScreen {
setSongInGame(victory, 20, 20);
}

if room == LoseScreen {
setSongInGame(gameover, 20, 20);
}

if room == BossLevel {
setSongInGame(boss, 20, 20);
}