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




-- Welcome to init.lua! Sorry for my inconsistant comments(some have spaces first, others don't).
-- I hope you don't get too much pain from reading this code. I hope you got this from github.
-- You shouldn't go around and decompiling other peoples code!
-- Also, you might find a lot of out commented lines of code. When something didn't work, I just commented it out.
-- Yes, I'm lazy. I know.
-- Anyways, enjoy my crappy code!



AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )


include( "shared.lua" )
include( "weaponpick.lua" )


function GM:Initialize()
	--Put something here if it's needed.
end

function GM:PlayerInitialSpawn( ply )

--This is for testing reasons only!!
	--local ent = ents.Create( "prop_physics" )
	--ent:SetModel( "models/hunter/misc/sphere025x025.mdl" )
	--ent:SetPos( Vector( 0, 0, 0 ) )
	--ent:Spawn()
--This is for testing reasons only!!


end

function GM:PlayerSpawn( ply )
  self.BaseClass:PlayerSpawn( ply )


	--Weapons
	hook.Add(pickWeapons)

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

	--Give the player all the ammo.
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
	ply:SetGravity  ( 0.50 )  -- Comments are good.
	ply:SetMaxHealth( 200 * hpMulti:GetInt(), true )
	ply:SetHealth( 100 * hpMulti:GetInt())

	-- These don't work for some reason... I don't know why.
	--ply:SetWalkSpeed( 700 )
	--ply:SetRunSpeed ( 700 )

	-- This does work however. That's a good.
	ply:SetArmor( 10 * enMulti:GetInt())
	--if flash:GetInt() == 1 then
	--kek. Line 256. I need to put something here but I don't feel like it.
		ply:AllowFlashlight( true )

	--elseif flash:GetInt() == 0 then

	--	ply:AllowFlashlight( false )

	--end

	-- ply:Give( "weapon_a2" )

--end

end




function KillCounter( victim, killer, weapon )  -- Set up the KillCounter function.
	local maxkills = GetConVar( "dmp_maxkills" )

	--
	--	This line is for testing only!!! Remove and fix death notifications instead!!!
	--

	PrintMessage(HUD_PRINTTALK, killer:GetName() .. " killed " .. victim:GetName())
	if killer:GetNWInt("killcounter") == maxkills:GetInt() then --If the killcounter variable equals 50 then do something
		if system.IsLinux() == true then
			--PrintMessage(HUD_PRINTTALK, killer:GetName() .. ": I would like to interject for a moment. What you're reffering to as Linux, is in fact, GNU/Linux, or as I’ve recently taken to calling it, GNU plus Linux. Linux is not an operating system unto itself, but rather another free component of a fully functioning GNU system made useful by the GNU corelibs, shell utilities and vital system components comprising a full OS as defined by POSIX.")
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
