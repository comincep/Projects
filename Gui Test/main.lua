_G.love = require("love")

require("Tiles")
require("Graphics")

function love.load()

  Tiles:load()

end



function love.update(dt)

  Tiles:update(dt)

end



function love.draw()
  Tiles:draw()
  Graphics:draw()

end
