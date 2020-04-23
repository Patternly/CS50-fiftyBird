--[[
	This base state is basically like an interface(the law firm) that dictates what something must have and what
	it can do 
]]

BaseState = Class{}

function BaseState:init() end
function BaseState:enter() end
function BaseState:exit() end
function BaseState:update(dt) end
function BaseState:render() end