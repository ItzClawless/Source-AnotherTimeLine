function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'WhittyGameover'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'WhittyGameover'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'WhittyGameoverLoop'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'WhittygameoverEnd'); --put in mods/music/
end