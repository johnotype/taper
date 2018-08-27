PlayState = Class{__includes = BaseState}

function PlayState:init()
    self.board = Board {
        n_tiles     = 4,
        tile_size   = 22,
        margin      = 3
    }
        
    self.score = 0
end

function PlayState:update(dt)

    if love.keyboard.wasPressed('escape') then
        love.event.quit()
    end

    self.board:update(dt)
end

function PlayState:enter(params)
    -- TODO: Intro
end

function PlayState:render()
    self.board:render()
    
    love.graphics.setFont(gFonts['small'])
    love.graphics.setColor(255,255,255,255)
    love.graphics.print('y: ' .. love.mouse.getY() * 0.2, 5, 0)

end
