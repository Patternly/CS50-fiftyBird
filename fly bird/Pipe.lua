-- This class is as it should be

Pipe = Class{}

PIPE_SPEED = -60

local image = love.graphics.newImage('images/pipe.png')
PIPE_WIDTH = image:getWidth()
PIPE_HEIGHT = image:getHeight()


function Pipe:init(orientation, y)
	self.x = VIRTUAL_WIDTH
	self.y = y
	self.orientation = orientation
end

function Pipe:update(dt)
end

function Pipe:render()
	love.graphics.draw(image, self.x,
	 (self.orientation == 'top' and self.y + PIPE_HEIGHT or self.y), 0, 1, self.orientation == 'top' and -1 or 1)
end