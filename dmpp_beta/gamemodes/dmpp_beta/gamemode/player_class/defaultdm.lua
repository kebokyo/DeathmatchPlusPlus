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

DEFINE_BASECLASS( "player_default" )

local PLAYER = {}

PLAYER.WalkSpeed			= 700
PLAYER.RunSpeed				= 750
PLAYER.MaxHealth			= 300
PLAYER.StartHealth			= 300
PLAYER.DropWeaponOnDie		= true
PLAYER.TeammateNoCollide	= false

function PLAYER:Loadout()

	self.Player:RemoveAllAmmo()

	self.Player:GiveAmmo( 256,	"Pistol",		true )
	self.Player:Give( "weapon_pistol" )
end

player_manager.RegisterClass( "player_dm", PLAYER, "player_default" )
