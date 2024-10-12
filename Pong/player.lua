_G.love = require("love")
_G.player = {}

function player:load()
  self.x = 25
  self.y = 250

  self.height = 100
  self.width = 20

  self.speed = 15

end



function player:update(dt)
  if love.keyboard.isDown("down") then
    self.y = self.y + self.speed
  end

  if love.keyboard.isDown("up") then
    self.y = self.y - self.speed
  end

  if self.y <= 0 then
    self.y = 0
  end

  if self.y >= love.graphics.getHeight() - self.height then
    self.y = love.graphics.getHeight() - self.height
  end


end



function player:draw()
  love.graphics.setBackgroundColor(0.4, 0.6, 1)

  love.graphics.setColor(0, 0, 0)
  love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)

  love.graphics.setColor(1, 1, 1)
  love.graphics.setLineWidth(3)
  love.graphics.rectangle("line", self.x, self.y, self.width, self.height)

  love.graphics.print("Y Position: "..self.y, 5, 750)

end
