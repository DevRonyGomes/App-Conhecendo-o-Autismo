local composer = require("composer")
local scene = composer.newScene()

local x, y = display.contentCenterX, display.contentCenterY

local cenaJogo = display.newGroup() -- Crie um grupo para os elementos da cena

  local questions = 
  {
     
      {
          question = "1 - O que é o Autismo?",
          options = {
          "A) Uma síndrome.", 
          "B) Uma imunodeficiência comum variável (ICV).", 
          "C) Um transtorno do desenvolvimento neurológico.", 
          "D) Um transtorno neurológico temporário."},
          correct = 3
      },
      {
        question = "2 - Qual é a principal característica do Autismo?",
        options = {
          "A) Altos níveis de energia.", 
          "B) Dificuldades na interação social e na comunicação.", 
          "C) Habilidades motoras aprimoradas.", 
          "D) Todas as alternativas acima."},
          correct = 2
      },
      {
        question = "3 - Qual a cor simboliza o Autismo?",
        options = {
          "A) O autismo é simbolizado pelo girassol, em função da sua cor.", 
          "B) Amarelo, que identifica a consciência do orgulho autista.", 
          "C) Vermelho, pois o autismo atinge mais meninas do que meninos.", 
          "D) Azul, pois o autismo atinge mais meninos do que meninas."},
          correct = 4
      },
      {
        question = "4 - Qual o dia Mundial da Conscientização do Autismo?",
        options = {
          "A) 2 de Abril, estabelecida pela ONU em 2007.", 
          "B) 18 de Junho, dia do Orgulho autista.", 
          "C) 6 de Abril, estabelecida pela ONU em 2007.", 
          "D) 16 de Junho, dia do Orgulho autista."},
          correct = 1
      },
      {
        question = "5 - O Benefício de Prestação Continuada (BPC/LOAS),\n             pode ser concedido à pessoa Autista?",
        options = {
          "A) Sim, somente com ação judicial.", 
          "B) Sim, basta solicitar junto à Prefeitura.",          
          "C) Sim, tendo o cadastro no CadÚnico, do Governo Federal, e renda familiar\n              igual ou inferior a 1/4 do salário mínimo por morador da casa.", 
          "D) Não, infelizmente a pessoa com TEA não tem direito ao benefício."},
          correct = 3
      },

      {
        question = "6 - O que pode ser feito se o BPC/LOAS for negado pelo\n         Instituto Nacional de Seguro Social – INSS?",
        options = {
          "A) Se o INSS negar, não há o que fazer.", 
          "B) Após negados e esgotados os recursos administrativos junto\n                 ao INSS, pode-se recorrer à Justiça Federal.",          
          "C) Recorrer junto à Prefeitura.", 
          "D) Recorrer junto ao Conselho Tutelar."},
          correct = 2
      },
      {
        question = "7 - Como solicitar o benefício - BPC/LOAS?",
        options = {
          "A) Através dos canais do INSS.", 
          "B) Somente através de advogado.",          
          "C) Diretamente e pessoalmente no Juizado Especial do Fórum.", 
          "D) Pessoalmente no Conselho Tutelar."},
          correct = 1
      },
      {
        question = "8 - A pessoa autista tem direito a transporte público gratuito?",
        options = {
          "A) Não, a pessoa com Transtorno do Espectro Autista (TEA) não tem este direito.", 
          "B) Sim, a pessoa Autista não precisa pagar passagem no transporte público.",          
          "C) somente com ordem judicial.", 
          "D) somente para menor de idade."},
          correct = 2
      },
      {
        question = "9 - Pessoas autistas têm direito a compra de\n            carro zero com desconto?",
        options = {
          "A) Sim, se a renda per capita do núcleo familiar for menor que\n                              1/4 do salário mínimo.", 
          "B) Sim, se a pessoa autista ganhar até 2 salários mínimos.",          
          "C) Não, a lei não dá o direito de isenção de impostos às pessoas com TEA.", 
          "D) Sim, a pessoa autista tem direito à isenção de impostos na\n                               compra de carro zero."},
          correct = 4
      },
      {
        question = "10 - O que podemos fazer para ajudar pessoas com TEA?",
        options = {
          "A) Informar-se sobre o TEA e suas característcas.", 
          "B) Ser paciente, compreensivo e tolerante.",          
          "C) Criar ambientes inclusivos e acessíveis.", 
          "D) Todas as alternativas acima."},
          correct = 4
        },
      }
        
     

      local currentQuestionIndex = 1
      local score = 0
      
      function scene:create(event)
          local sceneGroup = self.view
          self.questionText = display.newText({
              parent = sceneGroup,
              text = "",
              x = display.contentCenterX,
              y = display.contentCenterY - 450, --localização da altura da pergunta / ERA -290
              font = "native.systemFont",
              fontSize = 80 -- tamanho da letra das perguntas / era 90
            })
          self.optionButtons = {}
      
          for i = 1, 4 do
              local optionButton = display.newText({
                  parent = sceneGroup,
                  text = "",
                  x = display.contentCenterX,
                  y = display.contentCenterY -450 + (i * 225), -- localização da altura das alternativas /era -200 altura E 130
                  font = native.systemFont,
                  fontSize = 65 -- tamanho da letra das alternativas / era 70
              })
              optionButton:addEventListener("tap", function()
                  self:checkAnswer(i)
              end)
              self.optionButtons[i] = optionButton
          end
      
          self:showQuestion()
          
      end
      
      function scene:showQuestion()
          local questionData = questions[currentQuestionIndex]
          self.questionText.text = questionData.question
      
          for i = 1, 4 do
              self.optionButtons[i].text = questionData.options[i]
          end
      end
      
      function scene:checkAnswer(selectedIndex)
          local questionData = questions[currentQuestionIndex]
      
          if selectedIndex == questionData.correct then
              score = score + 1
          end
      
          currentQuestionIndex = currentQuestionIndex + 1
      
          if currentQuestionIndex > #questions then
              composer.gotoScene("result", {params = {score = score}})
          else
              self:showQuestion()
          end
      end

      scene:addEventListener( "create", scene )
return scene
    