-- Proteção básica para não criar várias telas se o cara executar várias vezes
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("AvisoManutencaoGUI") then
    CoreGui.AvisoManutencaoGUI:Destroy()
end

-- Criando a interface principal
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "AvisoManutencaoGUI"
screenGui.Parent = CoreGui

-- Fundo minimalista escuro
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 400, 0, 200)
mainFrame.Position = UDim2.new(0.5, -200, 0.5, -100) -- Centralizado
mainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui

-- Detalhe vermelho no topo para dar cara de "Aviso Sério"
local topBar = Instance.new("Frame")
topBar.Size = UDim2.new(1, 0, 0, 4)
topBar.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
topBar.BorderSizePixel = 0
topBar.Parent = mainFrame

-- Título
local titleText = Instance.new("TextLabel")
titleText.Size = UDim2.new(1, 0, 0, 50)
titleText.Position = UDim2.new(0, 0, 0, 15)
titleText.BackgroundTransparency = 1
titleText.Text = "SISTEMA EM MANUTENÇÃO"
titleText.TextColor3 = Color3.fromRGB(255, 255, 255)
titleText.Font = Enum.Font.GothamBold
titleText.TextSize = 22
titleText.Parent = mainFrame

-- Texto descritivo (Direto e sem detalhes do vazamento)
local descText = Instance.new("TextLabel")
descText.Size = UDim2.new(1, -40, 1, -80)
descText.Position = UDim2.new(0, 20, 0, 70)
descText.BackgroundTransparency = 1
descText.Text = "Todos os serviços estão temporariamente indisponíveis devido a uma manutenção programada e atualizações de segurança.\n\nAguarde o retorno."
descText.TextColor3 = Color3.fromRGB(180, 180, 180)
descText.Font = Enum.Font.Gotham
descText.TextSize = 16
descText.TextWrapped = true
descText.TextYAlignment = Enum.TextYAlignment.Top
descText.Parent = mainFrame

-- Botão de fechar (O "X")
local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0, 30, 0, 30)
closeBtn.Position = UDim2.new(1, -35, 0, 15)
closeBtn.BackgroundTransparency = 1
closeBtn.Text = "X"
closeBtn.TextColor3 = Color3.fromRGB(150, 150, 150)
closeBtn.Font = Enum.Font.GothamBold
closeBtn.TextSize = 18
closeBtn.Parent = mainFrame

-- Função para fechar a tela
closeBtn.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

-- Adicionando cantos arredondados para ficar mais moderno
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 6)
corner.Parent = mainFrame
