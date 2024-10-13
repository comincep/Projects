_G.love = require("love")

_G.Graphics = {}

function Graphics:Draw()
  love.graphics.setBackgroundColor(0, 0, 0)


  love.graphics.print("Mouse X: ".. love.mouse.getX(), 5, 780)
  love.graphics.print("Mouse Y: ".. love.mouse.getY(), 5, 765)

  if love.mouse.isDown(1) then
    love.graphics.print("Mouse Pressing", 5, 750)
  end
end
