spawntimer = 0
bullets = {}

function Update()

	spawntimer = spawntimer + 1
	
	if spawntimer%60 == 0 then
		local bullet = CreateProjectile( 'bullet' , 0 , Arena.height/2 )
		table.insert(bullets,bullet)
	end
	
	for i = 1, #bullets do
		local bullet = bullets[i]
		if bullet.isactive then
			bullet.Move( 0 , -1 )
			if bullet.absy < -15 then bullet.Remove() end
		end
	end
	
end