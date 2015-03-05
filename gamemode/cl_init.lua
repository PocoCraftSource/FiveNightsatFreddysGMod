
--[[---------------------------------------------------------

  Sandbox Gamemode

  This is GMod's default gamemode

-----------------------------------------------------------]]

include( 'shared.lua' )
include( 'cl_spawnmenu.lua' )
include( 'cl_notice.lua' )
include( 'cl_hints.lua' )
include( 'cl_worldtips.lua' )
include( 'cl_search_models.lua' )
include( 'gui/IconEditor.lua' )

--
-- Make BaseClass available
--
DEFINE_BASECLASS( "gamemode_base" )


local physgun_halo = CreateConVar( "physgun_halo", "1", { FCVAR_ARCHIVE }, "Draw the physics gun halo?" )

function GM:Initialize()

	BaseClass.Initialize( self )
	
end

function GM:LimitHit( name )

	self:AddNotify( "#SBoxLimit_"..name, NOTIFY_ERROR, 6 )
	surface.PlaySound( "buttons/button10.wav" )

end

function GM:OnUndo( name, strCustomString )
	
	if ( !strCustomString ) then
		self:AddNotify( "#Undone_"..name, NOTIFY_UNDO, 2 )
	else	
		self:AddNotify( strCustomString, NOTIFY_UNDO, 2 )
	end
	
	-- Find a better sound :X
	surface.PlaySound( "buttons/button15.wav" )

end

function GM:OnCleanup( name )

	self:AddNotify( "#Cleaned_"..name, NOTIFY_CLEANUP, 5 )
	
	-- Find a better sound :X
	surface.PlaySound( "buttons/button15.wav" )

end

function GM:UnfrozeObjects( num )

	self:AddNotify( "Unfroze "..num.." Objects", NOTIFY_GENERIC, 3 )
	
	-- Find a better sound :X
	surface.PlaySound( "npc/roller/mine/rmine_chirp_answer1.wav" )

end

function GM:HUDPaint()

	self:PaintWorldTips()

	-- Draw all of the default stuff
	BaseClass.HUDPaint( self )
	
	self:PaintNotes()
	
end

--[[---------------------------------------------------------
	Draws on top of VGUI..
-----------------------------------------------------------]]
function GM:PostRenderVGUI()

	BaseClass.PostRenderVGUI( self )

end

local PhysgunHalos = {}

--[[---------------------------------------------------------
   Name: gamemode:DrawPhysgunBeam()
   Desc: Return false to override completely
-----------------------------------------------------------]]
function GM:DrawPhysgunBeam( ply, weapon, bOn, target, boneid, pos )

	if ( physgun_halo:GetInt() == 0 ) then return true end

	if ( IsValid( target ) ) then
		PhysgunHalos[ ply ] = target
	end
	
	return true

end

hook.Add( "PreDrawHalos", "AddPhysgunHalos", function()

	if ( !PhysgunHalos || table.Count( PhysgunHalos ) == 0 ) then return end


	for k, v in pairs( PhysgunHalos ) do

		if ( !IsValid( k ) ) then continue end

		local size = math.random( 1, 2 )
		local colr = k:GetWeaponColor() + VectorRand() * 0.3
		 
		halo.Add( PhysgunHalos, Color( colr.x * 255, colr.y * 255, colr.z * 255 ), size, size, 1, true, false )
		
	end
	
	PhysgunHalos = {}

end )


--[[---------------------------------------------------------
   Name: gamemode:NetworkEntityCreated()
   Desc: Entity is created over the network
-----------------------------------------------------------]]
function GM:NetworkEntityCreated( ent )

	--
	-- If the entity wants to use a spawn effect
	-- then create a propspawn effect if the entity was
	-- created within the last second (this function gets called
	-- on every entity when joining a server)
	--

	if ( ent:GetSpawnEffect() && ent:GetCreationTime() > (CurTime() - 1.0) ) then
	
		local ed = EffectData()
			ed:SetEntity( ent )
		util.Effect( "propspawn", ed, true, true )

	end

end



function set_team() //Function for the window when joining as neither special character nor Admin
 
Ready = vgui.Create( "DFrame" ) //Define ready as a "DFrame"
Ready:SetPos( ScrW() / 2, ScrH() / 2 ) //Set the position. Half the screen height and half the screen width. This will result in being bottom right of the middle of the screen.
Ready:SetSize( 175, 75 ) //The size, in pixels of the Frame
Ready:SetTitle( "Are you ready to build?" ) //The title; It's at the top.
Ready:SetVisible( true ) // Should it be seen? 
Ready:SetDraggable( false ) // Can people drag it around?
Ready:ShowCloseButton( true ) //Show the little X top right? I chose no, because I have no alternative, meaning people would roam around with no weapons
Ready:MakePopup() //Make it popup. Of course.
 
ready1 = vgui.Create( "DButton", Ready ) // Define ready1 as a "DButton" with its parent the Ready frame we just created above.
ready1:SetPos( 20, 25 ) //Set position, relative to the frame (If you didn't parent it, it would be relative to the screen
ready1:SetSize( 140, 40 ) // How big it should be, again in pixels
ready1:SetText( "Hell yeah!" ) //What should the button say? 
ready1.DoClick = function() //ready1.doclick = function, we just defined it as a function
RunConsoleCommand( "sb_team1" ) //When it clicks, which function does it run? sb_team1, which is defined in init.lua
 
end // end the doclick function
 
end // end the set_team function
 
concommand.Add( "sb_start", set_team ) //Now we add a console command for the function we just created. It can be run straight from the console. If you look under the first couple of lines under init.lua, we
// said that it should run this command!
 
