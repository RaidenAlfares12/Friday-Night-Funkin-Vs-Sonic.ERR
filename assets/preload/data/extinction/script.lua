local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('Cutscene1');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end
function onCreate()
makeLuaText('watermark', songName .. " | Port By ZeonPlay & Raiden", 0, 2, 700); -- You can edit the created by Prisma Text just dont change anything else
    setTextSize('watermark', 20);
    addLuaText('watermark');
end
