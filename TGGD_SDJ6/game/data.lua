local states = require("game.states")

local M = {}

local data = {}


function M.new_game()
	data = {}
	M.set_score(0)
	M.clear_messages()
	M.add_message("YER ALIVE!")
end

function M.set_score(value)
	data.score = value
end

function M.get_score()
	return data.score
end

function M.clear_messages()
	data.messages={}
end

function M.add_message(message)
	table.insert(data.messages, message)
end

function M.get_messages()
	return data.messages
end

function M.continue_game()
	M.clear_messages()
	M.add_message("YOU CONTINUE ONWARD!")
	M.set_score(M.get_score()+1)
end

return M
