local function calculateAcceleration(accelerateDirection : Vector3, previousVelocity : Vector3, accelerateSpeed : number, maxVelocity : number, deltaTime : number)
	local projectedVelocity = previousVelocity:Dot(accelerateDirection)
	local addedSpeed = RUN_SPEED - projectedVelocity
	local newSpeed = math.max(math.min(addedSpeed, maxVelocity * deltaTime), 0)

	--[[if projectedVelocity + acceleratedVelocity > maxVelocity then
		acceleratedVelocity = maxVelocity - projectedVelocity
	end

	--print(previousVelocity, characterHumanoidRootPart.AssemblyLinearVelocity)]]
	return previousVelocity + accelerateDirection * addedSpeed
end
