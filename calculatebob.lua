local function calculateBob(funcName : string, bobSpeed : number, bobModifier : number)
	return math[funcName](os.clock() * bobSpeed) / bobModifier
end
