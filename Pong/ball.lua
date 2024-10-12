
_G.love = require("love")
require("player")

_G.ball = {}


function ball:load()

  self.x = 400
  self.y = 400

  self.height = 20
  self.width = 20

  self.speed = 20
  self.XVelocity = 1
  self.YVelocity = 1


end



function ball:update(dt)
  self.x = self.x + self.speed

  if self.x > love.graphics.getWidth() - self.width or self.x < player.x + self.width and self.y < player.y + player.height then
    self.speed = -self.speed
  end

  if self.x < 0 or self.x == player.x then
    self.speed = -self.speed
  end


end



function ball:draw()
  love.graphics.setColor(0.7, 0.5, 0.7)
  love.graphics.rectangle("fill", self.x, self.y, self.height, self.width)

  love.graphics.setColor(0, 0, 0)
  love.graphics.setLineWidth(2)
  love.graphics.rectangle("line", self.x, self.y, self.height, self.width)


end
