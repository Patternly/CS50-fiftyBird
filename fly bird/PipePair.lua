-- This whole class is how it's supposed to be

PipePair = Class{}

local GAP_HEIGHT = 100

function PipePair:init(y)
	self.scored = false
	self.remove = false
	self.x = VIRTUAL_WIDTH
	self.y = y

	self.pipes = 
	{
		['upper'] = Pipe('top', self.y),
		['lower'] = Pipe('bottom', self.y + PIPE_HEIGHT + GAP_HEIGHT)
	}
end

function PipePair:update(dt)
	if self.x > -PIPE_WIDTH then
        self.x = self.x + PIPE_SPEED * dt
        self.pipes['lower'].x = self.x
        self.pipes['upper'].x = self.x
    else
        self.remove = true
    end
end

function PipePair:render()
    for k, pipe in pairs(self.pipes) do
        pipe:render()
    end
end