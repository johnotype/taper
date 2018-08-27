TileMap = Class()

function TileMap:init(def)
    self.n_columns  = def.n_columns
    self.n_rows     = def.n_rows
    self.x_start    = def.x_start
    self.y_start    = def.y_start
    self.tile_size  = def.tile_size
    self.margin     = def.margin
    
    self.tiles = {}
    
    for y = 1, self.n_rows do 
        table.insert(self.tiles, {})
        
        y_pos = self.y_start + (y - 1) * (self.tile_size + self.margin)

        for x = 1, self.n_columns do
            local id = 0
            -- TODO replace block colours with textures
            -- local id = TILE_IDS['ground'][math.random(#TILE_IDS['ground'])]
            x_pos = self.x_start + (x - 1) * (self.tile_size + self.margin)
            
            table.insert(self.tiles[y], Tile(x, y, x_pos, y_pos, self.tile_size, self.tile_size, 0))
        end 
    end
end

function TileMap:update(dt)
    for y = 1, self.n_rows do
        for x = 1, self.n_columns do
            self.tiles[y][x]:update(dt)
        end
    end
end

function TileMap:render()
    for y = 1, self.n_rows do
        for x = 1, self.n_columns do
            self.tiles[y][x]:render()
        end
    end
end

function TileMap:addPiece(piece, x, y)
    table.insert(self.tile[y][x].contains, Piece(10, 10, self.tile[y][x].x_pos, self.tile[y][x].y_pos) )
end