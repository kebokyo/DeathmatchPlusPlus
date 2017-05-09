--    Copyright (c) John Lorentzson, Petter Öhlén
--
--    This file is part of DeathmatchPlus.

--    DeathmatchPlus is free software: you can redistribute it and/or modify
--    it under the terms of the GNU General Public License as published by
--    the Free Software Foundation, either version 3 of the License, or
--    (at your option) any later version.

--    DeathmatchPlus is distributed in the hope that it will be useful,
--    but WITHOUT ANY WARRANTY; without even the implied warranty of
--    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--    GNU General Public License for more details.

--    You should have received a copy of the GNU General Public License
--    along with DeathmatchPlus.  If not, see <http://www.gnu.org/licenses/>.

-- I love Stackoverflow

AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
--AddCSLuaFile( "defaultdm.lua" )

include( "shared.lua" )
--include( "defaultdm.lua" )

function GM:Initialize()
--  SourceTV hates me... I hate it too.
--	RunConsoleCommand( "tv_enable", 1 )
--	RunConsoleCommand( "tv_autorecord", 1 )
end

function GM:PlayerInitialSpawn( ply )

--This is for testing reasons only!! NO STEP ON SNEK!!
	local ent = ents.Create( "prop_physics" )
	ent:SetModel( "models/hunter/misc/sphere025x025.mdl" )
	ent:SetPos( Vector( 0, 0, 0 ) )
	ent:Spawn()
--This is for testing reasons only!! NO STEP ON SNEK!!

	--ply:SetTeam( 1 )
	--6 is for dev reasons, set to 5 for final release.
	--ply:Spectate( OBS_MODE_CHASE )
	--ply:SpectateEntity( ent )

end

function GM:PlayerSpawn( ply )
  self.BaseClass:PlayerSpawn( ply )


	-- Randomness
	local r1 = math.random(1,20)
	local r2 = math.random(1,6)
	local r3 = math.random(1,5)

	if ply:Team() == 1 then
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


	--Do some stupid setup things here.
	ply:SetupHands()
	local ammo = GetConVar( "dmp_ammo" )
	local ammoAmmount = ammo:GetInt()
	local meds = GetConVar( "dmp_meds" )
	local medsAmmount = meds:GetInt()
	-- Give the player ammo for all weapons.
	ply:RemoveAllAmmo()
	--This is temporary, no forgitty!!!!
	--ply:Give( "fas2_ifak" )
	--This is temporary, no forgitty!!!!
	ply:GiveAmmo( ammoAmmount, "9x18MM", true )
	ply:GiveAmmo( ammoAmmount, "9x19MM", true )
	ply:GiveAmmo( ammoAmmount, "10x25MM", true )
  ply:GiveAmmo( ammoAmmount, "12 Gauge", true )
	ply:GiveAmmo( ammoAmmount, "23x75MMR", true )
	ply:GiveAmmo( ammoAmmount, ".44 Magnum", true )
	ply:GiveAmmo( ammoAmmount, ".45 ACP", true )
	ply:GiveAmmo( ammoAmmount, ".50 AE", true )
	ply:GiveAmmo( ammoAmmount, ".50 BMG", true )
	ply:GiveAmmo( ammoAmmount, ".357 SIG", true )
	ply:GiveAmmo( ammoAmmount, ".380 ACP", true )
	ply:GiveAmmo( ammoAmmount, ".454 Casull", true )
	ply:GiveAmmo( ammoAmmount, "5.45x39MM", true )
	ply:GiveAmmo( ammoAmmount, "5.56x45MM", true )
	ply:GiveAmmo( ammoAmmount, "7.62x39MM", true )
	ply:GiveAmmo( ammoAmmount, "7.62x51MM", true )
	ply:GiveAmmo( medsAmmount, "Bandages", true )
	ply:GiveAmmo( medsAmmount, "Hemostats", true )
	ply:GiveAmmo( medsAmmount, "Quikclots", true )

	--Explosives have been disabled due to buggyness and ammo problems.
	--ply:GiveAmmo( 10,  "fas2_40mm_frag", true )
	--ply:GiveAmmo( 5, "fas2_ammo_m67", true )

	--hpMulti is a health multiplier.
	local hpMulti = GetConVar( "dmp_healthmultiplier" )
	--enMulti is an armor multiplier.
	local enMulti = GetConVar( "dmp_armormultiplier" )
	--walkSpeed is the walk speed.
	local walkSpeed = GetConVar( "dmp_walkspeed" )
	--runSpeed is the run speed. Comments...
	local runSpeed = GetConVar( "dmp_runspeed" )
	--local flash = GetConVar( "dmp_allow_flashlight" )
	-- Set player attributes
	ply:SetGravity  ( 0.65 )  -- Comments are good.
  ply:SetMaxHealth( 200 * hpMulti:GetInt(), true )
	ply:SetHealth( 100 * hpMulti:GetInt())

	-- These don't work for some reason... I don't know why.
	ply:SetWalkSpeed( 700 )
	ply:SetRunSpeed ( 700 )

	-- This does work however. That's a good.
	ply:SetArmor( 10 * enMulti:GetInt())
	--if flash:GetInt() == 1 then
	--kek. Line 256. I need to put something here but I don't feel like it.
		ply:AllowFlashlight( true )

	--elseif flash:GetInt() == 0 then

	--	ply:AllowFlashlight( false )

	--end

	-- ply:Give( "weapon_ar2" )

--end

end



function KillCounter( victim, killer, weapon )  --Sets up a new function called KillCounter
	local maxkills = GetConVar( "dmp_maxkills" )

	--
	--	This line is for testing only!!! Remove and fix death notifications instead!!!
	--

	PrintMessage(HUD_PRINTTALK, killer:GetName() .. " killed " .. victim:GetName())
	if killer:GetNWInt("killcounter") == maxkills:GetInt() then --If the killcounter variable equals 50 then do something
		if system.IsLinux() == true then

		end
		PrintMessage(HUD_PRINTTALK, "" .. killer:GetName() .. " Wins!")  --! is mandetory.
		timer.Simple(7, function()   --Sets a timer for 10 seconds
  		game.ConsoleCommand("changelevel " ..game.GetMap().. "\n") --Restart the map.
  	end)
  end
            killer:SetNWInt("killcounter", killer:GetNWInt("killcounter") + 1)  --Adds 1 everytime a player is killed.
end

function GM:PlayerDeath( victim, inflictor, attacker )
	if ( victim == attacker ) then
			PrintMessage(HUD_PRINTTALK, killer:GetName() .. " killed themself!"())
	elseif ( victim != attacker ) then
		hook.Add("PlayerDeath","KillCounter", KillCounter)
	end
end
