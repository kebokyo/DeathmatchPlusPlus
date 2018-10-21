function pickWeapons()
  -- Randomness
	local r1 = math.random(1,20)
	local r2 = math.random(1,6)
	local r3 = math.random(1,5)



	-- I'm sorry for using 3rd party propriatary weapon addon. I'm working on custom weapons, but they're not ready.
	-- It's going to feel more like Quake once they're in.
	-- Determine Primary
	if r1 == 1 then

		ply:Give( "fas2_ak12" )

	elseif r1 == 2 then

		ply:Give( "fas2_ak47" )
		ply:GiveAmmo( 90, "7.62x39MM", true )

	elseif r1 == 3 then

		ply:Give( "fas2_ak74" )

	elseif r1 == 4 then

		ply:Give( "fas2_m4a1" )

	elseif r1 == 5 then

		ply:Give( "fas2_mp5k" )

	elseif r1 == 6 then

		ply:Give( "fas2_mp5sd6" )

	elseif r1 == 7 then

		ply:Give( "fas2_uzi" )

	elseif r1 == 8 then
		--Explosives have been disabled due to buggyness and ammo problems.
		--ply:Give( "fas2_m79" )
		ply:Give( "fas2_m4a1" )
	elseif r1 == 9 then

		ply:Give( "fas2_ks23" )

	elseif r1 == 10 then

		ply:Give( "fas2_rem870" )

	elseif r1 == 11 then

		ply:Give( "fas2_famas" )

	elseif r1 == 12 then

		ply:Give( "fas2_g36c" )

	elseif r1 == 13 then

		ply:Give( "fas2_m14" )

	elseif r1 == 14 then

		ply:Give( "fas2_m21" )

	elseif r1 == 15 then

		ply:Give( "fas2_m82" )

	elseif r1 == 16 then

		ply:Give( "fas2_sg550" )

	elseif r1 == 17 then

		ply:Give( "fas2_sr25" )

	elseif r1 == 18 then

		ply:Give( "fas2_an94" )

	elseif r1 == 19 then

		ply:Give( "fas2_galil" )

	elseif r1 == 20 then

		ply:Give( "fas2_toz34" )

	end

	-- Determine Secondary
	if r2 == 1 then

		ply:Give( "fas2_deagle" )

	elseif r2 == 2 then

		ply:Give( "fas2_m1911" )

	elseif r2 == 3 then

		ply:Give( "fas2_p226" )

	elseif r2 == 4 then
		--Explosives have been disabled due to buggyness and ammo problems.
		--ply:Give( "fas2_m67" )
		ply:Give( "fas2_p226" )

	elseif r2 == 5 then

		ply:Give( "fas2_ots33" )

	elseif r2 == 6 then
		local medkits = GetConVar( "dmp_allow_medkits" )
		if medkits:GetInt() == 1 then
			ply:Give( "fas2_ifak" )
		else
			ply:Give( "fas2_p226" )
		end
	end

	-- Determine Playermodel
	-- All these models already exist in Garry's Mod. That saves us from messing around with stupid file crap.
	-- I could add more models, but I don't feel like it.
	if r3 == 1 then

		ply:SetModel( "models/player/arctic.mdl" )

	elseif r3 == 2 then

		ply:SetModel( "models/player/combine_soldier.mdl" )

	elseif r3 == 3 then

		ply:SetModel( "models/player/police.mdl" )

	elseif r3 == 4 then

		ply:SetModel( "models/player/combine_super_soldier.mdl" )

	elseif r3 == 5 then

		ply:SetModel( "models/player/gasmask.mdl" )

	end


	--Determine melee weapon
	--Fun fact: The melee weapon you get is based on your character model. Don't tell anyone though.
	if r3 == 1 then

		ply:Give( "fas2_dv2" )

	elseif r3 == 2 then

		ply:Give( "fas2_machete" )

	elseif r3 == 3 then

		ply:Give( "fas2_dv2" )

	elseif r3 == 4 then

		ply:Give( "fas2_machete" )

	elseif r3 == 5 then

		ply:Give( "fas2_dv2" )

	end
end
