local composer = require("composer")

local scene = composer.newScene()

function scene:create( event )
  local cenaInformacao = self.view

  local x = display.contentWidth
  local y = display.contentHeight
  
  local fundo = display.newImageRect( cenaInformacao, "Imagens/azul.png", x*1, y*1)
  fundo.x = x*0.5
  fundo.y = y*0.5

  local tituloInformacao = display.newText( cenaInformacao,"JOGO QUIZ INCLUSIVO", x*0.500, y*0.13, "recursos/fontes/GROBOLD.ttf",95 )
  tituloInformacao:setFillColor(0, 1, 1)
  
  local informacao = display.newText( cenaInformacao,"  OBJETIVOS: Desmistificar o Transtorno do Espectro Autista\n    (TEA), aumentar a inclusão e o conhecimento sobre suas\n     características e apresentar a legislação brasileira que\n               protege os direitos das pessoas com TEA.\n   PÚBLICO-ALVO: Pessoas leigas que desejam aprender mais\n                    sobre o autismo e seus direitos.\n   INSTRUÇÕES: Leia cada pergunta com atenção e escolha\n           a alternativa que melhor responde à questão.",  x*0.500, y*0.53, "recursos/fontes/GROBOLD.ttf",75 )
  informacao:setFillColor(0, 1, 1)

  local voltar = display.newText(  cenaInformacao, "VOLTAR /",x*0.09, y*0.94, "recursos/fontes/GROBOLD.ttf", 60 )
  voltar:setFillColor(1, 1, 0)
  voltar:addEventListener("tap", function()
    composer.gotoScene("cenas.menu")
  end  )

  local proximo = display.newText( cenaInformacao, "PRÓXIMA  ", x*0.23, y*0.94 , "recursos/fontes/GROBOLD.ttf", 60 )
  proximo:setFillColor(1, 1, 0)
  proximo:addEventListener("tap", function()
    composer.gotoScene("cenas.comunidades")
  end  )

  local voltar = display.newText( cenaInformacao, "MENU  ", x*0.935, y*0.94, "recursos/fontes/GROBOLD.ttf", 60 )
  voltar:setFillColor(1, 1, 0)
  voltar:addEventListener("tap", function()
    composer.gotoScene("cenas.menu")
  end  )
  


end

scene:addEventListener( "create", scene )
return scene