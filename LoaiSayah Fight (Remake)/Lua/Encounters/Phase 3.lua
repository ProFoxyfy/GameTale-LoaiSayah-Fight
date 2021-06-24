-- A basic encounter script skeleton you can copy and modify for your own creations.

fadetimer = 0
fadescreen = nil

function FadeOut()
    fadescreen = CreateProjectileAbs("black cover", 320, 240)
    fadescreen.sprite.alpha = 0
    fadetimer = 1
end

function OnHit(bullet) end
-- you need this here so the black screen doesn't hurt you

function Update()
    if fadetimer >= 1 then
        fadescreen.sprite.alpha = fadescreen.sprite.alpha + 0.01
        fadetimer = fadetimer + 1
    end
end

music = "phase3" --Either OGG or WAV. Extension is added automatically. Uncomment for custom music.
encountertext = "the last phase...." --Modify as necessary. It will only be read out in the action select screen.
nextwaves = {"gaster_blaster", "bullettest_touhou", "original_attack"}
wavetimer = 4.0
arenasize = {275, 135}
flee = false

function EncounterStarting()
    -- If you want to change the game state immediately, this is the place.
	Inventory.AddCustomItems ({"V. Pie", "Pixel Cream", "Choco", "M. Spaghetti", "R. Candy"}, {0,0,0,0,0})
	Inventory.SetInventory ({"V. Pie", "Pixel Cream", "Choco", "M. Spaghetti", "R. Candy"})
end


autolinebreak = true
SetPPCollision(true)
AllowPlayerDef(true)

deathtext = {
"[voice:v_asgore]im not planning on changing this..."
}

Misc.WindowName = "GameTale: LoaiSayah Fight (Phase 3)"


enemies = {
"LoaiSayah (Phase 3)"
}

enemypositions = {
{0, 0}
}


-- A custom list with attacks to choose from. Actual selection happens in EnemyDialogueEnding(). Put here in case you want to use it.
possible_attacks = {"original_attack", "bullettest_bouncy", "bullettest_touhou"}
	



function EnemyDialogueStarting()
    -- Good location for setting monster dialogue depending on how the battle is going.
end

--function EnemyDialogueEnding()
    -- Good location to fill the 'nextwaves' table with the attacks you want to have simultaneously.
    --nextwaves = { possible_attacks[math.random(#possible_attacks)] }
--end

function DefenseEnding() --This built-in function fires after the defense round ends.
    encountertext = RandomEncounterText() --This built-in function gets a random encounter text from a random enemy.
end

function HandleSpare()
currentdialogue = {"Uhhhh... Are you dilusional?", "You have literally killed almost everyone here", "yet you think you can spare me?", "Unbelievable", "Sorry but this is for the best 'buddy'"}
Player.hp = 0
end

function HandleItem(ItemID)
     if ItemID == "V. PIE" then
	 Player.Heal(35)
	 BattleDialogue({"You ate some deliscous Virtual Pie", "You recovered 35 Hp!"})
	 elseif ItemID == "PIXEL CREAM" then
	 Player.Heal(10)
	 BattleDialogue({"You ate some Pixel cream", "Very sharp", "You recover 10 Hp!"})
	 elseif ItemID == "CHOCO" then
	 Player.Heal(24)
	 BattleDialogue({"Always good", "But it could use some PIE", "You recovered 24 Hp!"})
	 elseif ItemID == "M. SPAGHETTI" then
	 Player.Heal(50)
	 BattleDialogue({"You were about to eat the spaghetti but you saw a note", "You remember this is some of the spaghetti Kadex cooked you, It has mustard on it", "You start reading the note, It says", "HELLO FOLLOWER, IT IS I, THE GREAT KADEXIAN!, I MADE YOU MY LOVELY MUSTARD SPAGHETTI-KADEXIAN", "The spagghetti actually tasted good, You recovered 50 Hp!"})
	 elseif ItemID == "R. CANDY" then
	 Player.Heal(10)
	 BattleDialogue({"You don't know why, but you decided to take of the ground and.......", "[color:ff0000] YOU EAT IT", "You gain 5 hp, good thinking on eating that rock!"})
	end
end

