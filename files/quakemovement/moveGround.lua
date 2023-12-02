local function moveGround(accelerateDirection : Vector3, previousVelocity : Vector3, deltaTime : number)
	local newVelocity = calculateFriction(previousVelocity, deltaTime)

	return calculateAcceleration(accelerateDirection, newVelocity, GROUND_ACCELERATE, MAX_VELOCITY_GROUND, deltaTime)
end
