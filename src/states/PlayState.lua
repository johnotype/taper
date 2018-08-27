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

end

function PlayState:render()
    self.board:render()
end
