function onCreate()
	makeLuaSprite("SoRetro", "retrobg", 0.0, 0.0)
	addLuaSprite("SoRetro", false)
	scaleObject("SoRetro", 3, 3)
end

function onUpdate(elapsed)
	cameraSetTarget("bf")
end