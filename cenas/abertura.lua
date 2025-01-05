local composer = require("composer")
local scene = composer.newScene()

function scene:create( event )
  local cenaAbertura = self.view

  local x = display.contentWidth
  local y = display.contentHeight
  
    local composer = require("composer")
  composer.gotoScene("cenas.abertura")

  -- local abertura = display.newRoundedRect( cenaAbertura, x*0.78, y*0.6, x*0.3, 100, 80 )

  local abertura = display.newText( cenaAbertura, "PULAR ABERTURA", x*0.85, y*0.9, "recursos/fontes/GROBOLD.ttf", 50  )
  abertura:setFillColor(1, 1, 1)

  abertura:addEventListener("tap", function()
    composer.gotoScene("cenas.menu")

end)



    
end

scene:addEventListener( "create", scene )
return scene