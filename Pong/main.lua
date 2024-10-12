_G.love = require("love")
require("player")
require("ball")


function love.load()
  player:load()
  ball:load()

end



function love.update(dt)
  player:update(dt)
  ball:update(dt)

end



function love.draw()
  player:draw()
  ball:draw()

end
