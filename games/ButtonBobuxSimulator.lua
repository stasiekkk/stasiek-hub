tps = {
	Fans = Vector3.new(74, 22, 202),
	Games = Vector3.new(74, 22, 172),
	Groups = Vector3.new(74, 22, 142),
	StarCreators = Vector3.new(74, 22, 112),
	BigGames = Vector3.new(74, 22, 82),
	BigGroups = Vector3.new(74, 22, 52),
	Developers = Vector3.new(74, 22, 22),
	MinesSpawn = Vector3.new(9520, 370, -101),
	DungeonsSpawn = Vector3.new(-911, 50, -66391)
}

Scripts:CreateLabel("Button Bobux Simulator")

local l = {}

for key, value in pairs(tps) do
    table.insert(l, key)
end

Scripts:CreateDropdown({
	Name = "Teleports",
	Options = l,
	Callback = function(Value)
		pl.Character.HumanoidRootPart.CFrame = CFrame.new(tps[Value])
	end
})
