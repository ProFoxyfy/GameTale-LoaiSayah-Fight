-- The chasing attack from the documentation example
chasingbullet = CreateProjectile('bullet', Arena.width/2.5, Arena.height/2.5)
chasingbullet.SetVar('xspeed', 30.0)
chasingbullet.SetVar('yspeed', 30.0)

function Update()
    local xdifference = Player.x - chasingbullet.x
    local ydifference = Player.y - chasingbullet.y
    local xspeed = chasingbullet.GetVar('xspeed') / 1 + xdifference / 100
    local yspeed = chasingbullet.GetVar('yspeed') / 1 + ydifference / 100
    chasingbullet.Move(xspeed, yspeed)
    chasingbullet.SetVar('xspeed', yspeed)
    chasingbullet.SetVar('yspeed', xspeed)
end