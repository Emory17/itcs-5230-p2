/// @description Insert description here
// You can write your code in this editor
if(instance_exists(objPlayer) and canShoot == true)
{
	
	if(distance_to_object(objPlayer) < attackRange)
	{
		canShoot = false
		alarm[1]= shotFrequency
		instance_create_layer(x, y, "Instances", protectileSpawn)
	
	}
	if(canHeal = true)
	{
		canHeal = false
		alarm[2] = 180
		
		for(var i = 0; i < instance_count; i++)
		{
			if(instance_id[i].object_index == objBat or instance_id[i].object_index == objDarkCleric or 
			   instance_id[i].object_index == objEnt or instance_id[i].object_index == objGhost or 
			   instance_id[i].object_index == objGolem or instance_id[i].object_index == objReaper or 
			   instance_id[i].object_index == objSkeleton or instance_id[i].object_index == objSkeletonVanguard or 
			   instance_id[i].object_index == objVampire or instance_id[i].object_index == objWarlock or 
			   instance_id[i].object_index == objWerewolf or instance_id[i].object_index == objZombie)
			   {
				   var enemyUnit = object_get_name(instance_id[i].object_index)
				   enemyUnit.totalHealth += healAmount
			   }
		}
	}
}
alarm[0] = 180

if(knockedBack)
{
	x += (dcos(hitAngle) * (knockbackPerTick))
	y += -(dsin(hitAngle) * (knockbackPerTick))
}