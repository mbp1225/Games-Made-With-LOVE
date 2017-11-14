function love.draw()
    --Function do make the eyes
    function drawEye(eyeX,eyeY)
        --Mouse position relative to the eye's center
        local distanceX = love.mouse.getX() - eyeX
        local distanceY = love.mouse.getY() - eyeY
        local distance = math.sqrt(distanceX^2 + distanceY^2)
        local angle = math.atan2(distanceY,distanceX)
        --Limiting the pupil's distance
        local eyeMaxPupilDistance = 30
        if distance > eyeMaxPupilDistance then
            distance = eyeMaxPupilDistance
        end

        local pupilX = eyeX + (math.cos(angle) * distance)
        local pupilY = eyeY + (math.sin(angle) * distance)

        --Drawing the eyes
            --Cornea
        love.graphics.setColor(255,255,255)
        love.graphics.circle('fill', eyeX, eyeY, 50)

            --Iris
        love.graphics.setColor(0,0,100)
        love.graphics.circle('fill',pupilX,pupilY,15)
    end

    drawEye(200,200)
    drawEye(400,200)
    drawEye(300,100)
    drawEye(300,300)
end
