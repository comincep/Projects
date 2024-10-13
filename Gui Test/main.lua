_G.love = require("love")

require("Tiles")
require("Graphics")

function love.load()

  Tiles:Load()

end



function love.update(dt)

  Tiles:Update(dt)

end



function love.draw()
  Tiles:Draw()
  Graphics:Draw()

end
