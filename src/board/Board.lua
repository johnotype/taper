Board = Class()

function Board:init(def)
    
    -- from definition
    self.margin     = def.margin
    self.tile_size  = def.tile_size
    self.n_tiles    = def.n_tiles

    -- derived
    self.width      = self.n_tiles * (self.tile_size + self.margin)
    self.height     = self.width -- square

    self.x = (VIRTUAL_WIDTH / 2) - (self.width / 2)
    self.y = (VIRTUAL_WIDTH / 2) - (self.height / 2)

    self.x_tile_start = self.x + (self.margin / 2)
    self.y_tile_start = self.y + (self.margin / 2)

    -- hard
    self.red = 54

    self.tileMap = TileMap{
        n_columns   = def.n_tiles,
        n_rows      = def.n_tiles,
        x_start     = self.x_tile_start,
        y_start     = self.y_tile_start,
        tile_size   = def.tile_size,
        margin      = def.margin        
    }
end

function Board:update(dt) 
    self.tileMap:update(dt)
end

function Board:render()
    -- underlayer
    love.graphics.setColor(self.red, 57, 67, self.opacity)
    love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)

    -- tile layer
    self.tileMap:render()
end