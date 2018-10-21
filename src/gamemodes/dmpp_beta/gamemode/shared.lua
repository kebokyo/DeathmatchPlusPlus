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

include( "defaultdm.lua" )

GM.Name = "DeathmatchPlus"
GM.Author = "John Lorentzson, Petter Öhlén"
GM.Email = "bugs.teamdmp@gmail.com"
GM.Website = "127.0.0.1:80"

function GM:Initialize()
	-- This is where the magic happens! Jk, it's not magic, it's just code.
	DeriveGamemode( "sandbox" )
	--team.SetUp( 1, "Anarchy", Color( 208, 0, 255, 255 ) )
	--team.SetUp( 2, "Red", Color( 226, 36, 36, 255 ) )
	--team.SetUp( 3, "Blue", Color( 68, 140, 247, 255 ) )
	--team.SetUp( 4, "Spectator", Color( 149, 158, 173, 255 ) )
	-- player_manager.SetPlayerClass( ply, "player_dm" )
end

function GM:PlayerSpawn( ply )
	-- player_manager.SetPlayerClass( ply, "player_dm" )
end
