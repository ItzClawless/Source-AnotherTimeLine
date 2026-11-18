local windowX = 0;
local windowY = 0;

function windowShake()
    windowX = getPropertyFromClass('openfl.Lib', 'application.window.x')
    windowY = getPropertyFromClass('openfl.Lib', 'application.window.y')
    setPropertyFromClass('openfl.Lib','application.window.x', math.random(-15,15))
    setPropertyFromClass('openfl.Lib','application.window.y', math.random(-20,20))
end

function moveOpponentStrum(newnotePosX, duration)
    
    noteX0 = getPropertyFromGroup('strumLineNotes', 0, 'x')
    noteX1 = getPropertyFromGroup('strumLineNotes', 1, 'x')
    noteX2 = getPropertyFromGroup('strumLineNotes', 2, 'x')
    noteX3 = getPropertyFromGroup('strumLineNotes', 3, 'x') 

    noteTweenX('x0', 0, noteX0 + newnotePosX, duration, 'circOut')
    noteTweenX('x1', 1, noteX1 + newnotePosX, duration, 'circOut')
    noteTweenX('x2', 2, noteX2 + newnotePosX, duration, 'circOut')
    noteTweenX('x3', 3, noteX3 + newnotePosX, duration, 'circOut')
end

function movePlayerStrum(newnotePosXP, newDuration)
    
    noteX4 = getPropertyFromGroup('strumLineNotes', 4, 'x')
    noteX5 = getPropertyFromGroup('strumLineNotes', 5, 'x')
    noteX6 = getPropertyFromGroup('strumLineNotes', 6, 'x')
    noteX7 = getPropertyFromGroup('strumLineNotes', 7, 'x') 

    noteTweenX('x4', 4, noteX4 + newnotePosXP, newDuration, 'circOut')
    noteTweenX('x5', 5, noteX5 + newnotePosXP, newDuration, 'circOut')
    noteTweenX('x6', 6, noteX6 + newnotePosXP, newDuration, 'circOut')
    noteTweenX('x7', 7, noteX7 + newnotePosXP, newDuration, 'circOut')
end

function onCreatePost()
    setProperty('gf.visible', false)
    addChromaticAbberationEffect('camHud', 0.001, 0.001)
    addChromaticAbberationEffect('stage', 0.0008, 0.0008)
    -- addVCREffect('camGame', 10.01)
    -- addGlitchEffect('stage', 0.1, 100.01)
	addLuaScript('epicScripts/infishake')
	-- addLuaScript('epicScripts/cam')
    triggerEvent('Toggle Trail', 1, '')
end

function onCreate()
    makeLuaSprite('testSquare', 'stageback', -600, -300)
    setProperty('testSquare.color', '000000')
    setProperty('testSquare.alpha', 0)
end

function onUpdate(elapsed)
    if not epilepsySafeMode then
        -- windowShake()
    end
    if curStep > 128 then
        songPos = getSongPosition()
        local currentBeat = (songPos/1000)*(curBpm/60)
        noteTweenY('defaultPlayerStrumY0', 4, defaultPlayerStrumY0 - 140*math.cos((currentBeat+4*0.25)*math.pi), 0.5)
        noteTweenY('defaultPlayerStrumY1', 5, defaultPlayerStrumY1 - 140*math.cos((currentBeat+5*0.25)*math.pi), 0.5)
        noteTweenY('defaultPlayerStrumY2', 6, defaultPlayerStrumY2 - 140*math.cos((currentBeat+6*0.25)*math.pi), 0.5)
        noteTweenY('defaultPlayerStrumY3', 7, defaultPlayerStrumY3 - 140*math.cos((currentBeat+7*0.25)*math.pi), 0.5)
    
        noteTweenX(defaultPlayerStrumX0, 4, defaultPlayerStrumX0 - 140*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
        noteTweenX(defaultPlayerStrumX1, 5, defaultPlayerStrumX1 - 140*math.sin((currentBeat+5*0.25)*math.pi), 0.5)
        noteTweenX(defaultPlayerStrumX2, 6, defaultPlayerStrumX2 - 140*math.sin((currentBeat+6*0.25)*math.pi), 0.5)
        noteTweenX(defaultPlayerStrumX3, 7, defaultPlayerStrumX3 - 140*math.sin((currentBeat+7*0.25)*math.pi), 0.5)
    
        --Opponent Notes
    
        noteTweenX(defaultOpponentStrumX0, 0, defaultOpponentStrumX0 - 140*math.sin((currentBeat+0*0.25)*math.pi), 0.5)
        noteTweenX(defaultOpponentStrumX1, 1, defaultOpponentStrumX1 - 140*math.sin((currentBeat+1*0.25)*math.pi), 0.5)
        noteTweenX(defaultOpponentStrumX2, 2, defaultOpponentStrumX2 - 140*math.sin((currentBeat+2*0.25)*math.pi), 0.5)
        noteTweenX(defaultOpponentStrumX3, 3, defaultOpponentStrumX3 - 140*math.sin((currentBeat+3*0.25)*math.pi), 0.5)
        --Opponent Notes
        
        noteTweenY('defaultOpponentStrumY0', 0, defaultOpponentStrumY0 - 140*math.cos((currentBeat+0*0.25)*math.pi), 0.5)
        noteTweenY('defaultOpponentStrumY1', 1, defaultOpponentStrumY1 - 140*math.cos((currentBeat+1*0.25)*math.pi), 0.5)
        noteTweenY('defaultOpponentStrumY2', 2, defaultOpponentStrumY2 - 140*math.cos((currentBeat+2*0.25)*math.pi), 0.5)
        noteTweenY('defaultOpponentStrumY3', 3, defaultOpponentStrumY3 - 140*math.cos((currentBeat+3*0.25)*math.pi), 0.5)
    end

end

function onBeatHit() -- do nothing

end

function onStepHit() -- do nothing
    if curStep == 1 then
        movePlayerStrum(-639, 1)
        moveOpponentStrum(639, 1)
    end
    if curStep == 640 then
        setProperty('defaultCamZoom', 1.6)
        addLuaSprite('testSquare', false)
        doTweenAlpha('squareIn', 'testSquare', 0.8, 0.7, 'cubeIn')
        doTweenAlpha('square', 'dad', 0, 0.7, 'cubeIn')
        -- triggerEvent('Toggle Trail', 0, '')
    elseif curStep == 768 then
        setProperty('defaultCamZoom', 0.9)
        doTweenAlpha('squareOut', 'testSquare', 0, 0.7, 'cubeOut')
        doTweenAlpha('squareoop', 'dad', 1, 0.0001, 'cubeOut')
        -- triggerEvent('Toggle Trail', 1, '')
    end
end

function onTweenCompleted(tag)
    if tag == 'squareOut' then
        removeLuaSprite('testSquare')
    end
end

function onMoveCamera(focus)
    if focus == 'boyfriend' and not camlock then
		-- doTweenZoom('camGame', 'camGame', 1,(crochet * 4) / 1000, 'sineOut')
        -- setProperty('defaultCamZoom', 0.9)
	end
    if focus == 'dad' and not camlock then
		-- doTweenZoom('camGames', 'camGame', 1.3,(crochet * 4) / 1000, 'sineIn')
        -- setProperty('defaultCamZoom', 1.3)
	end
end