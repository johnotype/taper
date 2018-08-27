Piece = Class{}

function Piece:init(width, height, x_pos, y_pos)
    self.width = width
    self.width = height

    -- actual position (used for rendering)
    self.x_pos = x_pos -- - self.width / 2
    self.y_pos = y_pos -- - self.height / 2

    self.opacity = 255
    self.red     = 200
    self.green   = 0   
    self.blue    = 200

    self.visible = true
end

function Piece:interact()
    -- implemented in the child classes 
end

function Piece:update(dt)

end

function Piece:render()
    -- TODO replace rectangles with tiles in the assets folder
    if (self.visible) then
        love.graphics.setColor(self.red, self.green, self.blue, self.opacity)
        love.graphics.rectangle('fill', self.x_pos, self.y_pos, self.width, self.height)
    end
end