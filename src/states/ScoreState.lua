ScoreState = Class{__includes = BaseState}

function ScoreState:update(dt)
    
    if love.keyboard.wasPressed('enter') or love.keyboard.wasPressed('return') then
        love.event.quit()
    end

end

function ScoreState:render()
    love.graphics.setFont(gFonts['large'])
    love.graphics.printf('Game End', 0, 64, VIRTUAL_WIDTH, 'center')

    love.graphics.setFont(gFonts['medium'])
    love.graphics.printf('Press Enter to quit', 0, 100, VIRTUAL_WIDTH, 'center')
end
