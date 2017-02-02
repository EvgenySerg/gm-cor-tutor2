-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Строковые переменные

local widget = require("widget")
local  firstName = "Albert"
local lastName = "Einstein"
local fullName = firstName.." "..lastName
print(fullName)

local yearBorn = 1879
local yearDied = 1955
local age = yearDied - yearBorn
print(fullName.." умер в возрасте "..age.." лет.")

-- Scopes, Functions
local function addValues()
	local x=4
	local y=6
	local sum= x+y
	print("Cумма "..x.." + "..y.." = "..sum)
end

addValues()


-- расчет площади круга
local function CirleSquare(radius)
	s=math.pi*radius*radius
	return s
end

local r=10
local s=CirleSquare(r)
print("Площадь круга с радиусом "..r.." = "..s)
--------------------------------------------------------------------

local myText=display.newText( "-", display.contentCenterX, 50, "Arial", 30 )
myText:setFillColor( 1,0,0 )


local function  handleButtonEvent( event )
	local phase=event.phase
	if "ended" then
		s=CirleSquare(10)
		myText.text=s.."см2"
	end
	-- body
end

local myButton=widget.newButton
{
	
	top=200,
	width=300,
	height=100,
	left=100,
	defaultFile="button.png",
	overFile="buttonOver.png",
	label="Площадь круга радиусом 10см",
	onEvent=handleButtonEvent,

}












