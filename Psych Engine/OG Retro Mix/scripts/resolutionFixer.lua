function onCreatePost()
    setProperty("timeBarBG.visible", false)
    setProperty("timeBar.visible", false)
    setProperty("timeTxt.visible", false)
    setProperty("iconP1.visible", false)
    setProperty("iconP2.visible", false)
    setHealthBarColors("FCBCB0", "F44336")
    setProperty("healthBar.scale.x", 0.5)
    setProperty("healthBarBG.scale.x", 0.5)

    setProperty("healthBarBG.flipX", true)
    setProperty("healthBar.flipX", true)

    
    setProperty("healthBar.x", -150)
end

function onUpdatePost(elapsed)
    setPropertyFromGroup("opponentStrums", 0, "visible", false)
    setPropertyFromGroup("opponentStrums", 1, "visible", false)
    setPropertyFromGroup("opponentStrums", 2, "visible", false)
    setPropertyFromGroup("opponentStrums", 3, "visible", false)
    setProperty("boyfriend.flipX", false)


    --text stuff
    setTextString("scoreTxt", "score: "..score.."\nmisses: "..misses)
    setTextAlignment("scoreTxt", 'left')
    setTextSize("scoreTxt", 32)
    setProperty("scoreTxt.scale.x", 1)
    setProperty("scoreTxt.scale.y", 1)
end

function onSpawnNote(membersIndex, noteData, noteType, isSustainNote)
    if getPropertyFromGroup("notes", membersIndex, 'mustPress') == false then
        setPropertyFromGroup("notes", membersIndex, 'visible', false)
    end
end