    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Pet Sim X Hub", "BloodTheme")

-----------------------Egg---------------------


-----------------------Egg---------------------
-------------------------------------------------------
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Credits")
  local gamepass = Main:NewSection("Unlock All gamepasses")
-------------------------------------------------------
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")
-------------------------------------------------------
 local Fram = Window:NewTab("Framing")
 local FramSection = Fram:NewSection("Framing")
--------------------------------------
 local Egg = Window:NewTab("Eggs")
 local EggSection = Egg:NewSection("Eggs")
-------------------------------------------------------

 local Redeem = Window:NewTab("Redeem")
 local RedeemSection = Redeem:NewSection("RANKS/VIP")
-------------------------------------------------------

 local Settings = Window:NewTab("Settings")
 local SettingsSection = Settings:NewSection("KeyWord to hide Hub")
----------------------------Egg--------------------
   gamepass:NewToggle("Click To get gamepasses", "Unlock All gamepasses", function(v)
end)
   gamepass:NewButton("Click To get gamepasses", "Unlock All gamepasses", function(v)
end)
    MainSection:NewDropdown("Give Gun", "Gives the localplayer a gun", {"M9", "Remington 870", "AK-47"}, function(v)
        local A_1 = game:GetService("Workspace")["Prison_ITEMS"].giver[v].ITEMPICKUP
        local Event = game:GetService("Workspace").Remote.ItemHandler
        Event:InvokeServer(A_1)
    end)
  
    -- PLAYER


    PlayerSection:NewSlider("Walkspeed", "Changes the walkspeed", 250, 16, function(v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end)

    PlayerSection:NewSlider("Jumppower", "Changes the jumppower", 250, 50, function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end)
