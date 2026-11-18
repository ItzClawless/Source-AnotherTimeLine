-- please credit me or dont delete this text!
-- script by Misha21220[GD]


local allowend = false
isStoryMode = false
function onCreate()
         makeLuaSprite('win', 'achievements/The Chase', 0, 0)  --your achiviement image
         scaleObject('win', 0.75, 0.75)
         setObjectCamera('win', 'other')
         setProperty('win.alpha', 0) -- visible ooooooo dont change
         addLuaSprite('win',  true)

         makeLuaText('text', 'Goodbye bomb', 200, 120, 10) -- change your title text
         setTextSize('text', '25') --text size 
         setTextColor('text', 'ffffff') --change color in hex <-- heks
         setObjectCamera('text', 'other')
         setProperty('text.alpha', 0)
         addLuaText('text', true)
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'gg' then
	allowend = true
	endSong() --  timer will end song lol
	end
end

function onEndSong()
     if not allowend and isStoryMode then 
         playSound('award', 0.75) --play sounds augh
         doTweenAlpha('winAlpha', 'win', 1, 2.4, 'cubeInOut') --shows text and image yaya
         doTweenAlpha('textAlpha', 'text', 1, 2.4, 'cubeInOut')
         doTweenAlpha('text2Alpha', 'text2', 1, 2.4, 'cubeInOut')
	 runTimer('gg', 5, 1) -- 5 is 5 second before it ends song
         return Function_Stop
     end
   return Function_Continue
end --Script is done :3 yaey