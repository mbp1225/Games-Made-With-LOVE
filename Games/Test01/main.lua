function love.load()
    gridCellSize = 16

    gridX, gridY = love.window.getDimensions()
    gridX = gridX / 16
    gridY = gridY / 16

    worldGrid = {}
    for y = 1, gridY do
        worldGrid[y] = {}
        for x = 1, gridX do
            worldGrid[y][x] = ' '
        end
    end
end

function love.draw()
    love.graphics.setBackgroundColor(45,45,45)
    for y = 1, gridY do
        for x = 1, gridX do
            love.graphics.setColor(70,70,70)
            love.graphics.rectangle('fill',(x-1) * gridCellSize,(y-1) * gridCellSize, gridCellSize - 2, gridCellSize - 2)
        end
    end
end
