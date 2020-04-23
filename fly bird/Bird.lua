Bird = Class{}

local GRAVITY = 20
local ANTI_GRAVITY = -5
local image = love.graphics.newImage('images/bird.png')
BIRD_WIDTH = image:getWidth()
BIRD_HEIGHT = image:getHeight()

function Bird:init()
	self.x = VIRTUAL_WIDTH/2 - (BIRD_WIDTH/2)
	self.y = VIRTUAL_HEIGHT/2 - (BIRD_HEIGHT/2)
	self.dy = 0
end

function Bird:collides(pipe)
    if (self.x + 2) + (BIRD_WIDTH - 4) >= pipe.x and self.x + 2 <= pipe.x + PIPE_WIDTH then
        if (self.y + 2) + (BIRD_HEIGHT - 4) >= pipe.y and self.y + 2 <= pipe.y + PIPE_HEIGHT then
            return true
        end
    end

    return false
end

function Bird:update(dt)
	if love.keyboard.keysPressed['space'] or love.mouse.buttonPressed[1] then
		self.dy = ANTI_GRAVITY
		sounds['jump']:play()
	end
	self.dy = self.dy + GRAVITY * dt
	self.y = self.y + self.dy
end

function Bird:render()
	love.graphics.draw(image, self.x, self.y)
end