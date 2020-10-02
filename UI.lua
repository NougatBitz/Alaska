local Library = {}

function Library:CreateMain()
	function hasprop(object, prop)
		local a, b = pcall(function()
			return object[tostring(prop)]
		end)
		if a then
			return b
		end
		return nil
	end
	
	function ReturnTime()
		local timeFormat = "%.2d:%.2d:%.2d"
		local t = tick()
		return timeFormat:format(math.floor((t/3600)%24), math.floor((t/60)%60), math.floor((t%60)))
	end
	
	local AlaskaUI = Instance.new("ScreenGui")
	local MainFrame = Instance.new("ImageLabel")
	local Shadow = Instance.new("ImageLabel")
	local CloseButton = Instance.new("TextButton")
	local TabFrame = Instance.new("Frame")
	local TabHolders = Instance.new("Frame")
	local SplitLine = Instance.new("Frame")
	local Logo = Instance.new("ImageLabel")
	local Title = Instance.new("TextLabel")
	local SplitLine_2 = Instance.new("Frame")
	local LayoutThing = Instance.new("UIListLayout")
	
	AlaskaUI.Name = "AlaskaUI"
	AlaskaUI.Parent = game.CoreGui
    AlaskaUI.ResetOnSpawn = false
	
	MainFrame.Name = "MainFrame"
	MainFrame.Parent = AlaskaUI
	MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	MainFrame.BackgroundTransparency = 1.000
	MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
	MainFrame.Size = UDim2.new(0, 800, 0, 500)
	MainFrame.Image = "rbxassetid://3570695787"
	MainFrame.ImageColor3 = Color3.fromRGB(25, 25, 25)
	MainFrame.ScaleType = Enum.ScaleType.Slice
	MainFrame.SliceCenter = Rect.new(100, 100, 100, 100)
	MainFrame.SliceScale = 0.080
	
	Shadow.Name = "Shadow"
	Shadow.Parent = MainFrame
	Shadow.AnchorPoint = Vector2.new(0.5, 0.5)
	Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shadow.BackgroundTransparency = 1.000
	Shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
	Shadow.Size = UDim2.new(1.10000002, 0, 1.14999998, 0)
	Shadow.ZIndex = -5
	Shadow.Image = "rbxassetid://1113384364"
	Shadow.ImageTransparency = 0.200
	Shadow.ScaleType = Enum.ScaleType.Slice
	Shadow.SliceCenter = Rect.new(50, 50, 50, 50)
	
	CloseButton.Name = "CloseButton"
	CloseButton.Parent = MainFrame
	CloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	CloseButton.BackgroundTransparency = 1.000
	CloseButton.Position = UDim2.new(0.930000007, 0, 0.0240000002, 0)
	CloseButton.Size = UDim2.new(0, 41, 0, 41)
	CloseButton.Font = Enum.Font.Gotham
	CloseButton.Text = "×"
	CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	CloseButton.TextSize = 30.000
	
	TabFrame.Name = "TabFrame"
	TabFrame.Parent = MainFrame
	TabFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TabFrame.BackgroundTransparency = 1.000
	TabFrame.Position = UDim2.new(0.0149999997, 0, 0.129999995, 0)
	TabFrame.Size = UDim2.new(0, 120, 0, 422)
	
	LayoutThing.Name = "LayoutThing"
	LayoutThing.Parent = TabFrame
	LayoutThing.SortOrder = Enum.SortOrder.LayoutOrder
	LayoutThing.Padding = UDim.new(0,2)
	
	TabHolders.Name = "TabHolders"
	TabHolders.Parent = MainFrame
	TabHolders.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TabHolders.BackgroundTransparency = 1.000
	TabHolders.Position = UDim2.new(0.177499995, 0, 0.129999995, 0)
	TabHolders.Size = UDim2.new(0, 643, 0, 422)
	
	SplitLine.Name = "SplitLine"
	SplitLine.Parent = TabHolders
	SplitLine.AnchorPoint = Vector2.new(0.5, 0.5)
	SplitLine.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SplitLine.BorderSizePixel = 0
	SplitLine.Position = UDim2.new(-0.00600000005, 0, 0.504000008, 0)
	SplitLine.Size = UDim2.new(0, 1, 0, 418)
	
	Logo.Name = "Logo"
	Logo.Parent = MainFrame
	Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Logo.BackgroundTransparency = 1.000
	Logo.Size = UDim2.new(0, 65, 0, 65)
	Logo.Image = "rbxassetid://5742043341"
	
	Title.Name = "Title"
	Title.Parent = Logo
	Title.AnchorPoint = Vector2.new(0, 0.5)
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.ClipsDescendants = true
	Title.Position = UDim2.new(0.996153831, 0, 0.5, 0)
	Title.Size = UDim2.new(0, 200, 0, 41)
	Title.Font = Enum.Font.Gotham
	Title.Text = "  Alaska V1 | 00:00:00"
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextSize = 18.000
	Title.TextXAlignment = Enum.TextXAlignment.Left
	
	SplitLine_2.Name = "SplitLine"
	SplitLine_2.Parent = Logo
	SplitLine_2.AnchorPoint = Vector2.new(0.5, 0.5)
	SplitLine_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SplitLine_2.BorderSizePixel = 0
	SplitLine_2.Position = UDim2.new(1, 0, 0.5, 0)
	SplitLine_2.Size = UDim2.new(0, 1, 0, 27)
	
	MainFrame.MouseEnter:Connect(function()
		Title:TweenSize(UDim2.new(0,200,0,41),Enum.EasingDirection.In, Enum.EasingStyle.Quad, .2, true)	
	end)
	
	MainFrame.MouseLeave:Connect(function()
		Title:TweenSize(UDim2.new(0,0,0,41),Enum.EasingDirection.In, Enum.EasingStyle.Quad, .2, true)	
	end)
	MainFrame.CloseButton.MouseEnter:Connect(function()
		game.TweenService:Create(MainFrame.CloseButton, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {TextColor3 = Color3.fromRGB(255, 64, 0)}):Play()
	end)
	MainFrame.CloseButton.MouseLeave:Connect(function()
		game.TweenService:Create(MainFrame.CloseButton, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
	end)
	
	spawn(function()
		while wait(1) do 
			Title.Text = "  Alaska V1 | " .. ReturnTime()
		end	
	end)
	
	MainFrame.CloseButton.MouseButton1Down:Connect(function()
		for i,v in pairs(TabHolders:GetChildren()) do 
			v:Destroy()
		end
		for i,v in pairs(TabFrame:GetChildren()) do 
			v:Destroy()
		end
		for i,v in pairs(MainFrame:GetDescendants()) do
			if v.Name ~= "Logo" then
				if hasprop(v, "Transparency") then 
					game.TweenService:Create(v, TweenInfo.new(1, Enum.EasingStyle.Quad), {Transparency = 1}):Play()
				elseif hasprop(v, "ImageTransparency") then 
					game.TweenService:Create(v, TweenInfo.new(1, Enum.EasingStyle.Quad), {ImageTransparency = 1}):Play()
				elseif hasprop(v, "TextTransparency") then 
					game.TweenService:Create(v, TweenInfo.new(1, Enum.EasingStyle.Quad), {TextTransparency = 1}):Play()
				end
			end
		end
		wait(1)
		game.TweenService:Create(MainFrame.CloseButton, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {TextColor3 = Color3.fromRGB(255, 64, 0)}):Play()
		wait(0.2)
		MainFrame:TweenSize(UDim2.new(0,65,0,65), Enum.EasingDirection.In, Enum.EasingStyle.Quad, 0.5, false)
		wait(1)
		game.TweenService:Create(MainFrame.Logo, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {ImageTransparency = 1}):Play()
		wait(0.5)
		MainFrame:TweenSize(UDim2.new(0,0,0,0), Enum.EasingDirection.In, Enum.EasingStyle.Quad, 0.5, false)
		wait(0.5)
		AlaskaUI:Destroy()
	end)
	
	local function Dragger(Frame)
		local dragToggle = nil
		local dragSpeed = 0.1
		local dragInput = nil
		local dragStart = nil
		local dragPos = nil
		
		function updateInput(input)
			local Delta = input.Position - dragStart
			local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
			game:GetService("TweenService"):Create(Frame, TweenInfo.new(dragSpeed), {Position = Position}):Play()
		end
		
		Frame.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
				dragToggle = true
				dragStart = input.Position
				startPos = Frame.Position
				input.Changed:Connect(function()
					if (input.UserInputState == Enum.UserInputState.End) then
						dragToggle = false
					end
				end)
			end
		end)
		
		Frame.InputChanged:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
				dragInput = input
			end
		end)
		
		game:GetService("UserInputService").InputChanged:Connect(function(input)
			if (input == dragInput and dragToggle) then
				updateInput(input)
			end
		end)
	end
	
	Dragger(MainFrame)
	
	
	
	
	local Tabs = {}
	
	function Tabs:CreateTab(Name) 
		local TabSelector = Instance.new("TextButton")
		local Rounding = Instance.new("ImageLabel")
		local ButtonText = Instance.new("TextLabel")
		
		local TabFrame2 = Instance.new("ImageLabel")
		local ItemHolder = Instance.new("ScrollingFrame")
		local ItemLayout = Instance.new("UIListLayout")
		
		TabFrame2.Name = Name
		TabFrame2.Parent = TabHolders
		TabFrame2.AnchorPoint = Vector2.new(1, 1)
		TabFrame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabFrame2.BackgroundTransparency = 1.000
		TabFrame2.Position = UDim2.new(1, 0, 1, 0)
		TabFrame2.Size = UDim2.new(1, 0, 1, 0)
		TabFrame2.Image = "rbxassetid://3570695787"
		TabFrame2.Visible = false
		TabFrame2.ImageColor3 = Color3.fromRGB(24, 24, 24)
		TabFrame2.ScaleType = Enum.ScaleType.Slice
		TabFrame2.SliceCenter = Rect.new(100, 100, 100, 100)
		TabFrame2.SliceScale = 0.080
		
		ItemHolder.Name = "ItemHolder"
		ItemHolder.Parent = TabFrame2
		ItemHolder.Active = true
		ItemHolder.AnchorPoint = Vector2.new(1, 1)
		ItemHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ItemHolder.BackgroundTransparency = 1.000
		ItemHolder.BorderSizePixel = 0
		ItemHolder.Position = UDim2.new(1, 0, 1, 0)
		ItemHolder.Size = UDim2.new(1, 0, 1, 0)
		ItemHolder.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
		ItemHolder.CanvasSize = UDim2.new(0, 0, 0, 0)
		ItemHolder.ScrollBarThickness = 0
		ItemHolder.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
		
		ItemLayout.Name = "ItemLayout"
		ItemLayout.Parent = ItemHolder
		ItemLayout.SortOrder = Enum.SortOrder.LayoutOrder
		
		TabSelector.Name = Name
		TabSelector.Parent = TabFrame
		TabSelector.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabSelector.BackgroundTransparency = 1.000
		TabSelector.BorderSizePixel = 0
		TabSelector.Size = UDim2.new(0, 120, 0, 35)
		TabSelector.ZIndex = 2
		TabSelector.Font = Enum.Font.SourceSans
		TabSelector.Text = ""
		TabSelector.TextColor3 = Color3.fromRGB(0, 0, 0)
		TabSelector.TextSize = 14.000
		
		Rounding.Name = "Rounding"
		Rounding.Parent = TabSelector
		Rounding.Active = true
		Rounding.AnchorPoint = Vector2.new(0.5, 0.5)
		Rounding.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Rounding.BackgroundTransparency = 1.000
		Rounding.Position = UDim2.new(0.5, 0, 0.5, 0)
		Rounding.Selectable = true
		Rounding.Size = UDim2.new(1, 0, 1, 0)
		Rounding.Image = "rbxassetid://3570695787"
		Rounding.ImageColor3 = Color3.fromRGB(29, 29, 29)
		Rounding.ScaleType = Enum.ScaleType.Slice
		Rounding.SliceCenter = Rect.new(100, 100, 100, 100)
		Rounding.SliceScale = 0.080
		
		ButtonText.Name = "ButtonText"
		ButtonText.Parent = TabSelector
		ButtonText.AnchorPoint = Vector2.new(0.5, 0.5)
		ButtonText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ButtonText.BackgroundTransparency = 1.000
		ButtonText.Position = UDim2.new(0.470833331, 0, 0.5, 0)
		ButtonText.Size = UDim2.new(0, 100, 0, 27)
		ButtonText.Font = Enum.Font.Gotham
		ButtonText.Text = Name
		ButtonText.TextColor3 = Color3.fromRGB(255, 255, 255)
		ButtonText.TextSize = 14.000
		ButtonText.TextWrapped = true
		ButtonText.TextXAlignment = Enum.TextXAlignment.Left
		
		local CurrentFrame = ""		
		
		TabSelector.MouseEnter:Connect(function()
			--if TabSelector.Name ~= CurrentFrame then 
			game.TweenService:Create(TabSelector.ButtonText, TweenInfo.new(0.1, Enum.EasingStyle.Quad), {Position = UDim2.new(0.52,0,0.5,0)}):Play()
			--end	
		end)
		TabSelector.MouseLeave:Connect(function()
			if TabSelector.Name ~= CurrentFrame then
				game.TweenService:Create(TabSelector.ButtonText, TweenInfo.new(0.1, Enum.EasingStyle.Quad), {Position = UDim2.new(0.471,0,0.5,0)}):Play()
			end
		end)     
		
		function ResetTabs()
			for i,v in pairs(TabHolders:GetChildren()) do 
				if v.Name ~= "SplitLine" then
					v.Visible = false
				end
			end
			for i,v in pairs(TabFrame:GetChildren()) do 
				if v.Name ~= "LayoutThing" then
					game.TweenService:Create(v.ButtonText, TweenInfo.new(0.1, Enum.EasingStyle.Quad), {Position = UDim2.new(0.471,0,0.5,0)}):Play()
				end
			end
		end
		
		TabSelector.MouseButton1Down:Connect(function()
			ResetTabs()
			TabHolders[TabSelector.Name].Visible = true
			for i,v in pairs(TabHolders:GetChildren()) do 
				if v.Name == TabSelector.Name then 
					CurrentFrame = v.Name
					v.Visible = true
				end
			end
			game.TweenService:Create(TabSelector.ButtonText, TweenInfo.new(0.1, Enum.EasingStyle.Quad), {Position = UDim2.new(0.52,0,0.5,0)}):Play()
		end)
		
		local Items = {}
		
		function Items:Button(Text, CallbackF)
			local ButtonFrame = Instance.new("Frame")
			local Callback = Instance.new("TextButton")
			local CallbackRounding = Instance.new("ImageLabel")
			local CallbackText = Instance.new("TextLabel")
			
			ButtonFrame.Name = "ButtonFrame"
			ButtonFrame.Parent = ItemHolder
			ButtonFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ButtonFrame.BackgroundTransparency = 1.000
			ButtonFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
			ButtonFrame.BorderSizePixel = 0
			ButtonFrame.Size = UDim2.new(0, 643, 0, 35)
			
			Callback.Name = "Callback"
			Callback.Parent = ButtonFrame
			Callback.AnchorPoint = Vector2.new(0, 0.5)
			Callback.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Callback.BackgroundTransparency = 1.000
			Callback.BorderSizePixel = 0
			Callback.Position = UDim2.new(0.681999981, 0, 0.5, 0)
			Callback.Size = UDim2.new(0, 200, 0, 27)
			Callback.ZIndex = 3
			Callback.Font = Enum.Font.Gotham
			Callback.TextColor3 = Color3.fromRGB(255, 255, 255)
			Callback.TextSize = 14.000
			Callback.MouseButton1Down:Connect(function()
				CallbackF()
				game.TweenService:Create(Callback, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {TextSize  = 5}):Play()
				wait()
				game.TweenService:Create(Callback, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {TextSize  = 14}):Play()
			end)
			
			CallbackRounding.Name = "CallbackRounding"
			CallbackRounding.Parent = Callback
			CallbackRounding.Active = true
			CallbackRounding.AnchorPoint = Vector2.new(0.5, 0.5)
			CallbackRounding.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			CallbackRounding.BackgroundTransparency = 1.000
			CallbackRounding.Position = UDim2.new(0.5, 0, 0.5, 0)
			CallbackRounding.Selectable = true
			CallbackRounding.Size = UDim2.new(1, 0, 1, 0)
			CallbackRounding.ZIndex = 2
			CallbackRounding.Image = "rbxassetid://3570695787"
			CallbackRounding.ImageColor3 = Color3.fromRGB(29, 29, 29)
			CallbackRounding.ScaleType = Enum.ScaleType.Slice
			CallbackRounding.SliceCenter = Rect.new(100, 100, 100, 100)
			CallbackRounding.SliceScale = 0.080
			
			CallbackText.Name = "CallbackText"
			CallbackText.Parent = ButtonFrame
			CallbackText.AnchorPoint = Vector2.new(0.5, 0.5)
			CallbackText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			CallbackText.BackgroundTransparency = 1.000
			CallbackText.Position = UDim2.new(0.335530102, 0, 0.5, 0)
			CallbackText.Size = UDim2.new(0, 414, 0, 27)
			CallbackText.Font = Enum.Font.Gotham
			CallbackText.Text = Text
			CallbackText.TextColor3 = Color3.fromRGB(255, 255, 255)
			CallbackText.TextSize = 14.000
			CallbackText.TextWrapped = true
			CallbackText.TextXAlignment = Enum.TextXAlignment.Left
			
			Callback.MouseEnter:Connect(function()
				game.TweenService:Create(Callback, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {TextSize  = 17}):Play()
			end)
			Callback.MouseLeave:Connect(function()
				game.TweenService:Create(Callback, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {TextSize  = 14}):Play()
			end)
		end
		
		function Items:Dropdown(Text, Items, CallbackF)
			local DropdownFrame = Instance.new("Frame")
			local OpenDropdown = Instance.new("TextButton")
			local OpenDropdownRounding = Instance.new("ImageLabel")
			local DropdownText = Instance.new("TextLabel")
			
			DropdownFrame.Name = "DropdownFrame"
			DropdownFrame.Parent = ItemHolder
			DropdownFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropdownFrame.BackgroundTransparency = 1.000
			DropdownFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
			DropdownFrame.BorderSizePixel = 0
			DropdownFrame.Size = UDim2.new(0, 643, 0, 35)
			
			OpenDropdown.Name = "OpenDropdown"
			OpenDropdown.Parent = DropdownFrame
			OpenDropdown.AnchorPoint = Vector2.new(0, 0.5)
			OpenDropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			OpenDropdown.BackgroundTransparency = 1.000
			OpenDropdown.BorderSizePixel = 0
			OpenDropdown.Position = UDim2.new(0.681999981, 0, 0.5, 0)
			OpenDropdown.Size = UDim2.new(0, 200, 0, 27)
			OpenDropdown.ZIndex = 3
			OpenDropdown.Font = Enum.Font.Gotham
			OpenDropdown.Text = "Choose"
			OpenDropdown.TextColor3 = Color3.fromRGB(255, 255, 255)
			OpenDropdown.TextSize = 14.000
			OpenDropdown.TextWrapped = true
			
			OpenDropdownRounding.Name = "OpenDropdownRounding"
			OpenDropdownRounding.Parent = OpenDropdown
			OpenDropdownRounding.Active = true
			OpenDropdownRounding.AnchorPoint = Vector2.new(0.5, 0.5)
			OpenDropdownRounding.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			OpenDropdownRounding.BackgroundTransparency = 1.000
			OpenDropdownRounding.Position = UDim2.new(0.5, 0, 0.5, 0)
			OpenDropdownRounding.Selectable = true
			OpenDropdownRounding.Size = UDim2.new(1, 0, 1, 0)
			OpenDropdownRounding.ZIndex = 2
			OpenDropdownRounding.Image = "rbxassetid://3570695787"
			OpenDropdownRounding.ImageColor3 = Color3.fromRGB(29, 29, 29)
			OpenDropdownRounding.ScaleType = Enum.ScaleType.Slice
			OpenDropdownRounding.SliceCenter = Rect.new(100, 100, 100, 100)
			OpenDropdownRounding.SliceScale = 0.080
			
			DropdownText.Name = "DropdownText"
			DropdownText.Parent = DropdownFrame
			DropdownText.AnchorPoint = Vector2.new(0.5, 0.5)
			DropdownText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropdownText.BackgroundTransparency = 1.000
			DropdownText.Position = UDim2.new(0.335530102, 0, 0.5, 0)
			DropdownText.Size = UDim2.new(0, 414, 0, 27)
			DropdownText.Font = Enum.Font.Gotham
			DropdownText.Text = Text
			DropdownText.TextColor3 = Color3.fromRGB(255, 255, 255)
			DropdownText.TextSize = 14.000
			DropdownText.TextWrapped = true
			DropdownText.TextXAlignment = Enum.TextXAlignment.Left
			
			local UserInputService = game:GetService("UserInputService")
			OpenDropdown.MouseButton1Down:Connect(function()
				if game.CoreGuii:FindFirstChild("ChoosingUI") then return end
				game.TweenService:Create(OpenDropdown, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {TextSize  = 14}):Play()
				local ConnectionClose
				
				local ChoosingUI = Instance.new("ScreenGui")
				local ChooseDropdownUI = Instance.new("ImageLabel")
				local DropdownShadow = Instance.new("ImageLabel")
				local DropdownHolder = Instance.new("ScrollingFrame")
				local DropLayout = Instance.new("UIListLayout")
				local DropItemPadding = Instance.new("UIPadding")
				
				ChoosingUI.Name = "ChoosingUI"
				ChoosingUI.Parent = game.CoreGui
				ChoosingUI.ResetOnSpawn = false
				
				ChooseDropdownUI.Name = "ChooseDropdownUI"
				ChooseDropdownUI.Parent = ChoosingUI
				ChooseDropdownUI.AnchorPoint = Vector2.new(0.5, 0.5)
				ChooseDropdownUI.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ChooseDropdownUI.BackgroundTransparency = 1.000
				ChooseDropdownUI.Position = UDim2.new(0.499390841, 0, 0.501526654, 0)
				ChooseDropdownUI.Size = UDim2.new(0, 195, 0, 0)
				ChooseDropdownUI.ZIndex = 100
				ChooseDropdownUI.Image = "rbxassetid://3570695787"
				ChooseDropdownUI.ImageColor3 = Color3.fromRGB(25, 25, 25)
				ChooseDropdownUI.ScaleType = Enum.ScaleType.Slice
				ChooseDropdownUI.SliceCenter = Rect.new(100, 100, 100, 100)
				ChooseDropdownUI.SliceScale = 0.080
				
				DropdownShadow.Name = "DropdownShadow"
				DropdownShadow.Parent = ChooseDropdownUI
				DropdownShadow.AnchorPoint = Vector2.new(0.5, 0.5)
				DropdownShadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DropdownShadow.BackgroundTransparency = 1.000
				DropdownShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
				DropdownShadow.Size = UDim2.new(1.39999998, 0, 1.29999995, 0)
				DropdownShadow.ZIndex = 81
				DropdownShadow.Image = "rbxassetid://1113384364"
				DropdownShadow.ImageTransparency = 1
				DropdownShadow.ScaleType = Enum.ScaleType.Slice
				DropdownShadow.SliceCenter = Rect.new(50, 50, 50, 50)
				
				DropdownHolder.Name = "DropdownHolder"
				DropdownHolder.Parent = ChooseDropdownUI
				DropdownHolder.Active = true
				DropdownHolder.AnchorPoint = Vector2.new(1, 1)
				DropdownHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DropdownHolder.BackgroundTransparency = 1.000
				DropdownHolder.BorderSizePixel = 0
				DropdownHolder.Position = UDim2.new(0.994871795, 1, 1, 1)
				DropdownHolder.Size = UDim2.new(0.994871795, 1, 1, 1)
				DropdownHolder.ZIndex = 200
				DropdownHolder.ScrollBarThickness = 0
				DropdownHolder.CanvasSize = UDim2.new(0,195,0,8)
				
				DropLayout.Name = "DropLayout"
				DropLayout.Parent = DropdownHolder
				DropLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
				DropLayout.SortOrder = Enum.SortOrder.LayoutOrder
				
				DropItemPadding.Name = "DropItemPadding"
				DropItemPadding.Parent = DropdownHolder
				DropItemPadding.PaddingTop = UDim.new(0, 4)
				local c = 0
				for i,v in pairs(Items) do 
					DropdownHolder.CanvasSize = DropdownHolder.CanvasSize + UDim2.new(0,0,0,40)
					c = c + 1
					local DropdownItem = Instance.new("Frame")
					local ItemCallback = Instance.new("TextButton")
					local ItemCallbackRounding = Instance.new("ImageLabel")
					local ItemCallbackText = Instance.new("TextLabel")
					
					DropdownItem.Name = "DropdownItem"
					DropdownItem.Parent = DropdownHolder
					DropdownItem.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					DropdownItem.BackgroundTransparency = 1.000
					DropdownItem.BorderSizePixel = 0
					DropdownItem.Position = UDim2.new(0.0230769236, 0, 0.140000001, 0)
					DropdownItem.Size = UDim2.new(0, 186, 0, 40)
					DropdownItem.ZIndex = 288 + c
					
					ItemCallback.Name = "ItemCallback"
					ItemCallback.Parent = DropdownItem
					ItemCallback.AnchorPoint = Vector2.new(0.5, 0.5)
					ItemCallback.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ItemCallback.BackgroundTransparency = 1.000
					ItemCallback.BorderSizePixel = 0
					ItemCallback.Position = UDim2.new(0.5, 0, 0.5, 0)
					ItemCallback.Size = UDim2.new(0, 180, 0, 35)
					ItemCallback.ZIndex = 300 + c
					ItemCallback.AutoButtonColor = false
					ItemCallback.Font = Enum.Font.SourceSans
					ItemCallback.Text = ""
					ItemCallback.TextColor3 = Color3.fromRGB(0, 0, 0)
					ItemCallback.TextSize = 14.000
					ItemCallback.MouseButton1Down:Connect(function()
						CallbackF(v)
						game.TweenService:Create(DropdownShadow, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {ImageTransparency = 1}):Play()
						wait(0.2)
						ChooseDropdownUI:TweenSize(UDim2.new(0,195,0,0), Enum.EasingDirection.In, Enum.EasingStyle.Quad, 0.2, true)
						wait(0.2)
						ChoosingUI:Destroy()
						ConnectionClose:Disconnect()
					end)
					
					ItemCallback.MouseEnter:Connect(function()
						game.TweenService:Create(ItemCallbackText, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {TextSize  = 17}):Play()
					end)
					ItemCallback.MouseLeave:Connect(function()
						game.TweenService:Create(ItemCallbackText, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {TextSize  = 14}):Play()
					end)
					
					ItemCallbackRounding.Name = "ItemCallbackRounding"
					ItemCallbackRounding.Parent = ItemCallback
					ItemCallbackRounding.Active = true
					ItemCallbackRounding.AnchorPoint = Vector2.new(0.5, 0.5)
					ItemCallbackRounding.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ItemCallbackRounding.BackgroundTransparency = 1.000
					ItemCallbackRounding.Position = UDim2.new(0.5, 0, 0.5, 0)
					ItemCallbackRounding.Selectable = true
					ItemCallbackRounding.Size = UDim2.new(1, 0, 1, 0)
					ItemCallbackRounding.ZIndex = 301 + c
					ItemCallbackRounding.Image = "rbxassetid://3570695787"
					ItemCallbackRounding.ImageColor3 = Color3.fromRGB(29, 29, 29)
					ItemCallbackRounding.ScaleType = Enum.ScaleType.Slice
					ItemCallbackRounding.SliceCenter = Rect.new(100, 100, 100, 100)
					ItemCallbackRounding.SliceScale = 0.080
					
					ItemCallbackText.Name = "ItemCallbackText"
					ItemCallbackText.Parent = ItemCallback
					ItemCallbackText.AnchorPoint = Vector2.new(0.5, 0.5)
					ItemCallbackText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ItemCallbackText.BackgroundTransparency = 1.000
					ItemCallbackText.Position = UDim2.new(0.5, 0, 0.5, 0)
					ItemCallbackText.Size = UDim2.new(0, 165, 0, 27)
					ItemCallbackText.ZIndex = 302 + c
					ItemCallbackText.Font = Enum.Font.Gotham
					ItemCallbackText.Text = tostring(v)
					ItemCallbackText.TextColor3 = Color3.fromRGB(255, 255, 255)
					ItemCallbackText.TextSize = 14.000
					ItemCallbackText.TextWrapped = true	
				end
				ChooseDropdownUI:TweenSize(UDim2.new(0,195,0,252), Enum.EasingDirection.In, Enum.EasingStyle.Quad, 0.2, true)
				wait(0.2)
				game.TweenService:Create(DropdownShadow, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {ImageTransparency = 0.200}):Play()
				
				local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
				local function IsHoveringOverObj(obj)
					local tx = obj.AbsolutePosition.X
					local ty = obj.AbsolutePosition.Y
					local bx = tx + obj.AbsoluteSize.X
					local by = ty + obj.AbsoluteSize.Y
					if Mouse.X >= tx and Mouse.Y >= ty and Mouse.X <= bx and Mouse.Y <= by then
						return true
					end
					return false
				end
				
				ConnectionClose = UserInputService.InputBegan:Connect(function(input, gameProcessed)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then 
						if IsHoveringOverObj(ChooseDropdownUI) == false then
							game.TweenService:Create(DropdownShadow, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {ImageTransparency = 1}):Play()
							wait(0.2)
							ChooseDropdownUI:TweenSize(UDim2.new(0,195,0,0), Enum.EasingDirection.In, Enum.EasingStyle.Quad, 0.2, true)
							wait(0.2)
							ChoosingUI:Destroy()
							ConnectionClose:Disconnect()
						end	
					end	
				end)
			end)
			OpenDropdown.MouseEnter:Connect(function()
				game.TweenService:Create(OpenDropdown, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {TextSize  = 17}):Play()
			end)
			OpenDropdown.MouseLeave:Connect(function()
				game.TweenService:Create(OpenDropdown, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {TextSize  = 14}):Play()
			end)
		end
		
		function Items:Slider(Text, minAmmount, maxAmmount, CallbackF)
			local UserInputService = game:GetService("UserInputService")
			local SliderHolder = Instance.new("Frame")
			local SliderText = Instance.new("TextLabel")
			local SliderFrame = Instance.new("TextButton")
			local SliderFrameRounding = Instance.new("ImageLabel")
			local SliderObject = Instance.new("TextButton")
			local SliderObjectRounding = Instance.new("ImageLabel")
			local RefreshSlider = Instance.new("TextButton")
			local RefreshSliderRounding = Instance.new("ImageLabel")
			local RefreshImg = Instance.new("ImageLabel")
			
			SliderHolder.Name = "SliderHolder"
			SliderHolder.Parent = ItemHolder
			SliderHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SliderHolder.BackgroundTransparency = 1.000
			SliderHolder.BorderColor3 = Color3.fromRGB(27, 42, 53)
			SliderHolder.BorderSizePixel = 0
			SliderHolder.Size = UDim2.new(0, 643, 0, 35)
			
			SliderText.Name = "SliderText"
			SliderText.Parent = SliderHolder
			SliderText.AnchorPoint = Vector2.new(0.5, 0.5)
			SliderText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SliderText.BackgroundTransparency = 1.000
			SliderText.Position = UDim2.new(0.335530102, 0, 0.5, 0)
			SliderText.Size = UDim2.new(0, 414, 0, 27)
			SliderText.Font = Enum.Font.Gotham
			SliderText.Text = "Slider Example"
			SliderText.TextColor3 = Color3.fromRGB(255, 255, 255)
			SliderText.TextSize = 14.000
			SliderText.TextWrapped = true
			SliderText.TextXAlignment = Enum.TextXAlignment.Left
			
			SliderFrame.Name = "SliderFrame"
			SliderFrame.Parent = SliderHolder
			SliderFrame.AnchorPoint = Vector2.new(0, 0.5)
			SliderFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SliderFrame.BackgroundTransparency = 1.000
			SliderFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
			SliderFrame.BorderSizePixel = 0
			SliderFrame.Position = UDim2.new(0.681999981, 0, 0.5, 0)
			SliderFrame.Size = UDim2.new(0, 169, 0, 27)
			SliderFrame.ZIndex = 10
			SliderFrame.Font = Enum.Font.Gotham
			SliderFrame.Text = ""
			SliderFrame.TextColor3 = Color3.fromRGB(255, 255, 255)
			SliderFrame.TextSize = 14.000
			
			SliderFrameRounding.Name = "SliderFrameRounding"
			SliderFrameRounding.Parent = SliderFrame
			SliderFrameRounding.Active = true
			SliderFrameRounding.AnchorPoint = Vector2.new(0, 0.5)
			SliderFrameRounding.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SliderFrameRounding.BackgroundTransparency = 1.000
			SliderFrameRounding.Position = UDim2.new(0, 0, 0.5, 0)
			SliderFrameRounding.Selectable = true
			SliderFrameRounding.Size = UDim2.new(1, 0, 1, 0)
			SliderFrameRounding.ZIndex = 2
			SliderFrameRounding.Image = "rbxassetid://3570695787"
			SliderFrameRounding.ImageColor3 = Color3.fromRGB(29, 29, 29)
			SliderFrameRounding.ScaleType = Enum.ScaleType.Slice
			SliderFrameRounding.SliceCenter = Rect.new(100, 100, 100, 100)
			SliderFrameRounding.SliceScale = 0.080
			
			SliderObject.Name = "SliderObject"
			SliderObject.Parent = SliderFrame
			SliderObject.AnchorPoint = Vector2.new(0, 0.5)
			SliderObject.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SliderObject.BackgroundTransparency = 1.000
			SliderObject.BorderColor3 = Color3.fromRGB(27, 42, 53)
			SliderObject.BorderSizePixel = 0
			SliderObject.Position = UDim2.new(0, 0, 0.5, 0)
			SliderObject.Size = UDim2.new(0, 0, 0, 27)
			SliderObject.ZIndex = 3
			SliderObject.Font = Enum.Font.Gotham
			SliderObject.Text = ""
			SliderObject.TextColor3 = Color3.fromRGB(255, 255, 255)
			SliderObject.TextSize = 14.000
			
			SliderObjectRounding.Name = "SliderObjectRounding"
			SliderObjectRounding.Parent = SliderObject
			SliderObjectRounding.Active = true
			SliderObjectRounding.AnchorPoint = Vector2.new(0, 0.5)
			SliderObjectRounding.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SliderObjectRounding.BackgroundTransparency = 1.000
			SliderObjectRounding.Position = UDim2.new(0, 0, 0.5, 0)
			SliderObjectRounding.Selectable = true
			SliderObjectRounding.Size = UDim2.new(1, 0, 1, 0)
			SliderObjectRounding.ZIndex = 2
			SliderObjectRounding.Image = "rbxassetid://3570695787"
			SliderObjectRounding.ImageColor3 = Color3.fromRGB(0, 121, 198)
			SliderObjectRounding.ScaleType = Enum.ScaleType.Slice
			SliderObjectRounding.SliceCenter = Rect.new(100, 100, 100, 100)
			SliderObjectRounding.SliceScale = 0.080
			
			RefreshSlider.Name = "RefreshSlider"
			RefreshSlider.Parent = SliderHolder
			RefreshSlider.AnchorPoint = Vector2.new(0, 0.5)
			RefreshSlider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			RefreshSlider.BackgroundTransparency = 1.000
			RefreshSlider.BorderSizePixel = 0
			RefreshSlider.Position = UDim2.new(0.951051295, 0, 0.5, 0)
			RefreshSlider.Size = UDim2.new(0, 27, 0, 27)
			RefreshSlider.ZIndex = 3
			RefreshSlider.Font = Enum.Font.Gotham
			RefreshSlider.Text = ""
			RefreshSlider.TextColor3 = Color3.fromRGB(255, 255, 255)
			RefreshSlider.TextSize = 14.000
			
			RefreshSliderRounding.Name = "RefreshSliderRounding"
			RefreshSliderRounding.Parent = RefreshSlider
			RefreshSliderRounding.Active = true
			RefreshSliderRounding.AnchorPoint = Vector2.new(0.5, 0.5)
			RefreshSliderRounding.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			RefreshSliderRounding.BackgroundTransparency = 1.000
			RefreshSliderRounding.Position = UDim2.new(0.5, 0, 0.5, 0)
			RefreshSliderRounding.Selectable = true
			RefreshSliderRounding.Size = UDim2.new(1, 0, 1, 0)
			RefreshSliderRounding.ZIndex = 2
			RefreshSliderRounding.Image = "rbxassetid://3570695787"
			RefreshSliderRounding.ImageColor3 = Color3.fromRGB(29, 29, 29)
			RefreshSliderRounding.ScaleType = Enum.ScaleType.Slice
			RefreshSliderRounding.SliceCenter = Rect.new(100, 100, 100, 100)
			RefreshSliderRounding.SliceScale = 0.080
			
			RefreshImg.Name = "RefreshImg"
			RefreshImg.Parent = RefreshSliderRounding
			RefreshImg.AnchorPoint = Vector2.new(0.5, 0.5)
			RefreshImg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			RefreshImg.BackgroundTransparency = 1.000
			RefreshImg.Position = UDim2.new(0.5, 0, 0.5, 0)
			RefreshImg.Size = UDim2.new(0.5, 0, 0.5, 0)
			RefreshImg.ZIndex = 5
			RefreshImg.Image = "rbxassetid://5747065604"
			
			local sliderFrame = SliderFrame
			local sliderObject = SliderObject
			local sliderText = SliderText
			
			sliderText.Text = Text .. ": " .. tostring(minAmmount)
			
			sliderFrame.MouseEnter:Connect(function()
				game.TweenService:Create(SliderFrameRounding, TweenInfo.new(0.2), {ImageColor3 = Color3.fromRGB(34, 34, 34)}):Play()
			end)
			
			sliderFrame.MouseLeave:Connect(function()
				game.TweenService:Create(SliderFrameRounding, TweenInfo.new(0.2), {ImageColor3 = Color3.fromRGB(29, 29, 29)}):Play()
			end)
			
			RefreshSlider.MouseEnter:Connect(function()
				RefreshImg.Rotation = 0
				game.TweenService:Create(RefreshImg, TweenInfo.new(0.2), {Rotation = RefreshImg.Rotation + 45}):Play()
			end)
			RefreshSlider.MouseLeave:Connect(function()
				game.TweenService:Create(RefreshImg, TweenInfo.new(0.2), {Rotation = 0}):Play()
			end)
			
			local Connection
			UserInputService.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					if Connection then
						Connection:Disconnect()
						Connection = nil
					end
				end
			end)
			
			sliderFrame.MouseButton1Down:Connect(function()
				if Connection then
					Connection:Disconnect()
				end
				
				Connection = game:GetService("RunService").Heartbeat:Connect(function()
					local mouse = UserInputService:GetMouseLocation()
					local percent = math.clamp((mouse.X - sliderFrame.AbsolutePosition.X) / (sliderFrame.AbsoluteSize.X), 0, 1)
					local Value = minAmmount + (maxAmmount - minAmmount) * percent
					
					Value = math.floor(Value)
					Value = tonumber(string.format("%.2f", Value))
					
					game:GetService("TweenService"):Create(sliderObject, TweenInfo.new(0.1), {Size = UDim2.new(percent, 0, 1, 0)}):Play()
					SliderText.Text = Text .. ": " .. tostring(Value)
					CallbackF(Value)
				end)
			end)
			
			function RefreshGay()
				local mouse = Vector2.new(0,0)
				local percent = math.clamp((mouse.X - sliderFrame.AbsolutePosition.X) / (sliderFrame.AbsoluteSize.X), 0, 1)
				local Value = minAmmount + (maxAmmount - minAmmount) * percent
				
				Value = math.floor(Value)
				Value = tonumber(string.format("%.2f", Value))
				
				game:GetService("TweenService"):Create(sliderObject, TweenInfo.new(0.1), {Size = UDim2.new(percent, 0, 1, 0)}):Play()
				SliderText.Text = Text .. ": " .. tostring(Value)
				CallbackF(Value)
			end
			RefreshSlider.MouseButton1Down:Connect(RefreshGay)
		end
		
		function Items:TextBox(Text, CallbackF)
			local TextBoxFrame = Instance.new("Frame")
			local TextBoxText = Instance.new("TextLabel")
			local TextBox = Instance.new("TextBox")
			local TextBoxRounding = Instance.new("ImageLabel")
			
			TextBoxFrame.Name = "TextBoxFrame"
			TextBoxFrame.Parent = ItemHolder
			TextBoxFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextBoxFrame.BackgroundTransparency = 1.000
			TextBoxFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
			TextBoxFrame.BorderSizePixel = 0
			TextBoxFrame.Size = UDim2.new(0, 643, 0, 35)
			
			TextBoxText.Name = "TextBoxText"
			TextBoxText.Parent = TextBoxFrame
			TextBoxText.AnchorPoint = Vector2.new(0.5, 0.5)
			TextBoxText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextBoxText.BackgroundTransparency = 1.000
			TextBoxText.Position = UDim2.new(0.335530102, 0, 0.5, 0)
			TextBoxText.Size = UDim2.new(0, 414, 0, 27)
			TextBoxText.Font = Enum.Font.Gotham
			TextBoxText.Text = Text
			TextBoxText.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextBoxText.TextSize = 14.000
			TextBoxText.TextWrapped = true
			TextBoxText.TextXAlignment = Enum.TextXAlignment.Left
			
			TextBox.Parent = TextBoxFrame
			TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextBox.BackgroundTransparency = 1.000
			TextBox.BorderSizePixel = 0
			TextBox.Position = UDim2.new(0.681181967, 0, 0.114285715, 0)
			TextBox.Size = UDim2.new(0, 200, 0, 27)
			TextBox.ZIndex = 3
			TextBox.Font = Enum.Font.Gotham
			TextBox.PlaceholderColor3 = Color3.fromRGB(240, 240, 240)
			TextBox.Text = "Value"
			TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextBox.TextSize = 14.000
			
			TextBoxRounding.Name = "TextBoxRounding"
			TextBoxRounding.Parent = TextBox
			TextBoxRounding.Active = true
			TextBoxRounding.AnchorPoint = Vector2.new(0.5, 0.5)
			TextBoxRounding.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextBoxRounding.BackgroundTransparency = 1.000
			TextBoxRounding.Position = UDim2.new(0.5, 0, 0.5, 0)
			TextBoxRounding.Selectable = true
			TextBoxRounding.Size = UDim2.new(1, 0, 1, 0)
			TextBoxRounding.ZIndex = 2
			TextBoxRounding.Image = "rbxassetid://3570695787"
			TextBoxRounding.ImageColor3 = Color3.fromRGB(29, 29, 29)
			TextBoxRounding.ScaleType = Enum.ScaleType.Slice
			TextBoxRounding.SliceCenter = Rect.new(100, 100, 100, 100)
			TextBoxRounding.SliceScale = 0.080
			
			TextBox.FocusLost:Connect(function()
				CallbackF(TextBox.Text)
				TextBox.Text = ""
				game.TweenService:Create(TextBox.TextBoxRounding, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {ImageColor3 = Color3.fromRGB(29, 29, 29)}):Play()
			end)
			
			TextBox.Focused:Connect(function()
				game.TweenService:Create(TextBox.TextBoxRounding, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {ImageColor3 = Color3.fromRGB(34, 34, 34)}):Play()
			end)
			
			TextBox.MouseEnter:Connect(function()
				game.TweenService:Create(TextBox.TextBoxRounding, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {ImageColor3 = Color3.fromRGB(34, 34, 34)}):Play()
			end)
			
			TextBox.MouseLeave:Connect(function()
				game.TweenService:Create(TextBox.TextBoxRounding, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {ImageColor3 = Color3.fromRGB(29, 29, 29)}):Play()
			end)
		end    
		
		function Items:Toggle(Text, CallbackF)
			local ToggleFrame = Instance.new("Frame")
			local Toggle = Instance.new("TextButton")
			local ToggleOutline = Instance.new("ImageLabel")
			local ToggleFilling = Instance.new("ImageLabel")
			local ToggleText = Instance.new("TextLabel")
			
			ToggleFrame.Name = "ToggleFrame"
			ToggleFrame.Parent = ItemHolder
			ToggleFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ToggleFrame.BackgroundTransparency = 1.000
			ToggleFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
			ToggleFrame.BorderSizePixel = 0
			ToggleFrame.Size = UDim2.new(0, 643, 0, 35)
			
			Toggle.Name = "Toggle"
			Toggle.Parent = ToggleFrame
			Toggle.AnchorPoint = Vector2.new(0, 0.5)
			Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Toggle.BackgroundTransparency = 1.000
			Toggle.BorderColor3 = Color3.fromRGB(27, 42, 53)
			Toggle.BorderSizePixel = 0
			Toggle.Position = UDim2.new(0.951051295, 0, 0.5, 0)
			Toggle.Size = UDim2.new(0, 27, 0, 27)
			Toggle.ZIndex = 3
			Toggle.Font = Enum.Font.Gotham
			Toggle.Text = ""
			Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
			Toggle.TextSize = 14.000
			
			ToggleOutline.Name = "ToggleOutline"
			ToggleOutline.Parent = Toggle
			ToggleOutline.Active = true
			ToggleOutline.AnchorPoint = Vector2.new(0.5, 0.5)
			ToggleOutline.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ToggleOutline.BackgroundTransparency = 1.000
			ToggleOutline.Position = UDim2.new(0.5, 0, 0.5, 0)
			ToggleOutline.Selectable = true
			ToggleOutline.Size = UDim2.new(1, 0, 1, 0)
			ToggleOutline.ZIndex = 2
			ToggleOutline.Image = "rbxassetid://3570695787"
			ToggleOutline.ImageColor3 = Color3.fromRGB(29, 29, 29)
			ToggleOutline.ScaleType = Enum.ScaleType.Slice
			ToggleOutline.SliceCenter = Rect.new(100, 100, 100, 100)
			ToggleOutline.SliceScale = 0.080
			
			ToggleFilling.Name = "ToggleFilling"
			ToggleFilling.Parent = ToggleOutline
			ToggleFilling.Active = true
			ToggleFilling.AnchorPoint = Vector2.new(0.5, 0.5)
			ToggleFilling.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ToggleFilling.BackgroundTransparency = 1.000
			ToggleFilling.Position = UDim2.new(0.5, 0, 0.5, 0)
			ToggleFilling.Selectable = true
			ToggleFilling.ZIndex = 2
			ToggleFilling.Image = "rbxassetid://3570695787"
			ToggleFilling.ImageColor3 = Color3.fromRGB(0, 121, 198)
			ToggleFilling.ScaleType = Enum.ScaleType.Slice
			ToggleFilling.SliceCenter = Rect.new(100, 100, 100, 100)
			ToggleFilling.SliceScale = 0.080
			
			ToggleText.Name = "ToggleText"
			ToggleText.Parent = ToggleFrame
			ToggleText.AnchorPoint = Vector2.new(0.5, 0.5)
			ToggleText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ToggleText.BackgroundTransparency = 1.000
			ToggleText.Position = UDim2.new(0.335530102, 0, 0.5, 0)
			ToggleText.Size = UDim2.new(0, 414, 0, 27)
			ToggleText.Font = Enum.Font.Gotham
			ToggleText.Text = Text
			ToggleText.TextColor3 = Color3.fromRGB(255, 255, 255)
			ToggleText.TextSize = 14.000
			ToggleText.TextWrapped = true
			ToggleText.TextXAlignment = Enum.TextXAlignment.Left
			
			local Toggled = false
			Toggle.MouseButton1Down:Connect(function()
				if Toggled == false then
					Toggled = true
					Toggle.ToggleOutline.ToggleFilling:TweenSize(UDim2.new(1,0,1,0), Enum.EasingDirection.In, Enum.EasingStyle.Quad, 0.2, true)
				else
					Toggled = false
					Toggle.ToggleOutline.ToggleFilling:TweenSize(UDim2.new(0,0,0,0), Enum.EasingDirection.In, Enum.EasingStyle.Quad, 0.2, true)
				end
				
				CallbackF(Toggled)
			end)
			Toggle.MouseEnter:Connect(function()
				if Toggled == true then
					Toggle.ToggleOutline.ToggleFilling:TweenSize(UDim2.new(0.45,0,0.45,0), Enum.EasingDirection.In, Enum.EasingStyle.Quad, 0.2, true)
				else
					Toggle.ToggleOutline.ToggleFilling:TweenSize(UDim2.new(0.45,0,0.45,0), Enum.EasingDirection.In, Enum.EasingStyle.Quad, 0.2, true)
				end
			end)
			Toggle.MouseLeave:Connect(function()
				if Toggled == false then
					Toggle.ToggleOutline.ToggleFilling:TweenSize(UDim2.new(0,0,0,0), Enum.EasingDirection.In, Enum.EasingStyle.Quad, 0.2, true)
				else
					Toggle.ToggleOutline.ToggleFilling:TweenSize(UDim2.new(1,0,1,0), Enum.EasingDirection.In, Enum.EasingStyle.Quad, 0.2, true)
				end	
			end)
			
			
		end
		
		function Items:Section(Text)
			local SectionFrame = Instance.new("Frame")
			local SectionText = Instance.new("TextLabel")
			local Underline = Instance.new("Frame")
			
			SectionFrame.Name = "SectionFrame"
			SectionFrame.Parent = ItemHolder
			SectionFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SectionFrame.BackgroundTransparency = 1.000
			SectionFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
			SectionFrame.BorderSizePixel = 0
			SectionFrame.Size = UDim2.new(0, 643, 0, 35)
			
			SectionText.Name = "SectionText"
			SectionText.Parent = SectionFrame
			SectionText.AnchorPoint = Vector2.new(0.5, 0.5)
			SectionText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SectionText.BackgroundTransparency = 1.000
			SectionText.Position = UDim2.new(0.5, 0, 0.5, 0)
			SectionText.Size = UDim2.new(0, 414, 0, 27)
			SectionText.Font = Enum.Font.Gotham
			SectionText.Text = Text
			SectionText.TextColor3 = Color3.fromRGB(255, 255, 255)
			SectionText.TextSize = 14.000
			SectionText.TextWrapped = true
			
			Underline.Name = "Underline"
			Underline.Parent = SectionText
			Underline.AnchorPoint = Vector2.new(0.5, 0)
			Underline.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Underline.BorderSizePixel = 0
			Underline.Position = UDim2.new(0.5, 0, 0.899999976, 0)
			Underline.Size = UDim2.new(0, 0, 0, 1)	
			
			Underline.Size = UDim2.new(0,SectionText.TextBounds.X + 10, 0, 1)
		end
		
		function Items:Label(Text, Color)
			local LabelFrame = Instance.new("Frame")
			local LabelText = Instance.new("TextLabel")
			
			LabelFrame.Name = "LabelFrame"
			LabelFrame.Parent = ItemHolder
			LabelFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			LabelFrame.BackgroundTransparency = 1.000
			LabelFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
			LabelFrame.BorderSizePixel = 0
			LabelFrame.Size = UDim2.new(0, 643, 0, 35)
			
			LabelText.Name = "LabelText"
			LabelText.Parent = LabelFrame
			LabelText.AnchorPoint = Vector2.new(0.5, 0.5)
			LabelText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			LabelText.BackgroundTransparency = 1.000
			LabelText.Position = UDim2.new(0.503321826, 0, 0.5, 0)
			LabelText.Size = UDim2.new(0, 629, 0, 27)
			LabelText.Font = Enum.Font.Gotham
			LabelText.Text = Text
			LabelText.TextColor3 = Color and Color or Color3.fromRGB(255, 255, 255)
			LabelText.TextSize = 14.000
			LabelText.TextWrapped = true
			LabelText.TextXAlignment = Enum.TextXAlignment.Left
		end
		return Items
	end
	
	return Tabs
end

return Library
