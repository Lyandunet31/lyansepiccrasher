local module = {}
function module:CrashServer()
	if game.PlaceId == 103406621013959 then
		warn"Please equip the fucking duckkk!!!"
		local Interval = 0
		local HideDucks = true

		local WalkingDucks = workspace:WaitForChild("Walking Ducks")

		local Players = cloneref(game:GetService("Players"))
		local LocalPlayer = Players.LocalPlayer
		local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()

		local ReplicatedStorage = cloneref(game:GetService("ReplicatedStorage"))
		local Remotes = ReplicatedStorage:WaitForChild("Remotes")
		local EquippedDuck = Remotes:WaitForChild("EquippedDuck")

		local function HideDuck(Duck)
			if not HideDucks or not Duck:FindFirstChild(LocalPlayer.Name) then
				return
			end

			Duck:Destroy()
		end

		for _, Duck in WalkingDucks:GetChildren() do
			HideDuck(Duck)
		end

		WalkingDucks.ChildAdded:Connect(HideDuck)

		while task.wait(Interval) do
			local Duck = Character:FindFirstChild("Duck")

			if not Duck then
				continue
			end

			EquippedDuck:FireServer(Duck)
		end
		
	else
		warn"Unsupported game"
	end
end

return module
