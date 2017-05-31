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

if SERVER then

	AddCSLuaFile ("shared.lua")

	SWEP.Weight = 5

	SWEP.AutoSwitchTo = true
	SWEP.AutoSwitchFrom = false

elseif CLIENT then

	SWEP.PrintName = "Shotgun"

	SWEP.Slot = 3
	SWEP.SlotPos = 2

	SWEP.DrawAmmo = true

	SWEP.DrawCrosshair = false

end


SWEP.Author = ""
SWEP.Contact = ""

SWEP.Category = "DeathmatchPlus"

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

SWEP.ViewModel = "models/weapons/v_IRifle.mdl"
SWEP.WorldModel = "models/weapons/w_IRifle.mdl"

SWEP.Primary.ClipSize = 8
SWEP.Primary.DefaultClip = 8

SWEP.Primary.Automatic = false

SWEP.Primary.Ammo = "Buckshot"

SWEP.Primary.Damage = 15
SWEP.Primary.NumShots = 10
SWEP.Primary.Cone = 0.1
SWEP.Primary.Delay = 1
SWEP.ShellDelay	= 0.05
SWEP.Primary.Spread = 0.5


SWEP.Pistol	= false
SWEP.Rifle	= false
SWEP.Shotgun	= true
SWEP.Sniper	= false


SWEP.HoldType	= "ar2"

local ShootSound = ( "Weapon_SMG1.Single" )

function SWEP:Reload()
end

function SWEP:Think()
end
