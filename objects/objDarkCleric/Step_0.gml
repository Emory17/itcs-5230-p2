/// @description Insert description here
// You can write your code in this editor
if(instance_exists(objPlayer) and canShoot == true)
{
	
	if(distance_to_object(objPlayer) < attackRange)
	{
		if(!frozen)
		{
			shockwaveFrames = 0
			instance_create_layer(x, y, "Instances", objShockwave,
			{
			attachedToEnemy : self.id
			})
		}
		canShoot = false
		alarm[1] = shotFrequency
		alarm[3] = persistTime
		
		
	
	}
	if(canHeal = true)
	{
		canHeal = false
		alarm[0] = 60
		alarm[2] = 180
		alarm[4]= 1
		if(!frozen)
		{
			audio_play_sound(ClericHeal, 1, false)
			instance_create_layer(x, y, "Instances", objHealDiameter,
			{
				attachedToCorrectEnemy : self.id
			})
		}
	}
}

visualHealDecay--

shockwaveFrames += .5

if(shockwaveFrames = 5)
	audio_play_sound(clericshockwave, 1, false)

if(knockedBack)
{
	x += (dcos(hitAngle) * (knockbackPerTick))
	y += -(dsin(hitAngle) * (knockbackPerTick))
}

/*
for(var i = 0; i < instance_count; i++)
		{
			if(instance_id[i].object_index == objBat or  instance_id[i].object_index == objEnt or 
			   instance_id[i].object_index == objGhost or instance_id[i].object_index == objGolem or 
			   instance_id[i].object_index == objReaper or instance_id[i].object_index == objSkeleton or 
			   instance_id[i].object_index == objSkeletonVanguard or instance_id[i].object_index == objVampire or 
			   instance_id[i].object_index == objWarlock or instance_id[i].object_index == objWerewolf or 
			   instance_id[i].object_index == objZombie)
			{
				
				show_debug_message(object_get_name(instance_id[i].object_index))
				show_debug_message(instance_id[i].totalHealth)
				
				if(point_distance(x, y, instance_id[i].x, instance_id[i].y) <= enemyVision)
				{
					if(instance_id[i].totalHealth + healAmount > instance_id[i].maxHealth)
					{
						instance_id[i].totalHealth = instance_id[i].maxHealth
					}
					else
					{
						instance_id[i].totalHealth += healAmount
					}
					show_debug_message(instance_id[i].totalHealth)
				}
				
			}
			else
			{}
			
		}
		show_debug_message(currentEnemies)
		var totalEnemies = array_length(currentEnemies)
		for(var j = 0; j < totalEnemies; j++)
		{
			show_debug_message(object_get_name(currentEnemies[j]))
		}
		for(var j = 0; j < totalEnemies; j++)
		{
			if(instance_exists(currentEnemies[j]))
			{
				if(distance_to_object(currentEnemies[j]) <= enemyVision)
				{
					if(instance_id[j].totalHealth + healAmount > instance_id[j].maxHealth)
					{
						instance_id[j].totalHealth = instance_id[j].maxHealth
					}
					else
					{
						instance_id[j].totalHealth += healAmount
					}
				}
			}
		}*/