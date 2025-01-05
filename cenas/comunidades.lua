local composer = require("composer")

local scene = composer.newScene()

function scene:create( event )
  local cenaComunidades = self.view

  local x = display.contentWidth
  local y = display.contentHeight
  
  local fundo = display.newImageRect( cenaComunidades, "Imagens/vermelho.png", x*1, y*1)

  fundo.x = x*0.5
  fundo.y = y*0.5

  local tituloComunidades = display.newText( cenaComunidades,"COMUNIDADES", x*0.500, y*0.13, "recursos/fontes/GROBOLD.ttf",85 )
  tituloComunidades:setFillColor(1, 1, 1)

  local Comunidades = display.newText( cenaComunidades," www.instagram.com/asasdoautismo\n www.instagram.com/comunidadeproautismo\n www.instagram.com/entendendoautismo\n www.fada.org.br\n www.institutoinclua.com.br\n www.instagram.com/mayragaiato",  x*0.500, y*0.5, "nil",85 )
  Comunidades:setFillColor(1, 1, 1)

  local Voltar = display.newText( cenaComunidades, "VOLTAR /", x*0.09, y*0.94, "recursos/fontes/GROBOLD.ttf", 60 )
  Voltar:setFillColor(1, 1, 0)
  Voltar:addEventListener("tap", function()
  composer.gotoScene("cenas.informacoes")
  end  )

  local Proximo = display.newText( cenaComunidades, "PRÓXIMA  ", x*0.23, y*0.94, "recursos/fontes/GROBOLD.ttf", 60 )
  Proximo:setFillColor(1, 1, 0)
  Proximo:addEventListener("tap", function()
  composer.gotoScene("cenas.videos")
  end  )

  local VoltarMenu = display.newText(  cenaComunidades, "MENU", x*0.927, y*0.94, "recursos/fontes/GROBOLD.ttf", 60)
  VoltarMenu:setFillColor(1, 1, 0)
  VoltarMenu:addEventListener("tap", function()
  composer.gotoScene("cenas.menu")
  end  )
end

scene:addEventListener( "create", scene )
return scene