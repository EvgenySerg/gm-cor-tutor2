-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
-- Печатаем в консоли
print( "Hello World!" )


local physics = require( "physics" )
physics.start()

local sky = display.newImage( "bkg_clouds.png" )
sky.x = 160; sky.y = 195
 
local ground = display.newImage( "ground.png" )
ground.x = 160; ground.y = 510

physics.addBody( ground, "static", { friction=0.5, bounce=0.3 } )

cratesGroup=display.newGroup( )
crates={}

for a=1,3,1 do
crates[a] = display.newImage("crate.png")	
crates[a].x=30*a+display.contentCenterX
crates[a].y=50*a
physics.addBody( crates[a], { density=3.0, friction=0.5, bounce=0.3 } )
end


--text
local myTextObject = display.newText( "Hello Game!", display.contentCenterX, 0, "Arial", 60 )
myTextObject:setFillColor( 1,0,0 )
function screenTap()
    local r = math.random( 0, 100 )
    local g = math.random( 0, 100 )
    local b = math.random( 0, 100 )
    myTextObject:setFillColor( r/100, g/100, b/100 )
end

display.currentStage:addEventListener( "tap", screenTap )

--physics.addBody( crate1, { density=3.0, friction=0.5, bounce=0.3 } )
