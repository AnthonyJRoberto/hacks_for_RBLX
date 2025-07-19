local P=game:GetService("Players")
local RS=game:GetService("RunService")
local player = P.LocalPlayer
local char = player.Character
local head = char:WaitForChild("Head")
local sine = nil
function ManualAnimSetup()
   local BodyVel=Instance.new("BodyVelocity",char:WaitForChild("HumanoidRootPart"))
   return BodyVel
end 
function SetBodyVelocity(BodyVel)
   BodyVel.P = 1250
   BodyVel.Velocity = Vector3.new(0,sine,0)
     
end
local BodyVelocity = ManualAnimSetup()
function loop()
    sine = math.sin(time() * 2.3 / 20.9 + 0.1595)
    SetBodyVelocity(BodyVelocity)
end
function GUI()
   local billboardgui = Instance.new("BillboardGui",head)
   local textlabel = Instance.new("TextLabel",billboardgui)
   textlabel.BackgroundColor3 = Color3.new(0.501960, 0.537254, 0.874509)
   textlabel.Text = "Criminality" 
  
end    
function AnimationSetup()
    local animation = Instance.new("Animation")
        animation.AnimationId = "rbxassetid://97172005"
        local track = char:WaitForChild("Humanoid"):FindFirstChildOfClass("Animator"):LoadAnimation(animation)
        track:Play()
        track:AdjustSpeed(2.5)
        task.wait(1000000000000000000000000)
        track:Stop()
end

function main()
    RS.Stepped:Connect(loop)
    GUI()
    AnimationSetup()
    
end
main()

--//[
--ANIMATIONS ID
  --rbxassetid://97172005 --fly/gulide air



--]\\
