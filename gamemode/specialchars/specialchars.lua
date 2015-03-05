function CheckSpecialCharacters( ply ) //This function is called upon on GM:PlayerInitialSpawn
 
 
//Here we add our characters which are special.
//I left an example with what I have
 
	--JeromeCrackie
	if ( ply:SteamID() == "STEAM_0:1:40580894" ) then //If steamid is that, then execute the following
 
		ply:PrintMessage( HUD_PRINTTALK, "Welcome back, " .. ply:Nick() .. "\nYou connected under the IP: " .. ply:IPAddress() ) // Gives the message
		//Welcome back JeromeCrackie, you have connected under the IP: blah. In local multiplayer it will be loopback.
		ply:SetTeam( 3 ) //Set it to this team, look in shared.lua for this one.
		// He should recieve the following weapons
		ply:Give( "weapon_crowbar" )
		ply:Give( "weapon_pistol" )
		ply:Give( "weapon_smg1" )
		ply:Give( "weapon_frag" )
		ply:Give( "weapon_physcannon" )
		ply:Give( "weapon_crossbow" )
		ply:Give( "weapon_shotgun" )
		ply:Give( "weapon_357" )
		ply:Give( "weapon_rpg" )
		ply:Give( "weapon_ar2" )
		ply:Give( "gmod_tool" )
		ply:Give( "gmod_camera" )
		ply:Give( "weapon_physgun" )
		ply:Give( "defense_gun" )
		ply:Give( "defense_gun_nerfed" )
		ply:Give( "defense_gun_op" )
	end //end this if
	//For other characters, use elseif for example
	// elseif (ply:SteamID() == "STEAM 02984529" ) then 
	//ply:SetTeam( 2 ) 
	//etc. etc.
end //end the function
 
