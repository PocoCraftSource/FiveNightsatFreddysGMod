
--AddCSLuaFile( "cl_spawnmenu.lua" )
AddCSLuaFile( "specialchars.lua" )
--include( 'spawnmenu/spawnmenu.lua' )
--include( 'cl_spawnmenu.lua' )

function CheckSpecialCharacters( ply ) //This function is called upon on GM:PlayerInitialSpawn
 
 
//Here we add our characters which are special.
//I left an example with what I have
 
	--JeromeCrackie
	if ( ply:SteamID() == "STEAM_0:1:40580894" ) then //If steamid is that, then execute the following
 
		ply:PrintMessage( HUD_PRINTTALK, "Welcome back, " .. ply:Nick() .. "\nYou connected under the IP: " .. ply:IPAddress() ) // Gives the message
		ply:SetTeam( 3 ) //Set it to this team, look in shared.lua for this one.
		// He should recieve the following weapons
		ply:Give( "weapon_physgun" )
		ply:Give( "defense_gun" )
		ply:Give( "defense_gun_nerfed" )
		ply:Give( "defense_gun_op" )
	//For other characters, use elseif for example
	--Atlas
	elseif (ply:SteamID() == "STEAM_0:1:17443939" ) then //If steamid is that, then execute the following
 
		ply:PrintMessage( HUD_PRINTTALK, "Welcome back, " .. ply:Nick() .. "\nYou connected under the IP: " .. ply:IPAddress() ) // Gives the message
		ply:SetTeam( 3 ) //Set it to this team, look in shared.lua for this one.
		// He should recieve the following weapons
		ply:Give( "weapon_physgun" )
		ply:Give( "defense_gun" )
		ply:Give( "defense_gun_nerfed" )
		ply:Give( "defense_gun_op" )
	//For other characters, use elseif for example
	--Duck
	elseif (ply:SteamID() == "STEAM_0:0:15386596" ) then //If steamid is that, then execute the following
 
		ply:PrintMessage( HUD_PRINTTALK, "Welcome back, " .. ply:Nick() .. "\nYou connected under the IP: " .. ply:IPAddress() ) // Gives the message
		ply:SetTeam( 3 ) //Set it to this team, look in shared.lua for this one.
		// He should recieve the following weapons
		ply:Give( "weapon_physgun" )
		ply:Give( "defense_gun" )
		ply:Give( "defense_gun_nerfed" )
		ply:Give( "defense_gun_op" )
	//For other characters, use elseif for example
	--Mr. Floppy Disk
	elseif (ply:SteamID() == "STEAM_0:0:56650465" ) then //If steamid is that, then execute the following
 
		ply:PrintMessage( HUD_PRINTTALK, "Welcome back, " .. ply:Nick() .. "\nYou connected under the IP: " .. ply:IPAddress() ) // Gives the message
		ply:SetTeam( 3 ) //Set it to this team, look in shared.lua for this one.
		// He should recieve the following weapons
		ply:Give( "weapon_physgun" )
		ply:Give( "defense_gun" )
		ply:Give( "defense_gun_nerfed" )
		ply:Give( "defense_gun_op" )
	//For other characters, use elseif for example
	--Lego
	elseif (ply:SteamID() == "STEAM_0:0:40938949" ) then //If steamid is that, then execute the following
 
		ply:PrintMessage( HUD_PRINTTALK, "Welcome back, " .. ply:Nick() .. "\nYou connected under the IP: " .. ply:IPAddress() ) // Gives the message
		ply:SetTeam( 3 ) //Set it to this team, look in shared.lua for this one.
		// He should recieve the following weapons
		ply:Give( "weapon_physgun" )
		ply:Give( "defense_gun" )
		ply:Give( "defense_gun_nerfed" )
		ply:Give( "defense_gun_op" )
	//For other characters, use elseif for example
	--Shrek Shrok Slap
	elseif (ply:SteamID() == "STEAM_0:0:52801145" ) then //If steamid is that, then execute the following
 
		ply:PrintMessage( HUD_PRINTTALK, "Welcome back, " .. ply:Nick() .. "\nYou connected under the IP: " .. ply:IPAddress() ) // Gives the message
		ply:SetTeam( 3 ) //Set it to this team, look in shared.lua for this one.
		// He should recieve the following weapons
		ply:Give( "weapon_physgun" )
		ply:Give( "defense_gun" )
		ply:Give( "defense_gun_nerfed" )
		ply:Give( "defense_gun_op" )
	//For other characters, use elseif for example
	--Mike
	elseif (ply:SteamID() == "STEAM_0:1:42637878" ) then //If steamid is that, then execute the following
 
		ply:PrintMessage( HUD_PRINTTALK, "Welcome back, " .. ply:Nick() .. "\nYou connected under the IP: " .. ply:IPAddress() ) // Gives the message
		ply:SetTeam( 3 ) //Set it to this team, look in shared.lua for this one.
		// He should recieve the following weapons
		ply:Give( "weapon_physgun" )
		ply:Give( "defense_gun" )
		ply:Give( "defense_gun_nerfed" )
		ply:Give( "defense_gun_op" )
	//For other characters, use elseif for example
	--Waffelgun
	elseif (ply:SteamID() == "STEAM_0:1:19531411" ) then //If steamid is that, then execute the following
 
		ply:PrintMessage( HUD_PRINTTALK, "Welcome back, " .. ply:Nick() .. "\nYou connected under the IP: " .. ply:IPAddress() ) // Gives the message
		ply:SetTeam( 3 ) //Set it to this team, look in shared.lua for this one.
		// He should recieve the following weapons
		ply:Give( "weapon_physgun" )
		ply:Give( "defense_gun" )
		ply:Give( "defense_gun_nerfed" )
		ply:Give( "defense_gun_op" )
	//For other characters, use elseif for example
	--ExpiredGamer13
	elseif (ply:SteamID() == "STEAM_0:0:55327419" ) then //If steamid is that, then execute the following
 
		ply:PrintMessage( HUD_PRINTTALK, "Welcome back, " .. ply:Nick() .. "\nYou connected under the IP: " .. ply:IPAddress() ) // Gives the message
		ply:SetTeam( 3 ) //Set it to this team, look in shared.lua for this one.
		// He should recieve the following weapons
		ply:Give( "weapon_physgun" )
		ply:Give( "defense_gun" )
		ply:Give( "defense_gun_nerfed" )
		ply:Give( "defense_gun_op" )
	//For other characters, use elseif for example
	--TT Dark Light
	elseif (ply:SteamID() == "STEAM_0:0:61917973" ) then //If steamid is that, then execute the following
 
		ply:PrintMessage( HUD_PRINTTALK, "Welcome back, " .. ply:Nick() .. "\nYou connected under the IP: " .. ply:IPAddress() ) // Gives the message
		ply:SetTeam( 3 ) //Set it to this team, look in shared.lua for this one.
		// He should recieve the following weapons
		ply:Give( "weapon_physgun" )
		ply:Give( "defense_gun" )
		ply:Give( "defense_gun_nerfed" )
		ply:Give( "defense_gun_op" )
	//For other characters, use elseif for example
	--[ARG]portalizer
	elseif (ply:SteamID() == "STEAM_0:0:66531306" ) then //If steamid is that, then execute the following
 
		ply:PrintMessage( HUD_PRINTTALK, "Welcome back, " .. ply:Nick() .. "\nYou connected under the IP: " .. ply:IPAddress() ) // Gives the message
		ply:SetTeam( 3 ) //Set it to this team, look in shared.lua for this one.
		// He should recieve the following weapons
		ply:Give( "weapon_physgun" )
		ply:Give( "defense_gun" )
		ply:Give( "defense_gun_nerfed" )
		ply:Give( "defense_gun_op" )
	//For other characters, use elseif for example
	--Master
	elseif (ply:SteamID() == "STEAM_0:1:66530730" ) then //If steamid is that, then execute the following
 
		ply:PrintMessage( HUD_PRINTTALK, "Welcome back, " .. ply:Nick() .. "\nYou connected under the IP: " .. ply:IPAddress() ) // Gives the message
		ply:SetTeam( 3 ) //Set it to this team, look in shared.lua for this one.
		// He should recieve the following weapons
		ply:Give( "weapon_physgun" )
		ply:Give( "defense_gun" )
		ply:Give( "defense_gun_nerfed" )
		ply:Give( "defense_gun_op" )
	//For other characters, use elseif for example
	--Chef #AnonymousFamily
	elseif (ply:SteamID() == "STEAM_0:0:27489475" ) then //If steamid is that, then execute the following
 
		ply:PrintMessage( HUD_PRINTTALK, "Welcome back, " .. ply:Nick() .. "\nYou connected under the IP: " .. ply:IPAddress() ) // Gives the message
		ply:SetTeam( 3 ) //Set it to this team, look in shared.lua for this one.
		// He should recieve the following weapons
		ply:Give( "weapon_physgun" )
		ply:Give( "defense_gun" )
		ply:Give( "defense_gun_nerfed" )
		ply:Give( "defense_gun_op" )
	//For other characters, use elseif for example
	--Michael
	elseif (ply:SteamID() == "STEAM_0:0:57921646" ) then //If steamid is that, then execute the following
 
		ply:PrintMessage( HUD_PRINTTALK, "Welcome back, " .. ply:Nick() .. "\nYou connected under the IP: " .. ply:IPAddress() ) // Gives the message
		ply:SetTeam( 3 ) //Set it to this team, look in shared.lua for this one.
		// He should recieve the following weapons
		ply:Give( "weapon_physgun" )
		--ply:Give( "defense_gun" )
		--ply:Give( "defense_gun_nerfed" )
		--ply:Give( "defense_gun_op" )
	//For other characters, use elseif for example
	--[[--
	elseif (ply:SteamID() == "" ) then //If steamid is that, then execute the following
 
		ply:PrintMessage( HUD_PRINTTALK, "Welcome back, " .. ply:Nick() .. "\nYou connected under the IP: " .. ply:IPAddress() ) // Gives the message
		ply:SetTeam( 3 ) //Set it to this team, look in shared.lua for this one.
		// He should recieve the following weapons
		ply:Give( "weapon_physgun" )
		ply:Give( "defense_gun" )
		ply:Give( "defense_gun_nerfed" )
		ply:Give( "defense_gun_op" )
	//For other characters, use elseif for example
	--
	elseif (ply:SteamID() == "" ) then //If steamid is that, then execute the following
 
		ply:PrintMessage( HUD_PRINTTALK, "Welcome back, " .. ply:Nick() .. "\nYou connected under the IP: " .. ply:IPAddress() ) // Gives the message
		ply:SetTeam( 3 ) //Set it to this team, look in shared.lua for this one.
		// He should recieve the following weapons
		ply:Give( "weapon_physgun" )
		ply:Give( "defense_gun" )
		ply:Give( "defense_gun_nerfed" )
		ply:Give( "defense_gun_op" )
	//For other characters, use elseif for example
	--
	elseif (ply:SteamID() == "" ) then //If steamid is that, then execute the following
 
		ply:PrintMessage( HUD_PRINTTALK, "Welcome back, " .. ply:Nick() .. "\nYou connected under the IP: " .. ply:IPAddress() ) // Gives the message
		ply:SetTeam( 3 ) //Set it to this team, look in shared.lua for this one.
		// He should recieve the following weapons
		ply:Give( "weapon_physgun" )
		ply:Give( "defense_gun" )
		ply:Give( "defense_gun_nerfed" )
		ply:Give( "defense_gun_op" )
	//For other characters, use elseif for example
	--
	elseif (ply:SteamID() == "" ) then //If steamid is that, then execute the following
 
		ply:PrintMessage( HUD_PRINTTALK, "Welcome back, " .. ply:Nick() .. "\nYou connected under the IP: " .. ply:IPAddress() ) // Gives the message
		ply:SetTeam( 3 ) //Set it to this team, look in shared.lua for this one.
		// He should recieve the following weapons
		ply:Give( "weapon_physgun" )
		ply:Give( "defense_gun" )
		ply:Give( "defense_gun_nerfed" )
		ply:Give( "defense_gun_op" )
	//For other characters, use elseif for example
	--
	elseif (ply:SteamID() == "" ) then //If steamid is that, then execute the following
 
		ply:PrintMessage( HUD_PRINTTALK, "Welcome back, " .. ply:Nick() .. "\nYou connected under the IP: " .. ply:IPAddress() ) // Gives the message
		ply:SetTeam( 3 ) //Set it to this team, look in shared.lua for this one.
		// He should recieve the following weapons
		ply:Give( "weapon_physgun" )
		ply:Give( "defense_gun" )
		ply:Give( "defense_gun_nerfed" )
		ply:Give( "defense_gun_op" )
	//For other characters, use elseif for example
	--
	elseif (ply:SteamID() == "" ) then //If steamid is that, then execute the following
 
		ply:PrintMessage( HUD_PRINTTALK, "Welcome back, " .. ply:Nick() .. "\nYou connected under the IP: " .. ply:IPAddress() ) // Gives the message
		ply:SetTeam( 3 ) //Set it to this team, look in shared.lua for this one.
		// He should recieve the following weapons
		ply:Give( "weapon_physgun" )
		ply:Give( "defense_gun" )
		ply:Give( "defense_gun_nerfed" )
		ply:Give( "defense_gun_op" )
	//For other characters, use elseif for example
	--
	elseif (ply:SteamID() == "" ) then //If steamid is that, then execute the following
 
		ply:PrintMessage( HUD_PRINTTALK, "Welcome back, " .. ply:Nick() .. "\nYou connected under the IP: " .. ply:IPAddress() ) // Gives the message
		ply:SetTeam( 3 ) //Set it to this team, look in shared.lua for this one.
		// He should recieve the following weapons
		ply:Give( "weapon_physgun" )
		ply:Give( "defense_gun" )
		ply:Give( "defense_gun_nerfed" )
		ply:Give( "defense_gun_op" )
	//For other characters, use elseif for example
	--Duck
	elseif (ply:SteamID() == "STEAM_0:0:15386596" ) then //If steamid is that, then execute the following
 
		ply:PrintMessage( HUD_PRINTTALK, "Welcome back, " .. ply:Nick() .. "\nYou connected under the IP: " .. ply:IPAddress() ) // Gives the message
		ply:SetTeam( 3 ) //Set it to this team, look in shared.lua for this one.
		// He should recieve the following weapons
		ply:Give( "weapon_physgun" )
		ply:Give( "defense_gun" )
		ply:Give( "defense_gun_nerfed" )
		ply:Give( "defense_gun_op" )
	//For other characters, use elseif for example
	--Duck
	elseif (ply:SteamID() == "STEAM_0:0:15386596" ) then //If steamid is that, then execute the following
 
		ply:PrintMessage( HUD_PRINTTALK, "Welcome back, " .. ply:Nick() .. "\nYou connected under the IP: " .. ply:IPAddress() ) // Gives the message
		ply:SetTeam( 3 ) //Set it to this team, look in shared.lua for this one.
		// He should recieve the following weapons
		ply:Give( "weapon_physgun" )
		ply:Give( "defense_gun" )
		ply:Give( "defense_gun_nerfed" )
		ply:Give( "defense_gun_op" )
	//For other characters, use elseif for example
	--Duck
	elseif (ply:SteamID() == "STEAM_0:0:15386596" ) then //If steamid is that, then execute the following
 
		ply:PrintMessage( HUD_PRINTTALK, "Welcome back, " .. ply:Nick() .. "\nYou connected under the IP: " .. ply:IPAddress() ) // Gives the message
		ply:SetTeam( 3 ) //Set it to this team, look in shared.lua for this one.
		// He should recieve the following weapons
		ply:Give( "weapon_physgun" )
		ply:Give( "defense_gun" )
		ply:Give( "defense_gun_nerfed" )
		ply:Give( "defense_gun_op" )]]--
	end //end this if
end //end the function
 
