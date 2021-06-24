blasters = require("Libraries/gaster_blasters")
local blaster1 = blasters.New(320, 480, 320, 300, 0, 0)
blaster1.color32 = {255,0,0}
function blaster1.OnBeam(bullet)
    bullet["color"] = "red"
    bullet.sprite.color32 = {255,0,0}
end
function OnHit(bullet)
    if bullet["color"] == "red" then
        Player.Hurt(4,0)
    end
end
function Update()
blasters.Update()
end