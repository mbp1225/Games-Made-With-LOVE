function love.load()
    windowX, windowY = love.window.getDimensions()
    ball = {posX = windowX/2, posY = windowY/2, stepX = 1, stepY = 1, speed = 100}
end

function love.update(dt)
    if ball.posX > windowX*0.65 then
        ball.stepX = ball.stepX * -1
    end
    if ball.posX < windowX*0.35 then
        ball.stepX = ball.stepX * -1
    end

    ball.posX = ball.posX + (ball.stepX * ball.speed * dt)
    ball.posY = ball.posY + (ball.stepY * ball.speed * dt)
end

function love.draw()
    love.graphics.setBackgroundColor(20,20,20)
    love.graphics.setColor(255,255,255)
    love.graphics.circle('fill',ball.posX,ball.posY,8)
    love.graphics.rectangle('fill',windowX*0.35 - 10,0,10,windowY)
    love.graphics.rectangle('fill',windowX*0.65 + 10,0,10,windowY)
end
