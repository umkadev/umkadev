local function calculateFriction(previousVelocity : Vector3, deltaTime : number)
	local currentSpeed = previousVelocity.Magnitude

	if currentSpeed ~= 0 then
		local speedDrop = currentSpeed * FRICTION * deltaTime
		previousVelocity *= math.max(currentSpeed - speedDrop, 0) / currentSpeed
	end

	return previousVelocity
end
