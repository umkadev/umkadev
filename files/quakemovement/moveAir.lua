local function moveAir(accelerateDirection : Vector3, previousVelocity : Vector3, deltaTime : number)
	return calculateAcceleration(accelerateDirection , previousVelocity, AIR_ACCELERATE, MAX_VELOCITY_AIR, deltaTime)
end
