_G.love = require("love")

_G.Tiles = {}


function Tiles:Load()

  self.x = 0
  self.y = 0

  self.height = 50
  self.width = 50

  self.TileCount = 0

  self.Debounce = false

end



function Tiles:Update(dt)

end



function Tiles:Draw()

  Tiles:NewTiles(1, 1)
  love.graphics.print("Tiles: ".. self.TileCount)

end


function Tiles:NewTiles(VerNT, HorNT)
  for i = 1, VerNT do
    rectangle("line", self.x * i, self.y, self.width * i, self.height )

    for ii = 1, HorNT do
      rectangle("line", self.x * i, self.y * ii, self.width * i, self.height * ii)

      if self.Debounce == false then

        self.TileCount = self.TileCount + 1
      end
    end
  end
  
  self.Debounce = true
end


function rectangle(mode, x, y, width, height)

love.graphics.rectangle(mode, x, y, width, height)

end
