--[[---------------------------------------------------------
   Name: gamemode:PlayerSpawnNPC( ply, npc_type )
   Desc: Return true if player is allowed to spawn the NPC
-----------------------------------------------------------]]
function GM:PlayerSpawnNPC( ply, npc_type, equipment )
	--JeromeCrackie
	if ( ply:SteamID() == "STEAM_0:1:40580894" ) then //If steamid is that, then execute the following
		--return LimitReachedProcess( ply, "npcs" )
		return true
	--Atlas
	elseif ( ply:SteamID() == "STEAM_0:1:17443939" ) then //If steamid is that, then execute the following
		--return LimitReachedProcess( ply, "npcs" )
		return true
	--Duck
	elseif ( ply:SteamID() == "STEAM_0:0:15386596" ) then //If steamid is that, then execute the following
		--return LimitReachedProcess( ply, "npcs" )
		return true
	--ExpiredGamer13
	elseif ( ply:SteamID() == "STEAM_0:0:55327419" ) then //If steamid is that, then execute the following
		--return LimitReachedProcess( ply, "npcs" )
		return true
	--Waffelgun
	elseif ( ply:SteamID() == "STEAM_0:1:19531411" ) then //If steamid is that, then execute the following
		--return LimitReachedProcess( ply, "npcs" )
		return true
	--Mike
	elseif ( ply:SteamID() == "STEAM_0:1:42637878" ) then //If steamid is that, then execute the following
		--return LimitReachedProcess( ply, "npcs" )
		return true
	--TT Dark Light
	elseif ( ply:SteamID() == "STEAM_0:0:61917973" ) then //If steamid is that, then execute the following
		--return LimitReachedProcess( ply, "npcs" )
		return true
	--Shrek Shrok Slap
	elseif ( ply:SteamID() == "STEAM_0:0:52801145" ) then //If steamid is that, then execute the following
		--return LimitReachedProcess( ply, "npcs" )
		return true
	--Master
	elseif ( ply:SteamID() == "STEAM_0:1:66530730" ) then //If steamid is that, then execute the following
		--return LimitReachedProcess( ply, "npcs" )
		return true
	--[ARG]portalizer
	elseif ( ply:SteamID() == "STEAM_0:0:66531306" ) then //If steamid is that, then execute the following
		--return LimitReachedProcess( ply, "npcs" )
		return true
	--Chef #AnonymousFamily
	elseif ( ply:SteamID() == "STEAM_0:0:27489475" ) then //If steamid is that, then execute the following
		--return LimitReachedProcess( ply, "npcs" )
		return true
	--Lego
	elseif ( ply:SteamID() == "STEAM_0:0:40938949" ) then //If steamid is that, then execute the following
		return true
	--[[--
	elseif ( ply:SteamID() == "" ) then //If steamid is that, then execute the following
		--return LimitReachedProcess( ply, "npcs" )
		return true
	--
	elseif ( ply:SteamID() == "" ) then //If steamid is that, then execute the following
		--return LimitReachedProcess( ply, "npcs" )
		return true
	--
	elseif ( ply:SteamID() == "" ) then //If steamid is that, then execute the following
		--return LimitReachedProcess( ply, "npcs" )
		return true
	--
	elseif ( ply:SteamID() == "" ) then //If steamid is that, then execute the following
		--return LimitReachedProcess( ply, "npcs" )
		return true
	--
	elseif ( ply:SteamID() == "" ) then //If steamid is that, then execute the following
		--return LimitReachedProcess( ply, "npcs" )
		return true
	--
	elseif ( ply:SteamID() == "" ) then //If steamid is that, then execute the following
		--return LimitReachedProcess( ply, "npcs" )
		return true
	--
	elseif ( ply:SteamID() == "" ) then //If steamid is that, then execute the following
		--return LimitReachedProcess( ply, "npcs" )
		return true
	--
	elseif ( ply:SteamID() == "" ) then //If steamid is that, then execute the following
		--return LimitReachedProcess( ply, "npcs" )
		return true]]--
	--Everyone else
	else
		return false
	end
end
