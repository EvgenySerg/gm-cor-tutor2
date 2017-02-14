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

local r=50
local s=CirleSquare(r)
print("Площадь круга с радиусом "..r.." = "..s)

--------------------------------------------------------------------
local myText=display.newText( "-", display.contentCenterX, 50, "Arial", 30 )
myText:setFillColor( 1,0,0 )

local tab={1,7,3,4,2}

------------------------------------------ вывести на экран таблицу(массив)
local function PrintTable(t)
	for i, j in pairs(t) do
		print("Элемент "..i.." равен: "..j)
	end	
end
----------------------------------------- Сортировка массива (Пузырьковая)
function bubble_sort(arr)
	for i=table.getn(arr), 2, -1  do 
		for j=2, i do				 
				if arr[j] < arr[j-1] then
				tmp = arr[j-1]
				arr[j-1] = arr[j]
				arr[j] = tmp
			end
		end
	end
	return arr
end

-----------------------------------------

local function  handleButtonEvent( event )
	local phase=event.phase
	if "ended"==event.phase then
		s=CirleSquare(10)
		myText.text=s.."см2"
		PrintTable(tab)
		sortedTab=bubble_sort(tab)
		print( "Отсортированный массив" )
		PrintTable(sortedTab)

	end
	-- body
end






local myButton=widget.newButton(
{
	
	top=200,
	width=300,
	height=100,
	left=100,
	defaultFile="button.png",
	overFile="buttonOver.png",
	label="Площадь круга радиусом " ..r.." см",
	onEvent=handleButtonEvent,
	labelColor = { default={ 1, 1, 1 }, over={ 0, 0, 0, 0.5 } }
})









