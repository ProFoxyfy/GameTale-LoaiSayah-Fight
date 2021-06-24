local screen_fader = require("Libraries/screen_fade")

-- A basic monster script skeleton you can copy and modify for your own creations.
commands = {"Tell", "Check"}
comments = {"The last time you are gonna meet him...", "...", "It's Thanos but LoaiSayah"}
randomdialogue = {"You are gonna regret EVERYTHING!!!!!", "Dirty sociopath!", "You are gonna fail!", "No-way you are gonna defeat me!"}

sprite = "phase3"
name = "LoaiSayah"
hp = 2000
atk = 100
def = 100
gold = 99
xp = 800
check = {"Very hard to defeat..."}
dialogbubble = "rightlarge" -- See documentation for what bubbles you have available.
canspare = false
cancheck = false


Player.name = "Drem"
Player.atk = 1000000
Player.def = 9999
Player.lv = 69
Player.maxhp = 99
Player.hp = 99

-- Happens after the slash animation but before 
function HandleAttack(attackstatus)
    if attackstatus == -1 then

    else
        -- player did actually attack
    end
end

function HandleCustomCommand(command)
 if command == "TELL" then
 BattleDialogue({"You tell LoaiSayah something...", "[color:ff0000]Turns out you insulted him..."})
 end
 if command == "CHECK" then
 BattleDialogue({"LoaiSayah ATK (INFINITE) DEF ???\nwhat even is this???"})
 end
end

function OnDeath()
screen_fader.FadeOut()
end