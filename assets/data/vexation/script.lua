function onCreate()
    makeLuaSprite('dodge','dodge', 30, 555)
    makeLuaSprite('white', 'white', - 640, - 320)
    makeLuaSprite('thefunnyeffectOLD', 0, 0)

    addLuaSprite('insanity75')
    addLuaSprite('dodge')

    doTweenAlpha('white', 0, 0.1, linear)
    doTweenAlpha('thefunnyeffectOLD', 0, 0.1, linear)


    setObjectCamera('dodge', 'hud')
    setObjectCamera('thefunnyeffectOLD', 'camOther')

    setPropertyFromClass('GameOverSubstate', 'characterName', 'Bf GAMEOVER'); --Character json file for the death animation
    setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
	  setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver'); --put in mods/music/
    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); --put in mods/music/
end

function onUpdate(elapsed)
    songPos = getSongPosition()    
    local currentBeat = (songPos/1000)*(curBpm/60)
    local currentBeat2 = (songPos/500)*(curBpm/60)
    noteTweenY('defaultPlayerStrumY4', 4, defaultPlayerStrumY0 + 50 * math.sin((currentBeat+4 *0.25) * math.pi), 0.1)
    noteTweenY('defaultPlayerStrumY5', 5, defaultPlayerStrumY1 + 50 * math.sin((currentBeat+5 *0.25) * math.pi), 0.1)
    noteTweenY('defaultPlayerStrumY6', 6, defaultPlayerStrumY2 + 50 * math.sin((currentBeat+6 *0.25) * math.pi), 0.1)
    noteTweenY('defaultPlayerStrumY7', 7, defaultPlayerStrumY3 + 50 * math.sin((currentBeat+7 *0.25) * math.pi), 0.1)
    noteTweenX('defaultPlayerStrumX4', 4, defaultPlayerStrumX0 + 50 * math.sin((currentBeat+2 *0.25) * math.pi), 0.1)
    noteTweenX('defaultPlayerStrumX5', 5, defaultPlayerStrumX1 + 50 * math.sin((currentBeat+3 *0.25) * math.pi), 0.1)
    noteTweenX('defaultPlayerStrumX6', 6, defaultPlayerStrumX2 + 50 * math.sin((currentBeat+4 *0.25) * math.pi), 0.1)
    noteTweenX('defaultPlayerStrumX7', 7, defaultPlayerStrumX3 + 50 * math.sin((currentBeat+5 *0.25) * math.pi), 0.1)

  	noteTweenY('defaultOpponentStrumY4', 0, defaultOpponentStrumY0 + 50 * math.sin((currentBeat+4 *0.25) * math.pi), 0.1)
    noteTweenY('defaultOpponentStrumY5', 1, defaultOpponentStrumY1 + 50 * math.sin((currentBeat+5 *0.25) * math.pi), 0.1)
    noteTweenY('defaultOpponentStrumY6', 2, defaultOpponentStrumY2 + 50 * math.sin((currentBeat+6 *0.25) * math.pi), 0.1)
    noteTweenY('defaultOpponentStrumY7', 3, defaultOpponentStrumY3 + 50 * math.sin((currentBeat+7 *0.25) * math.pi), 0.1)
    noteTweenX('defaultOpponentStrumX4', 0, defaultOpponentStrumX0 + 50 * math.sin((currentBeat+2 *0.25) * math.pi), 0.1)
    noteTweenX('defaultOpponentStrumX5', 1, defaultOpponentStrumX1 + 50 * math.sin((currentBeat+3 *0.25) * math.pi), 0.1)
    noteTweenX('defaultOpponentStrumX6', 2, defaultOpponentStrumX2 + 50 * math.sin((currentBeat+4 *0.25) * math.pi), 0.1)
    noteTweenX('defaultOpponentStrumX7', 3, defaultOpponentStrumX3 + 50 * math.sin((currentBeat+5 *0.25) * math.pi), 0.1)

end



function onStepHit()

  if curStep == 2495 then
		doTweenAlpha('white','white', 1, 3.4, linear)
  end

  if curStep == 2530 then
		doTweenAlpha('white','white', 0, 1.4, linear)
  end

  if curStep == 2784 then
		doTweenAlpha('thefunnyeffectOLD','thefunnyeffectOLD', 1, 2.4, linear)
  end

  if curStep == 2830 then
		doTweenAlpha('thefunnyeffectOLD','thefunnyeffectOLD', 0, 2.4, linear)
  end

  if curStep == 2890 then
		doTweenAlpha('thefunnyeffectOLD','thefunnyeffectOLD', 1, 2.4, linear)
  end

  if curStep == 2930 then
		doTweenAlpha('thefunnyeffectOLD','thefunnyeffectOLD', 0, 2.4, linear)
  end

  if curStep == 2980 then
		doTweenAlpha('thefunnyeffectOLD','thefunnyeffectOLD', 1, 2.4, linear)
  end

  if curStep == 3050 then
		doTweenAlpha('thefunnyeffectOLD','thefunnyeffectOLD', 0, 2.4, linear)
  end

  if curStep == 3100 then
		doTweenAlpha('thefunnyeffectOLD','thefunnyeffectOLD', 1, 2.4, linear)
  end

  if curStep == 3150 then
		doTweenAlpha('thefunnyeffectOLD','thefunnyeffectOLD', 0, 2.4, linear)
  end

  if curStep == 3200 then
		doTweenAlpha('thefunnyeffectOLD','thefunnyeffectOLD', 1, 2.4, linear)
  end

  if curStep == 3250 then
		doTweenAlpha('thefunnyeffectOLD','thefunnyeffectOLD', 0, 2.4, linear)
  end

end    

