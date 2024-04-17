function damagePlayer(damage){
	if(!objPlayer.invincible){
		objPlayer.invincible = true
		objPlayer.alarm[0] = objPlayer.iframes
		//audio_play_sound(playerHit,1,false);
		objPlayer.totalHealth -= damage
		
		instance_create_depth(objPlayer.x,objPlayer.y,-3,objDamageNumber, 
		{damagePopUp: damage,
		 player: true
		})
		
		if(objPlayer.totalHealth <= 0){
			instance_destroy(objPlayer)
		}
	}
}