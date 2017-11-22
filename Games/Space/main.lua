function love.load()
    windowX, windowY = love.window.getDimensions()
    spriteScale = 0.5

    player = {posX = windowX/2, posY = windowY/2, angle = 90, speed = 30, image = love.graphics.newImage("Sprites/playerShip1_red.png"), width = 99, height = 75}
end

function love.update(dt)
    x, y = love.mouse.getPosition( )

    distanceX = player.posX - x
    distanceY = player.posY - y

    player.angle = math.atan2(distanceY, distanceX) - 90

end

function love.draw()
    love.graphics.setBackgroundColor(50,50,50)

    love.graphics.draw(player.image,player.posX,player.posY,player.angle,spriteScale,spriteScale, player.width/2, player.height/2)
end
