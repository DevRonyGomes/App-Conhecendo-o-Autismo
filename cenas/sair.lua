local composer = require("composer")

local scene = composer.newScene()

function scene:create( event )
  local cenaSair = self.view

  local x = display.contentWidth
  local y = display.contentHeight
  
  local fundo = display.newImageRect( cenaSair, "imagens/azul.png", x*1, y*1)
  fundo.x = x*0.5
  fundo.y = y*0.5


end

scene:addEventListener( "create", scene )
return scene