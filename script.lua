local run = game:GetService("RunService")
local uis = game:GetService("UserInputService")
local players = game:GetService("Players")
local player = players.LocalPlayer
local toggle = true
local w_hold = false
local s_hold = false
local a_hold = false
local d_hold = false
local adv_mov = false

local Configuration = {
    TeamCheck = false, -- if true it wont target your own teammates.
}

local detection =  {

{-5.6, 0, 0};

{-5.6, -0, 0};

{-4.977777777777778, 2.5654879448287655, 0};

{-4.977777777777778, -2.5654879448287655, 0};

{-4.355555555555556, 3.5198204219063687, 0};

{-4.355555555555556, -3.5198204219063687, 0};

{-3.733333333333334, 4.173993557999607, 0};

{-3.733333333333334, -4.173993557999607, 0};

{-3.1111111111111116, 4.656284747985349, 0};

{-3.1111111111111116, -4.656284747985349, 0};

{-2.4888888888888894, 5.016515932274652, 0};

{-2.4888888888888894, -5.016515932274652, 0};

{-1.8666666666666671, 5.279730632859555, 0};

{-1.8666666666666671, -5.279730632859555, 0};

{-1.244444444444445, 5.459977841043987, 0};

{-1.244444444444445, -5.459977841043987, 0};

{-0.6222222222222227, 5.565324743999477, 0};

{-0.6222222222222227, -5.565324743999477, 0};

{-4.440892098500626e-16, 5.6, 0};

{-4.440892098500626e-16, -5.6, 0};

{0.6222222222222218, 5.565324743999477, 0};

{0.6222222222222218, -5.565324743999477, 0};

{1.244444444444444, 5.459977841043987, 0};

{1.244444444444444, -5.459977841043987, 0};

{1.8666666666666663, 5.279730632859555, 0};

{1.8666666666666663, -5.279730632859555, 0};

{2.4888888888888885, 5.016515932274653, 0};

{2.4888888888888885, -5.016515932274653, 0};

{3.1111111111111107, 4.6562847479853495, 0};

{3.1111111111111107, -4.6562847479853495, 0};

{3.733333333333333, 4.173993557999608, 0};

{3.733333333333333, -4.173993557999608, 0};

{4.355555555555555, 3.5198204219063696, 0};

{4.355555555555555, -3.5198204219063696, 0};

{4.977777777777778, 2.5654879448287655, 0};

{4.977777777777778, -2.5654879448287655, 0};

{5.6, 0, 0};

{5.6, -0, 0};

{-5.6, 0, 4.5};

{-5.6, -0, 4.5};

{-4.977777777777778, 2.5654879448287655, 4.5};

{-4.977777777777778, -2.5654879448287655, 4.5};

{-4.355555555555556, 3.5198204219063687, 4.5};

{-4.355555555555556, -3.5198204219063687, 4.5};

{-3.733333333333334, 4.173993557999607, 4.5};

{-3.733333333333334, -4.173993557999607, 4.5};

{-3.1111111111111116, 4.656284747985349, 4.5};

{-3.1111111111111116, -4.656284747985349, 4.5};

{-2.4888888888888894, 5.016515932274652, 4.5};

{-2.4888888888888894, -5.016515932274652, 4.5};

{-1.8666666666666671, 5.279730632859555, 4.5};

{-1.8666666666666671, -5.279730632859555, 4.5};

{-1.244444444444445, 5.459977841043987, 4.5};

{-1.244444444444445, -5.459977841043987, 4.5};

{-0.6222222222222227, 5.565324743999477, 4.5};

{-0.6222222222222227, -5.565324743999477, 4.5};

{-4.440892098500626e-16, 5.6, 4.5};

{-4.440892098500626e-16, -5.6, 4.5};

{0.6222222222222218, 5.565324743999477, 4.5};

{0.6222222222222218, -5.565324743999477, 4.5};

{1.244444444444444, 5.459977841043987, 4.5};

{1.244444444444444, -5.459977841043987, 4.5};

{1.8666666666666663, 5.279730632859555, 4.5};

{1.8666666666666663, -5.279730632859555, 4.5};

{2.4888888888888885, 5.016515932274653, 4.5};

{2.4888888888888885, -5.016515932274653, 4.5};

{3.1111111111111107, 4.6562847479853495, 4.5};

{3.1111111111111107, -4.6562847479853495, 4.5};

{3.733333333333333, 4.173993557999608, 4.5};

{3.733333333333333, -4.173993557999608, 4.5};

{4.355555555555555, 3.5198204219063696, 4.5};

{4.355555555555555, -3.5198204219063696, 4.5};

{4.977777777777778, 2.5654879448287655, 4.5};

{4.977777777777778, -2.5654879448287655, 4.5};

{5.6, 0, 4.5};

{5.6, -0, 4.5};

{-5.6, 0, 7.5};

{-5.6, -0, 7.5};

{-4.977777777777778, 2.5654879448287655, 7.5};

{-4.977777777777778, -2.5654879448287655, 7.5};

{-4.355555555555556, 3.5198204219063687, 7.5};

{-4.355555555555556, -3.5198204219063687, 7.5};

{-3.733333333333334, 4.173993557999607, 7.5};

{-3.733333333333334, -4.173993557999607, 7.5};

{-3.1111111111111116, 4.656284747985349, 7.5};

{-3.1111111111111116, -4.656284747985349, 7.5};

{-2.4888888888888894, 5.016515932274652, 7.5};

{-2.4888888888888894, -5.016515932274652, 7.5};

{-1.8666666666666671, 5.279730632859555, 7.5};

{-1.8666666666666671, -5.279730632859555, 7.5};

{-1.244444444444445, 5.459977841043987, 7.5};

{-1.244444444444445, -5.459977841043987, 7.5};

{-0.6222222222222227, 5.565324743999477, 7.5};

{-0.6222222222222227, -5.565324743999477, 7.5};

{-4.440892098500626e-16, 5.6, 7.5};

{-4.440892098500626e-16, -5.6, 7.5};

{0.6222222222222218, 5.565324743999477, 7.5};

{0.6222222222222218, -5.565324743999477, 7.5};

{1.244444444444444, 5.459977841043987, 7.5};

{1.244444444444444, -5.459977841043987, 7.5};

{1.8666666666666663, 5.279730632859555, 7.5};

{1.8666666666666663, -5.279730632859555, 7.5};

{2.4888888888888885, 5.016515932274653, 7.5};

{2.4888888888888885, -5.016515932274653, 7.5};

{3.1111111111111107, 4.6562847479853495, 7.5};

{3.1111111111111107, -4.6562847479853495, 7.5};

{3.733333333333333, 4.173993557999608, 7.5};

{3.733333333333333, -4.173993557999608, 7.5};

{4.355555555555555, 3.5198204219063696, 7.5};

{4.355555555555555, -3.5198204219063696, 7.5};

{4.977777777777778, 2.5654879448287655, 7.5};

{4.977777777777778, -2.5654879448287655, 7.5};

{5.6, 0, 7.5};

{5.6, -0, 7.5};

{-5.6, 0, -4.5};

{-5.6, -0, -4.5};

{-4.977777777777778, 2.5654879448287655, -4.5};

{-4.977777777777778, -2.5654879448287655, -4.5};

{-4.355555555555556, 3.5198204219063687, -4.5};

{-4.355555555555556, -3.5198204219063687, -4.5};

{-3.733333333333334, 4.173993557999607, -4.5};

{-3.733333333333334, -4.173993557999607, -4.5};

{-3.1111111111111116, 4.656284747985349, -4.5};

{-3.1111111111111116, -4.656284747985349, -4.5};

{-2.4888888888888894, 5.016515932274652, -4.5};

{-2.4888888888888894, -5.016515932274652, -4.5};

{-1.8666666666666671, 5.279730632859555, -4.5};

{-1.8666666666666671, -5.279730632859555, -4.5};

{-1.244444444444445, 5.459977841043987, -4.5};

{-1.244444444444445, -5.459977841043987, -4.5};

{-0.6222222222222227, 5.565324743999477, -4.5};

{-0.6222222222222227, -5.565324743999477, -4.5};

{-4.440892098500626e-16, 5.6, -4.5};

{-4.440892098500626e-16, -5.6, -4.5};

{0.6222222222222218, 5.565324743999477, -4.5};

{0.6222222222222218, -5.565324743999477, -4.5};

{1.244444444444444, 5.459977841043987, -4.5};

{1.244444444444444, -5.459977841043987, -4.5};

{1.8666666666666663, 5.279730632859555, -4.5};

{1.8666666666666663, -5.279730632859555, -4.5};

{2.4888888888888885, 5.016515932274653, -4.5};

{2.4888888888888885, -5.016515932274653, -4.5};

{3.1111111111111107, 4.6562847479853495, -4.5};

{3.1111111111111107, -4.6562847479853495, -4.5};

{3.733333333333333, 4.173993557999608, -4.5};

{3.733333333333333, -4.173993557999608, -4.5};

{4.355555555555555, 3.5198204219063696, -4.5};

{4.355555555555555, -3.5198204219063696, -4.5};

{4.977777777777778, 2.5654879448287655, -4.5};

{4.977777777777778, -2.5654879448287655, -4.5};

{5.6, 0, -4.5};

{5.6, -0, -4.5};

}
local curr_enemy = nil
local rayparams = RaycastParams.new()
rayparams.FilterType = Enum.RaycastFilterType.Whitelist

local function updateWhitelist()
    local whitelist = {}
    local closest = math.huge
    local target = nil
    
    for _, oplayer in pairs(players:GetPlayers()) do
        if Configuration.TeamCheck and player.TeamColor == oplayer.TeamColor then
            -- xx
            continue
        end
        
        local enemy = oplayer.Character
        if player ~= oplayer and enemy and enemy:FindFirstChild("Humanoid") and enemy:FindFirstChild("Head") then
            if (not enemy:FindFirstChild("Torso") or not enemy.Torso.Transparency or enemy.Torso.Transparency <= 0.8) and enemy.Humanoid.Health > 0 then
                local distance = (enemy.Torso.Position - player.Character.Torso.Position).Magnitude
                if closest > distance then
                    closest = distance
                    target = enemy
                end
                for _, part in ipairs(oplayer.Character:GetChildren()) do
                    if part:IsA("BasePart") then
                        table.insert(whitelist, part)
                    end
                end
            end
        end
    end
    curr_enemy = target
    rayparams.FilterDescendantsInstances = whitelist
end

-- Connect input events
uis.InputBegan:Connect(function(input, gameProcessed)
    if input.KeyCode == Enum.KeyCode.E and not gameProcessed then
        toggle = not toggle
    end
    if input.KeyCode == Enum.KeyCode.Q and not gameProcessed then
        adv_mov = not adv_mov
    end
    if input.KeyCode == Enum.KeyCode.W and not gameProcessed then
        w_hold = true
    end
    if input.KeyCode == Enum.KeyCode.S and not gameProcessed then
        s_hold = true
    end
    if input.KeyCode == Enum.KeyCode.A and not gameProcessed then
        a_hold = true
    end
    if input.KeyCode == Enum.KeyCode.D and not gameProcessed then
        d_hold = true
    end
end)

uis.InputEnded:Connect(function(input, gameProcessed)
    if input.KeyCode == Enum.KeyCode.W and not gameProcessed then
        w_hold = false
    end
    if input.KeyCode == Enum.KeyCode.S and not gameProcessed then
        s_hold = false
    end
    if input.KeyCode == Enum.KeyCode.A and not gameProcessed then
        a_hold = false
    end
    if input.KeyCode == Enum.KeyCode.D and not gameProcessed then
        d_hold = false
    end
end)

-- Movement coroutine
coroutine.wrap(function()
    while run.RenderStepped:Wait() do
        local char = player.Character
        if adv_mov and curr_enemy and (curr_enemy.Torso.Position - char.Torso.Position).Magnitude <= 10 and char and char:FindFirstChild("Humanoid") and char.Humanoid.Health > 0 then
            local mv = false
            if w_hold and not (a_hold or d_hold) then
                local distance = (curr_enemy.Torso.Position - char.Torso.Position)
                mv = Vector3.new(distance.X, 0, distance.Z).Unit
            end
            if s_hold and not (a_hold or d_hold) then
                local distance = curr_enemy["Right Arm"].Position - char.Torso.Position
                mv = -Vector3.new(distance.X, 0, distance.Z).Unit
            end
            if mv then
                char.Humanoid:Move(mv)
            end
        end
    end
end)()

-- Camera positioning
while run.Stepped:Wait() do
    local char = player.Character
    if char and char:FindFirstChild("Humanoid") and char.Humanoid.Health > 0 then
        updateWhitelist() -- Update the whitelist for raycast
        
        if toggle then
            local farthestpoint = {nil, 1}
            local closestpoint = {nil, 10}
            for _, v in ipairs(detection) do
                local result = workspace:Raycast(char.Torso.Position, Vector3.new(v[1], v[3], v[2]), rayparams)
                if result then
                    if result.Instance.Parent ~= game and result.Instance.Parent:FindFirstChild("Humanoid") and result.Instance.Parent:FindFirstChild("Humanoid").Health > 0 then
                        local distance = (result.Position - char.Torso.Position).Magnitude
                        if distance > farthestpoint[2] then
                            farthestpoint[1] = result.Position
                            farthestpoint[2] = distance
                        end
                        if distance < closestpoint[2] then
                            closestpoint[1] = result.Position
                            closestpoint[2] = distance
                        end
                    end
                end
            end
            
            if closestpoint[1] and farthestpoint[1] and char.Humanoid.Health > 0 then
                local _, y1, _ = CFrame.new(char.Torso.Position, farthestpoint[1]):ToOrientation()
                local cam = workspace.CurrentCamera
                local x = cam.CFrame:ToOrientation()
                cam.CFrame = CFrame.new(cam.CFrame.Position) * CFrame.Angles(0, y1 + 0.365, 0)
                cam.CFrame *= CFrame.Angles(x, 0, 0)
                run.Stepped:Wait()
                local _, y1, _ = CFrame.new(char.Torso.Position, closestpoint[1]):ToOrientation()
                local cam = workspace.CurrentCamera
                local x = cam.CFrame:ToOrientation()
                cam.CFrame = CFrame.new(cam.CFrame.Position) * CFrame.Angles(0, y1 + 0.365, 0)
                cam.CFrame *= CFrame.Angles(x, 0, 0)
            end
        end
    end
end


