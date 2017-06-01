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

AddCSLuaFile( "shared.lua" )
include( "shared.lua" )
AddCSLuaFile( "defaultdm.lua" )
include( "defaultdm.lua" )

function GM:PlayerSpawn( ply )
	--player_manager.SetPlayerClass( ply, "player_dm" )
end
