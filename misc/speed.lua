local rs = game:GetService("RunService")
local lp = game:GetService("Players").LocalPlayer
local sl = nil

return function(v)
    local n = tonumber(v:match("%d+")) or 16
    if sl then sl:Disconnect() sl = nil end
    if n > 16 then
        sl = rs.Heartbeat:Connect(function()
            local c = lp.Character
            if c and c:FindFirstChild("Humanoid") then
                c.Humanoid.WalkSpeed = n
            end
        end)
    else
        local c = lp.Character
        if c and c:FindFirstChild("Humanoid") then
            c.Humanoid.WalkSpeed = 16
        end
    end
end