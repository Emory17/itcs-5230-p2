function damagePlayer(damage){
	if(!objPlayer.invincible){
		objPlayer.invincible = true
		objPlayer.alarm[0] = objPlayer.iframes
		//audio_play_sound(playerHit,1,false);
		objPlayer.totalHealth -= damage
		if(objPlayer.totalHealth <= 0){
			instance_destroy(objPlayer)
		}
	}
}