local composer = require("composer")

local scene = composer.newScene()

function scene:create( event )
    local cenaLivros = self.view

    local x = display.contentWidth
    local y = display.contentHeight

    local fundo = display.newImageRect( cenaLivros, "Imagens/amarelo.png", x*1, y*1)

    fundo.x = x*0.5
    fundo.y = y*0.5

    local tituloLivros = display.newText( cenaLivros,"LIVROS", x*0.500, y*0.13, "recursos/fontes/GROBOLD.ttf",85 )
    tituloLivros:setFillColor(0, 0, 0)

    local Livros= display.newText( cenaLivros," 1 - S.O.S. Autismo www.bit.ly/SOSAutismo\n 2 - O Reizinho Autista www.bit.ly/reizinhoa\n 3 - Propósito Azul: Uma história sobre Autismo www.amzn.to/2xuxKjU\n 4 - Modificação do Comportamento: O que é e Como Fazer\n www.amzn.to/2wF1Bpr\n 5 - Autismo: Compreender e Agir em Família www.amzn.to/3cr9RbZ\n 6 - Intervenção Precoce em Crianças com Autismo\n www.amzn.to/2RFonER",  x*0.515, y*0.55, "nil",70 )
    Livros:setFillColor(0, 0, 0)

    local Voltar = display.newText( cenaLivros, "VOLTAR /", x*0.09, y*0.94, "recursos/fontes/GROBOLD.ttf", 60 )
    Voltar:setFillColor(1, 1, 0)
    Voltar:addEventListener("tap", function()
    composer.gotoScene("cenas.videos")
    end  )

    local Proximo = display.newText( cenaLivros, "PRÓXIMA  ", x*0.23, y*0.94, "recursos/fontes/GROBOLD.ttf", 60 )
    Proximo:setFillColor(1, 1, 0)
    Proximo:addEventListener("tap", function()
    composer.gotoScene("cenas.creditos")
    end  )

    local VoltarMenu = display.newText(  cenaLivros, "MENU", x*0.927, y*0.94, "recursos/fontes/GROBOLD.ttf", 60 )
    VoltarMenu:setFillColor(1, 1, 0)
    VoltarMenu:addEventListener("tap", function()
    composer.gotoScene("cenas.menu")
    end  )


end

scene:addEventListener( "create", scene )
return scene