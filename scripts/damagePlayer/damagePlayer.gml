function damagePlayer(damage){
	if(!objPlayer.invincible){
		objPlayer.invincible = true
		damage = round(damage)
		objPlayer.alarm[0] = objPlayer.iframes
		audio_play_sound(playerTakeDamage,1,false);
		objPlayer.totalHealth -= damage
		
		instance_create_depth(objPlayer.x,objPlayer.y,-3,objDamageNumber, 
		{damagePopUp: damage,
		 player: true
		})
		
		if(objPlayer.totalHealth <= 0){
			instance_destroy(objPlayer)
			audio_play_sound(necrolichLaugh, 1, false)
		}
	}
}