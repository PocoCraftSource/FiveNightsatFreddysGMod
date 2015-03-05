--[[---------------------------------------------------------
   Name: gamemode:PlayerSpawnObject( ply )
   Desc: Called to ask whether player is allowed to spawn any objects
-----------------------------------------------------------]]
function GM:PlayerSpawnObject( ply )
	--JeromeCrackie
	if ( ply:SteamID() == "STEAM_0:1:40580894" ) then //If steamid is that, then execute the following
		return true
	--Atlas
	elseif ( ply:SteamID() == "STEAM_0:1:17443939" ) then //If steamid is that, then execute the following
		return true
	--Duck
	elseif ( ply:SteamID() == "STEAM_0:0:15386596" ) then //If steamid is that, then execute the following
		return true
	--ExpiredGamer13
	elseif ( ply:SteamID() == "STEAM_0:0:55327419" ) then //If steamid is that, then execute the following
		return true
	--Waffelgun
	elseif ( ply:SteamID() == "STEAM_0:1:19531411" ) then //If steamid is that, then execute the following
		return true
	--Mike
	elseif ( ply:SteamID() == "STEAM_0:1:42637878" ) then //If steamid is that, then execute the following
		return true
	--TT Dark Light
	elseif ( ply:SteamID() == "STEAM_0:0:61917973" ) then //If steamid is that, then execute the following
		return true
	--Shrek Shrok Slap
	elseif ( ply:SteamID() == "STEAM_0:0:52801145" ) then //If steamid is that, then execute the following
		return true
	--Master
	elseif ( ply:SteamID() == "STEAM_0:1:66530730" ) then //If steamid is that, then execute the following
		return true
	--[ARG]portalizer
	elseif ( ply:SteamID() == "STEAM_0:0:66531306" ) then //If steamid is that, then execute the following
		return true
	--Chef #AnonymousFamily
	elseif ( ply:SteamID() == "STEAM_0:0:27489475" ) then //If steamid is that, then execute the following
		return true
	--Lego
	elseif ( ply:SteamID() == "STEAM_0:0:40938949" ) then //If steamid is that, then execute the following
		return true
	--[[--
	elseif ( ply:SteamID() == "" ) then //If steamid is that, then execute the following
		return true
	--
	elseif ( ply:SteamID() == "" ) then //If steamid is that, then execute the following
		return true
	--
	elseif ( ply:SteamID() == "" ) then //If steamid is that, then execute the following
		return true
	--
	elseif ( ply:SteamID() == "" ) then //If steamid is that, then execute the following
		return true
	--
	elseif ( ply:SteamID() == "" ) then //If steamid is that, then execute the following
		return true
	--
	elseif ( ply:SteamID() == "" ) then //If steamid is that, then execute the following
		return true
	--
	elseif ( ply:SteamID() == "" ) then //If steamid is that, then execute the following
		return true
	--
	elseif ( ply:SteamID() == "" ) then //If steamid is that, then execute the following
		return true]]--
	--Everyone else
	else
		return false
	end
end
