local composer = require("composer")

local scene = composer.newScene()

function scene:create( event )
  local cenaVideos = self.view

  
  local x = display.contentWidth
  local y = display.contentHeight
  
  local fundo = display.newImageRect( cenaVideos, "Imagens/verde.png", x*1, y*1)

  fundo.x = x*0.5
  fundo.y = y*0.5


local tituloVideos = display.newText( cenaVideos,"VIDEOS", x*0.500, y*0.13, "recursos/fontes/GROBOLD.ttf",85 )
tituloVideos:setFillColor(1, 1, 1)

local Videos = display.newText( cenaVideos," 1 - Menina ajuda colega com Autismo\n www.instagram.com/reel/C9GeTDgNlb0/?igsh=MWtvdXdndjZxa2NiYg==\n 2 - O Mundo na visão de um Autista\n www.youtube.com/watch?v=S8DJkSy0bho\n 3 - Mayra Gaiato/Especialista em Autismo infantil - CRP: 06/80987\n www.youtube.com/watch?v=sifF05eJQf8\n 4 -  PABLO - Episódio completo | Nat Geo Kids\n www.youtube.com/watch?v=gS5bjyNuLh8",  x*0.515, y*0.55, "nil",70 )
Videos:setFillColor(1, 1, 1)
  
  local Voltar = display.newText( cenaVideos, "VOLTAR /", x*0.09, y*0.94, "recursos/fontes/GROBOLD.ttf", 60 )
  Voltar:setFillColor(1, 1, 0)
  Voltar:addEventListener("tap", function()
  composer.gotoScene("cenas.comunidades")
  end  )

  local Proximo = display.newText( cenaVideos, "PRÓXIMA  ", x*0.23, y*0.94, "recursos/fontes/GROBOLD.ttf", 60 )
  Proximo:setFillColor(1, 1, 0)
  Proximo:addEventListener("tap", function()
  composer.gotoScene("cenas.livros")
  end  )

  local VoltarMenu = display.newText(  cenaVideos, "MENU", x*0.927, y*0.94, "recursos/fontes/GROBOLD.ttf", 60)
    VoltarMenu:setFillColor(1, 1, 0 )
  
    VoltarMenu:addEventListener("tap", function()
      composer.gotoScene("cenas.menu")
    end  )
  end

scene:addEventListener( "create", scene )
return scene