if(rage < 50)
	rage--
else if(rage >= 50 && rage < 100)
	rage -= 2
else
	rage -= 3
alarm[5] = rageDecayRate