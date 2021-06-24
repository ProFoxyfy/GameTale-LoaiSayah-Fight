bullet = CreateProjectile( 'bullet' , 0 , Arena.height/2 )

function Update()
	if bullet.isactive then
		bullet.Move( 0 , -1 )
		if bullet.absy < -15 then bullet.Remove() end
	end
end