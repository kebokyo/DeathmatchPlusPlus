if ( CLIENT ) then
	SWEP.PrintName			= "Shotgun"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 1
	SWEP.ViewModelFlip		= true
	SWEP.ViewModelFOV		= 63
end

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end
	
SWEP.Base = "weapon_base"
SWEP.Category 			= "DeathmatchPlus"
SWEP.PrintName = "Shotgun"	
SWEP.ViewModel		= "models/weapons/v_shot_m3super90.mdl"	
SWEP.WorldModel		= "models/weapons/w_shot_m3super90.mdl"	
SWEP.ReloadSound		= "Weapon_SMG1.Reload"	
SWEP.HoldType 					= "ar2"		

SWEP.Weight		= 40		
SWEP.AutoSwitchTo		= true			
SWEP.Spawnable		= true		

SWEP.Primary.Sound			= Sound("weapons/dmp_shotgun/fire.wav")
SWEP.Primary.Damage		= 8
SWEP.Primary.NumShots		= 8
SWEP.Primary.Recoil			= 3			
SWEP.Primary.Cone			= 8.3
SWEP.Primary.Delay			= 0.9
SWEP.DrawAmmo = true
SWEP.DrawCrosshair = false
SWEP.Primary.ClipSize		= 8		
SWEP.Primary.DefaultClip	= 36	
SWEP.Primary.Force			= 3
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo		= "Buckshot"	
		
SWEP.Secondary.ClipSize		= -1	
SWEP.Secondary.DefaultClip	                  = -1
SWEP.Secondary.Automatic	   = false
SWEP.Secondary.Ammo		= "none"	

SWEP.ShellDelay			= 0.53

SWEP.ShotgunReloading		= true
SWEP.ShotgunFinish		= 0.5
SWEP.ShotgunBeginReload		= 0.5	



function SWEP:Initialize()	
self:SetWeaponHoldType( self.HoldType )		
end

function SWEP:PrimaryAttack()		
	if ( !self:CanPrimaryAttack() ) then return end		
	local bullet = {}	-- Set up the shot
		bullet.Num = self.Primary.NumShots				
		bullet.Src = self.Owner:GetShootPos()			
		bullet.Dir = self.Owner:GetAimVector()			
		bullet.Spread = Vector( self.Primary.Cone / 90, self.Primary.Cone / 			90, 0 )
		bullet.Tracer = self.Primary.Tracer				
		bullet.Force = self.Primary.Force				
		bullet.Damage = 7				
		bullet.AmmoType = self.Primary.Ammo			
			self.Weapon:SetNetworkedBool( "reloading", false )			
		self.Owner:FireBullets( bullet )				
	self.Weapon:SendWeaponAnim( ACT_VM_PRIMARYATTACK )	
	self.Owner:MuzzleFlash()							
	self.Owner:SetAnimation( PLAYER_ATTACK1 )			
	self.Weapon:EmitSound(Sound(self.Primary.Sound))
						self.Weapon:SetNetworkedBool( "reloading", false )
	self.Owner:ViewPunch(Angle( -5, 0, 0, 0 ))
	self:SetNextPrimaryFire( CurTime() + self.Primary.Delay )	
		self:TakePrimaryAmmo(1)
		end

function SWEP:SecondaryAttack()
end

function SWEP:DrawHUD()
	--local x, y

	--x, y = ScrW() / 2.0, ScrH() / 2.0
	
	--local scale = 10 * self.Primary.Cone
	
	--local LastShootTime = self.Weapon:GetNetworkedFloat( "LastShootTime", 0 )
	--scale = scale * (2 - math.Clamp( (CurTime() - LastShootTime) * 5, 0.0, 1.0 ))
	
	--surface.SetDrawColor( 0, 255, 0, 255 )
	
	--local gap = 0.9 * scale
	--local length = gap + 0.4 * scale
	--surface.DrawLine( x - length, y, x - gap, y )
	--surface.DrawLine( x + length, y, x + gap, y )
	--surface.DrawLine( x, y - length, x, y - gap )
	--surface.DrawLine( x, y + length, x, y + gap )

end

function SWEP:Reload()
	
	if ( CLIENT ) then return end
	
	-- Already reloading
	if ( self.Weapon:GetNetworkedBool( "reloading", false ) ) then return end
	
	// Start reloading if we can
	if ( self.Weapon:Clip1() < self.Primary.ClipSize && self.Owner:GetAmmoCount( self.Primary.Ammo ) > 0 ) then
		
		self.Weapon:SetNetworkedBool( "reloading", true )
		self.Weapon:SetVar( "reloadtimer", CurTime() + 0.4 )
		self.Weapon:SendWeaponAnim( ACT_VM_RELOAD )
		self.Owner:DoReloadEvent()
		end
	end


function SWEP:Think()
local ground = self.Owner:GetGroundEntity()
		if self.Owner:KeyDown( IN_FORWARD ) and !self.Owner:KeyDown( IN_DUCK ) and (ground:IsWorld() or ground:IsWorld()) then
			self.Primary.Cone = 6.7
			else
			if self.Owner:KeyDown( IN_BACK ) and self.Owner:KeyDown( IN_DUCK ) and (IsValid(ground) or ground:IsWorld()) then
			self.Primary.Cone = 4 
			else
			if self.Owner:KeyDown( IN_MOVELEFT ) and self.Owner:KeyDown( IN_DUCK ) and (IsValid(ground) or ground:IsWorld()) then
			self.Primary.Cone = 4 
			else
			if self.Owner:KeyDown( IN_MOVERIGHT ) and self.Owner:KeyDown( IN_DUCK ) and (IsValid(ground) or ground:IsWorld()) then
			self.Primary.Cone = 4
			else
			if self.Owner:KeyDown( IN_FORWARD ) and self.Owner:KeyDown( IN_DUCK ) and (IsValid(ground) or ground:IsWorld()) then
			self.Primary.Cone = 4 
			else
			if self.Owner:KeyDown( IN_BACK ) and !self.Owner:KeyDown( IN_DUCK ) and (ground:IsWorld() or ground:IsWorld()) then
			self.Primary.Cone = 6.7
			else
			if self.Owner:KeyDown( IN_MOVELEFT ) and !self.Owner:KeyDown( IN_DUCK ) and (ground:IsWorld() or ground:IsWorld()) then
			self.Primary.Cone = 6.7
			else
			if self.Owner:KeyDown( IN_MOVERIGHT ) and !self.Owner:KeyDown( IN_DUCK ) and (ground:IsWorld() or ground:IsWorld()) then
			self.Primary.Cone = 6.7
			else
			if self.Owner:KeyDown ( IN_DUCK ) and (IsValid(ground) or ground:IsWorld())  then
			self.Primary.Cone = 3.3
			else
			if !ground:IsWorld() or !ground:IsWorld() then
			self.Primary.Cone = 8.3
			else
			self.Primary.Cone = 6.3
							end
							end
							end
							end
							end
							end
							end
							end
							end
							end

	if ( self.Weapon:GetNetworkedBool( "reloading", false ) ) then
	
		if ( self.Weapon:GetVar( "reloadtimer", 0 ) < CurTime() ) then
			
			// Finsished reload -
			if ( self.Weapon:Clip1() >= self.Primary.ClipSize || self.Owner:GetAmmoCount( self.Primary.Ammo ) <= 0 ) then
				self.Weapon:SetNetworkedBool( "reloading", false )
				return
			end
			
			// Next cycle
			self.Weapon:SetVar( "reloadtimer", CurTime() + 0.5 ) 
			self.Weapon:SendWeaponAnim( ACT_VM_RELOAD )
                local AnimationTime = self.Owner:GetViewModel():SequenceDuration()
                self.ReloadingTime = CurTime() + AnimationTime
                self:SetNextPrimaryFire(CurTime() + AnimationTime)
                self:SetNextSecondaryFire(CurTime() + AnimationTime)

			
			// Add ammo
			self.Weapon:SetClip1(  self.Weapon:Clip1() + 1 )
			self.Owner:RemoveAmmo( 1, self.Primary.Ammo, false )
			
			// Finish filling, final pump
			if self.Weapon:Clip1() >= self.Primary.ClipSize then
			self.Weapon:SendWeaponAnim( ACT_SHOTGUN_RELOAD_FINISH )
				self:SetNextPrimaryFire( CurTime() + self:SequenceDuration())
				self:SetNextSecondaryFire( CurTime() + self:SequenceDuration())
				self:NextThink( CurTime() + self:SequenceDuration() )
			else			
			end
		end
	end
end
	
function SWEP:Deploy()				
		self.Weapon:SendWeaponAnim(ACT_VM_DRAW)

	self.Reloadaftershoot = CurTime() + 1
	self.Weapon:SetNextPrimaryFire(CurTime() + 1)

	return true
end

function SWEP:Holster()				
	return true
end

function SWEP:OnRemove()		
end

function SWEP:OnRestore()			
end

function SWEP:Precache()			
end

function SWEP:OwnerChanged()		
end
