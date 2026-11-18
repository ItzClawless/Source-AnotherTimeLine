function onCreate()
	makeLuaSprite('black', 'blackinfernum', - 640, - 320)
	addLuaSprite('black', false)
	setObjectCamera('black', 'hud')
end

function onStepHit()
	if curStep == 544 then
		removeLuaSprite('black', false)
    end
	if curStep == 2080 then
		addLuaSprite('black')
    end
	if curStep == 2352 then
		removeLuaSprite('black')
    end
end