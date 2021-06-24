-- A basic monster script skeleton you can copy and modify for your own creations.
comments = {"Easily defeatable.......?", "Not gonna die easily...", "Using his full power"}
commands = {"Meme", "Train", "Cry", "Post"}
randomdialogue = {"Survive this!", "No way you can no-hit this!", "Time to die!", "Don't even think that you can win!"}

sprite = "phase1"
name = "LoaiSayah"
hp = 1100
atk = 50
def = 0
gold = 99
xp = 800
check = "[color:ff0000] Quite a poweful enemy, but you are easy-to-smash"
dialogbubble = "rightlarge" -- See documentation for what bubbles you have available.
canspare = false
cancheck = true


Player.name = "Drem"
Player.atk = 100
Player.def = 0
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

memecounter = 0

-- This handles the commands; all-caps versions of the commands list you have above.
function HandleCustomCommand(command)
	 if command == "TRAIN" then
     currentdialogue = {"Don't think that because you are a little stronger you can defeat me!", "Besides, I have my ways of lowering you attack.... ", "[color:ff0000] :):):):):):):)"}
	 BattleDialog({"You train yourself to get a higher atk", "[color:ff0000] But you realise that Kadex is a shitty coder and that you can't get a higher atk yet", "ProFoxyfy is gonna increase your atk lol"})
	 Player.atk = 90
	 Player.maxhp = 200
	 comments = {"I don't think it worked lol..."}
     elseif command == "CRY" then
     currentdialogue = {"Awe, I can't fight a crying kid, it would be kinda devilish", "[color:ff0000] OR MAYBE I CAN", "Just joking, although I was set on killing you before, now I can't really do that", "So uh, I'll spare you I guess "}
	 BattleDialog({"You cry like a little wimpy baby", "Come on Kadex, stop doing stuff like that!", "Kadex:Nope, now you are a stinky one too", "You cry like a little wimpy stinky baby that wet his diaper","ProFoxyfy:Who said that?", "Your defense dropped because you look like a baby..."})
	 Player.def = 0
	 canspare = true
	 elseif command == "POST" then
	 BattleDialog({"You post something random....", "i don't think this is intended lol"})
	elseif command == "MEME" then
     if memecounter == 0 then
	 currentdialogue = {"Quite a weak meme man"}
	 BattleDialog({"You show LoaiSayah a 3 year old meme from reddit"})
	 comments = {"Maybe try using better memes"}
	 elseif memecounter == 1 then
	 currentdialogue = {"A bit better than the last one, but not that good"}
	 BattleDialog({"You show LoaiSayah a why are you gay meme"})
	 comments = {"You should have used a better video for that meme"}
	 elseif memecounter == 2 then
	 currentdialogue = {"The dialogue got blocked out with that watermark, You must be a beginner memer"}
	 BattleDialog({"You show LoaiSayah a mematic meme but you forgot about the watermark"})
	 comments = {"You should have used a different meme creator, that one sucks... I think?"}
	 elseif memecounter == 3 then
	 currentdialogue = {"That was actually pretty good, not the best but pretty good"}
	 BattleDialog({"You show LoaiSayah a meme about School, it was from that weird YT channel"})
	 comments = {"LoaiSayah looks like he actually like that meme, Good job"}
	 elseif memecounter == 4 then
	 currentdialogue = {"Not cool dude, I kinda trusted you....", "[color:ffff00] DON'T THINK YOU CAN RICKROLL ME AGAIN"}
	 BattleDialog({"You asked LoaiSayah to check out your YT", "[color:ff0000] But you made the link go to Never gonna give you up as a prank"})
	 comments = {"LoaiSayah seems to have raised his defence and guard, now he takes less dmg!"}
	 def = 65
	 Player.atk = 70
	 elseif memecounter > 4 then
	 currentdialogue = {"Don't think you can meme at me again buddy", "[color:ff0000] [effect:shake,2.0] YOU WON'T FOOL ME AGAIN"}
	 BattleDialog({"You try to show LoaiSayah a 1st place meme that recently won 1st prize in the meme subreddit", "But sadly he won't accept"})
	 comments = {"Not gonna take anymore memes"}
	 Player.atk = 69
	 def = 68
	end
	memecounter = memecounter + 1
	end
end