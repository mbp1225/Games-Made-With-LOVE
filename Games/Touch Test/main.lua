--HC = require 'HC' --Imports HardonCOllider, for collision detection

function love.load()
    x1,y1 = 0,0
    x2,y2 = 0,0
    lastX1,lastY1 = 0,0
    lastX2,lastY2 = 0,0

    gravity = -9.8
end

function love.mousepressed( x, y, button)
    mousePressed = true
    x1 = x
    y1 = y
end

function love.mousereleased(xx, yy, button)
    x2 = xx
    y2 = yy
    mousePressed = false
end

function love.draw()
    mouseX,mouseY = love.mouse.getPosition()

    love.graphics.setBackgroundColor(30,30,30)

    function distance(p1X,p1Y,p2X,p2Y)
        local dX = p1X - p2X
        local dY = p1Y - p2Y
        love.graphics.print("X distance: " .. tostring(dX),0,0)
        love.graphics.print("Y distance: " .. tostring(dY),0,10)

        local dist = math.sqrt(dX^2 + dY^2)
        love.graphics.print("Distance between points: " .. tostring(dist),0,20)
    end

    if mousePressed then
        love.graphics.circle('fill', x1, y1, 5)
        love.graphics.circle('fill', mouseX, mouseY, 5)
        love.graphics.line(x1, y1, mouseX, mouseY)
        lastX1,lastY1 = x1,y1
        lastX2,lastY2 = mouseX,mouseY
    end

    if not mousePressed then
        love.graphics.setLineWidth( 10 )
        love.graphics.line(lastX1, lastY1, lastX2, lastY2)
        love.graphics.circle('fill', lastX1, lastY1, 5)
        love.graphics.circle('fill', lastX2, lastY2, 5)

        distance(lastX1, lastY1, lastX2, lastY2)
    end

end
