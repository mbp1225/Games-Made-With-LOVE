function love.load()
    windowX, windowY = love.window.getDimensions()
    --Ball parameters
    ball = {posX = windowX/2, posY = windowY/2, stepX = 1, stepY = 1, speed = 100}
    --Player parameters
    player = {stats = {posX = windowX/2 - 25, posY = windowY*0.95, speed = 30},drawProperties = {sizeX = 50, sizeY = 10}}

end

function love.update(dt)
    --Collision detection bit
        --Walls collisions
    if ball.posX > windowX*0.675 then
        ball.stepX = ball.stepX * -1
    end
    if ball.posX < windowX*0.325 then
        ball.stepX = ball.stepX * -1
    end

        --Player collisions
    if ball.posY + player.drawProperties.sizeY/2 > player.stats.posY then
        ball.stepY = ball.stepY * -1
    end

    ball.posX = ball.posX + (ball.stepX * ball.speed * dt)
    ball.posY = ball.posY + (ball.stepY * ball.speed * dt)
end

function love.draw()
    --Debug lines on center
    love.graphics.setColor(100,100,100)
    love.graphics.line(windowX/2, 0, windowX/2, windowY)
    love.graphics.line(0, windowY/2, windowX, windowY/2)

    --Background is pretty much black
    love.graphics.setBackgroundColor(20,20,20)
    --Everything interactable is white
    love.graphics.setColor(255,255,255)
    --Draws the ball
    love.graphics.circle('fill',ball.posX,ball.posY,8)
    --Draws the walls
    love.graphics.rectangle('fill',windowX*0.325 - 5,0,10,windowY)
    love.graphics.rectangle('fill',windowX*0.675 + 5,0,10,windowY)
    --Draws the player
    love.graphics.rectangle('fill', player.stats.posX, player.stats.posY, player.drawProperties.sizeX, player.drawProperties.sizeY)

end

function love.keypressed(key)
    if key == 'a' then
        player.stats.poxX = player.stats.poxX -
end
