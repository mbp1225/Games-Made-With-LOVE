function love.load()
    --Bird stuff
    birdY = 200
    birdYSpeed = 0

    --Pipe stuff
    playingAreaWidth = 300
    playingAreaHeight = 388
end

function love.update(dt)
    birdYSpeed = birdYSpeed + (516 * dt)
    birdY = birdY + (birdYSpeed * dt)
end

function love.draw()
    --Background
    love.graphics.setColor(35,92,118)
    love.graphics.rectangle('fill',0,0,playingAreaWidth,playingAreaHeight)

    --Bird
    love.graphics.setColor(224,214,68)
    love.graphics.rectangle('fill',62,birdY,30,25)

    --Pipes
    local pipeWidth = 54

    love.graphics.setColor(94,201,72)
    love.graphics.rectangle('fill',playingAreaWidth,0,pipeWidth,pipeSpaceY)
    love.graphics.rectangle('fill',playingAreaWidth,pipeSpaceY + pipaSpaceHeight,pipeWidth, playingAreaHeight - pipeSpaceY - pipaSpaceHeight)

end

function love.keypressed(key)
    if birdY > 0 then
        birdYSpeed = -165
    end
end
