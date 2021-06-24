-- A basic monster script skeleton you can copy and modify for your own creations.
commands = {"Tell", "Check"}
comments = {"LoaiSayah has a sword now????", "...", "[color:ff0000]He looks so bloody."}
randomdialogue = {"..."}

sprite = "phase2"
name = "LoaiSayah"
hp = 1000
atk = 500
def = 100
gold = 99
xp = 800
check = {"harder to defeat..."}
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
 BattleDialogue({"LoaiSayah ATK 500 DEF 100\nHe has a sword..."})
 end
end