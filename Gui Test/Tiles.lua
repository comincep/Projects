_G.love = require("love")

_G.Tiles = {}

-- LOVE2D FUNCTIONS --

function Tiles:load()

    self.width = 100
    self.height = 100
    self.x = 50
    self.y = 50

end


function Tiles:update(dt)


end


function Tiles:draw()

Tiles:CreateTiles(5, 5)

end

-- END OF LOVE2D FUNCTIONS --


-- FUNCTIONS --

function Tiles:CreateTiles(N1, N2)

  for i = 1, N1 do

    rectangle("line", self.x, self.y, self.width, self.height)
    rectangle("line", self.x, self.y, self.width * i, self.height)

    for ii = 1, N2 do

      rectangle("line", self.x, self.y, self.width, self.height)
      rectangle("line", self.x, self.y, self.width * i, self.height * ii)

    end
  end
end


function rectangle(mode, x, y, width, height)
  love.graphics.rectangle(mode, x, y, width, height)

end

-- END OF FUNCTIONS --
