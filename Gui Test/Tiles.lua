_G.love = require("love")

_G.Tiles = {}


function Tiles:Load()

  self.x = 50
  self.y = 50

  self.height = 100
  self.width = 100

  self.TileCount = {}

  self.Debounce = false

end



function Tiles:Update(dt)
  Tiles:KeyboardKeys()
  Tiles:Mouse()

end



function Tiles:Draw()

  Tiles:NewTiles(8, 6)
  love.graphics.print("Tiles: ".. #self.TileCount)

end


function Tiles:NewTiles(VerNT, HorNT)
  if VerNT and HorNT < 50 then
  for i = 1, VerNT do
    rectangle("line", self.x, self.y, self.width * i, self.height )

    for ii = 1, HorNT do
      rectangle("line", self.x, self.y, self.width * i, self.height * ii)

      if self.Debounce == false then

        table.insert(self.TileCount, ii, ii)
        end
      end
    end

  self.Debounce = true
else
  print("NO CRASHING ALLOWED")
  end
end


function Tiles:KeyboardKeys()

  if love.keyboard.isDown("right") then
    self.x = self.x + 10
  end

  if love.keyboard.isDown("left") then
    self.x = self.x - 10
  end

  if love.keyboard.isDown("up") then
    self.y = self.y - 10
  end

  if love.keyboard.isDown("down") then
    self.y = self.y + 10
  end

end


function Tiles:Mouse() -- FIX ME IM DYINGGG

  if love.mouse.isDown(1) then
    self.x = love.mouse.getX() / 8
    self.y = love.mouse.getY() / 6
  end
end


function rectangle(mode, x, y, width, height)

love.graphics.rectangle(mode, x, y, width, height)

end
