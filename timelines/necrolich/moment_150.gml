//Teleport Randomly

rangle = irandom(359)

objNecrolich.x = 540 + (dcos(rangle) * 300)
objNecrolich.y = 540 - (dsin(rangle) * 300)

audio_play_sound(warlockTeleport, 1, false)