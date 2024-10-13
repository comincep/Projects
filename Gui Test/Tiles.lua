_G.love = require("love")

_G.Tiles = {}

-- LOVE2D FUNCTIONS --

function Tiles:load()

    self.width = 100
    self.height = 100
    self.x = 50
    self.y = 50

    self.Debounce = false

    self.TilesCount = {}

end


function Tiles:update(dt)


end


function Tiles:draw()

Tiles:CreateTiles(20, 20)


love.graphics.print("Tile Count: ".. #self.TilesCount)

end

-- END OF LOVE2D FUNCTIONS --


-- FUNCTIONS --

function Tiles:CreateTiles(Width, Height)

  if Width and Height <= 50 or Width <= 100 or Height <= 100 then

  for i = 1, Width do

    rectangle("line", self.x, self.y, self.width, self.height)
    rectangle("line", self.x, self.y, self.width * i, self.height)


    for ii = 1, Height do

      rectangle("line", self.x, self.y, self.width, self.height)
      rectangle("line", self.x, self.y, self.width * i, self.height * ii)

      if self.Debounce == false then
      table.insert(self.TilesCount, 1)
        end
      end
    end
  end

  self.Debounce = true
end


function rectangle(mode, x, y, width, height)
  love.graphics.rectangle(mode, x, y, width, height)

end

-- END OF FUNCTIONS --
