local composer = require("composer")

local scene = composer.newScene()

function scene:create( event )
  local cenaCreditos = self.view

  local x = display.contentWidth
  local y = display.contentHeight

  local degradeFundo = {
  type = 'gradient',
  color1 = { 1, 0.75, 0 },
  color2 = { 1, 0, 0},
  color3 = { 0, 1, 0 },
  color4 = { 0, 0, 1 },
  direction = 'up'
  }
  local fundo = display.newRect( cenaCreditos, x*0.5,   y*0.5, x, y )
  fundo:setFillColor( degradeFundo )



  local tituloCreditos = display.newText( cenaCreditos,"               CRÉDITOS\n EQUIPE DESENVOLVEDORA :", x*0.500, y*0.13, "recursos/fontes/GROBOLD.ttf",85 )
  tituloCreditos:setFillColor(1, 1, 1)
  
  local creditos = display.newText( cenaCreditos,"    Diego Lima \n Leandro Fontes\n  Mariana Melo\n  Mariana Silva\n   Rony Gomes\n   Vitor Santos",  x*0.500, y*0.53, "recursos/fontes/Gamtex.ttf",85 )
  creditos:setFillColor(1, 1, 1)

  local Voltar = display.newText( cenaCreditos, "VOLTAR /", x*0.09, y*0.94, "recursos/fontes/GROBOLD.ttf", 60 )
  Voltar:setFillColor(1, 1, 0)
  Voltar:addEventListener("tap", function()
  composer.gotoScene("cenas.livros")
  end  )

  local VoltarMenu = display.newText( cenaCreditos, "MENU", x*0.2, y*0.94, "recursos/fontes/GROBOLD.ttf", 60)
  VoltarMenu:setFillColor(1, 1, 0)
  VoltarMenu:addEventListener("tap", function()
  composer.gotoScene("cenas.menu")
  end  )
end

scene:addEventListener( "create", scene )
return scene
