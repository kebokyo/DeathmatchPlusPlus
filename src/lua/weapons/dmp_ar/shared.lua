AddCSLuaFile()

AddCSLuaFile ("shared.lua")

SWEP.Weight = 5

SWEP.AutoSwitchTo = true
SWEP.AutoSwitchFrom = false



SWEP.PrintName = "Assault Rifle"

SWEP.Slot = 3
SWEP.SlotPos = 1

SWEP.DrawAmmo = true
SWEP.DrawCrosshair = true





SWEP.Category = "DeathmatchPlus"

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

SWEP.ViewModel = "models/weapons/v_IRifle.mdl"
SWEP.WorldModel = "models/weapons/w_IRifle.mdl"

SWEP.Primary.ClipSize = 35
SWEP.Primary.DefaultClip = 35

SWEP.Primary.Automatic = true

SWEP.Primary.Ammo = "SMG1"

SWEP.Primary.Damage = 15
SWEP.Primary.NumShots = 1
SWEP.Primary.Cone = 0.1
SWEP.Primary.Delay = 0.5
SWEP.ShellDelay	= 0.05

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Ammo = "none"
SWEP.Secondary.Automatic = false

SWEP.ShouldDropOnDie = true

SWEP.Pistol	 = false
SWEP.Rifle	 = true
SWEP.Shotgun = false
SWEP.Sniper	 = false


SWEP.HoldType	= "ar2"

local ShootSound = ( "Weapon_SMG1.Single" )

function SWEP:Reload()
end

function SWEP:Think()
end
