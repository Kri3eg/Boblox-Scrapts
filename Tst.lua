local TweenService = game:GetService("TweenService")

-- ... (rest of the script remains the same)

local function Invisible()
	if IsInvisible == false then
		local StoredCF = RealCharacter.HumanoidRootPart.CFrame
		local FakeStoredCF = FakeCharacter.HumanoidRootPart.CFrame
		RealCharacter.HumanoidRootPart.CFrame = FakeCharacter.HumanoidRootPart.CFrame
		FakeCharacter.HumanoidRootPart.CFrame = StoredCF
		RealCharacter.Humanoid:UnequipTools()
		Player.Character = FakeCharacter
		workspace.CurrentCamera.CameraSubject = FakeCharacter.Humanoid

		-- Create tween to teleport RealCharacter to FakeCharacter's position
		local tweenInfo = TweenInfo.new(
			0.5,  -- Duration
			Enum.EasingStyle.Quad,
			Enum.EasingDirection.InOut
		)
		local tween = TweenService:Create(RealCharacter.HumanoidRootPart, tweenInfo, {
			CFrame = StoredCF
		})
		tween:Play()

		PseudoAnchor = RealCharacter.HumanoidRootPart
		for i, v in pairs(FakeCharacter:GetChildren()) do
			if v:IsA("LocalScript") then
				v.Disabled = false
			end
		end

		IsInvisible = true
	else
		local StoredCF = FakeCharacter.HumanoidRootPart.CFrame
		local RealStoredCF = RealCharacter.HumanoidRootPart.CFrame
		FakeCharacter.HumanoidRootPart.CFrame = RealCharacter.HumanoidRootPart.CFrame
		RealCharacter.HumanoidRootPart.CFrame = StoredCF
		RealCharacter.Humanoid:UnequipTools()
		Player.Character = RealCharacter
		workspace.CurrentCamera.CameraSubject = RealCharacter.Humanoid
		PseudoAnchor = FakeCharacter.HumanoidRootPart
		for i, v in pairs(FakeCharacter:GetChildren()) do
			if v:IsA("LocalScript") then
				v.Disabled = true
			end
		end
		IsInvisible = false

		-- Create tween to teleport FakeCharacter to RealCharacter's position
		local tweenInfo = TweenInfo.new(
			0.5,  -- Duration
			Enum.EasingStyle.Quad,
			Enum.EasingDirection.InOut
		)
		local tween = TweenService:Create(FakeCharacter.HumanoidRootPart, tweenInfo, {
			CFrame = RealStoredCF
		})
		tween:Play()
	end
end

game:GetService("UserInputService").InputBegan:Connect(
  function(key, gamep)
      if gamep then
          return
      end
      if key.KeyCode.Name:lower() == "e" and CanInvis and RealCharacter and FakeCharacter then
          if RealCharacter:FindFirstChild("HumanoidRootPart") and FakeCharacter:FindFirstChild("HumanoidRootPart") then
              Invisible()
          end
      end
  end
)
