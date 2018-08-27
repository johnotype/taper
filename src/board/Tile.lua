Tile = Class()

function Tile:init(x, y, x_pos, y_pos, tile_width, tile_height, id)
    self.x = x
    self.y = y
    self.x_pos = x_pos
    self.y_pos = y_pos
    self.width = tile_width
    self.height = tile_height
    self.id = id

    self.contains = {}
    self.pieces = 0

    self.red    = 54
    self.green  = 136
    self.blue   = 178

    self.mouse_over = false
end

function Tile:removePiece(index)
    self.pieces = self.pieces - 1
    return table.remove(self.contains[index])
end

function Tile:addPiece(piece)
    self.pieces = self.pieces + 1
    table.insert(self.contains, piece)
end

function Tile:interact(turn)
    if self.pieces > 0 then
        for j = 1, self.pieces do
            self.contains[j]:interact()
        end
    end
end

function Tile:update(dt)
    if (love.mouse.getX() * MYSTERIOUS_SCALING_FACTOR > self.x_pos and love.mouse.getX() * MYSTERIOUS_SCALING_FACTOR < self.x_pos + self.width) then
        if (love.mouse.getY() * MYSTERIOUS_SCALING_FACTOR > self.y_pos and love.mouse.getY() * MYSTERIOUS_SCALING_FACTOR < self.y_pos + self.height) then
            self.mouse_over = true
        else
            self.mouse_over = false
        end
    else
        self.mouse_over = false
    end

    if love.mouse.wasPressed == true and self.mouse_over == true then
        self.mouse_clicked = true
    end

    if love.mouse.wasPressed == false and self.mouse_clicked == true then
        self.mouse_clicked = false
    end
end

function Tile:render()

    if self.mouse_over == true then
        self.red = 255
    else
        self.red = 54
    end

    if self.mouse_clicked == true then
        self.blue = 255
    else
        self.blue = 136
    end

    love.graphics.setColor(self.red, self.green, self.blue, self.opacity)
    love.graphics.rectangle('fill', self.x_pos, self.y_pos, self.width, self.height) 
end
