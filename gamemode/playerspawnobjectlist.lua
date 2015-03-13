include( "player.lua" )

function GM:PlayerSpawnProp( ply )
	if( ply:IsSuperAdmin() or ply:IsUserGroup( "Developer" ) and ply:IsValid() )
		return true
	else
		ply:SendLua( " notification.AddLegacy( \"That's not very cannon to the story, eh?\", NOTIFY_ERROR, 2 ) " )
		ply:SendLua( " surface.PlaySound( \"buttons/button10.wav\" " )
		return false
	end
end

function GM:PlayerSpawnEffect( ply, model )
	if( ply:IsSuperAdmin() or ply:IsUserGroup( "Developer" ) and ply:IsValid() )
		return LimitReachedProcess( ply, "effects" )
	else
		ply:SendLua( " notification.AddLegacy( \"That's not very cannon to the story, eh?\", NOTIFY_ERROR, 2 ) " )
		ply:SendLua( " surface.PlaySound( \"buttons/button10.wav\" " )
		return false
	end
end

function GM:PlayerSpawnRagdoll( ply, model )
	if( ply:IsSuperAdmin() or ply:IsUserGroup( "Developer" ) and ply:IsValid() )
		return LimitReachedProcess( ply, "ragdolls" )
	else
		ply:SendLua( " notification.AddLegacy( \"That's not very cannon to the story, eh?\", NOTIFY_ERROR, 2 ) " )
		ply:SendLua( " surface.PlaySound( \"buttons/button10.wav\" " )
		return false
	end
end

function GM:PlayerSpawnVehicle( ply, model, vname, vtable )
	if( ply:IsSuperAdmin() or ply:IsUserGroup( "Developer" ) and ply:IsValid() )
		return LimitReachedProcess( ply, "vehicles" )
	else
		ply:SendLua( " notification.AddLegacy( \"That's not very cannon to the story, eh?\", NOTIFY_ERROR, 2 ) " )
		ply:SendLua( " surface.PlaySound( \"buttons/button10.wav\" " )
		return false
	end	
end