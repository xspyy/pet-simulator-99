-- xspy <3
chestsn = {
    "Animated",
    }
local function contains(table, val)
   for i=1,#table do
      if table[i] == val then return true end
   end
   return false
end
while true do
task.wait()
for __,v in pairs(game.Workspace["__THINGS"].__INSTANCE_CONTAINER.Active.Digsite.Important.ActiveChests:GetChildren()) do
    if v:FindFirstChild("ESP") then v:FindFirstChild("ESP"):Destroy() end
    if contains(chestsn, v.Name) then
        if v.Name == "Animated" then
            tcolor = Color3.fromRGB(222, 184, 135)
        end

        local a = Instance.new("BillboardGui",v)
        a.Name = "ESP"
        a.Size = UDim2.new(5,0, 5,0)
        a.AlwaysOnTop = true
        local b = Instance.new("Frame",a)
        b.Size = UDim2.new(1,0, 1,0)
        b.BackgroundTransparency = 0.80
        b.BorderSizePixel = 0
        b.BackgroundColor3 = tcolor
        local c = Instance.new('TextLabel',b)
        c.Size = UDim2.new(1,0,1,1)
        c.BorderSizePixel = 0
        c.TextSize = 17
        c.Text = "Chest"
        c.BackgroundTransparency = 1
        c.TextColor3 = tcolor
        c.TextStrokeColor3 = Color3.fromRGB(6, 6, 6)
        c.TextStrokeTransparency = 0.7
    end
end
end
-- xspy <3
