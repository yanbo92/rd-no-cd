
function GG()
	GR1()
end

function GR1()
	energy()
	AC = -1
end



function energy()
   gg.clearResults()
   gg.setRanges(gg.REGION_ANONYMOUS)
   gg.searchNumber("0;-0.1~0;5~100;0::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
   gg.searchNumber("0;-0.1~0::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
   cd = gg.getResults(3000)
   gg.addListItems(cd)
   gg.setVisible(true)
   gg.setSpeed(0.1)
   thoat()
end




function gold()
  
  gg.searchFuzzy('0', gg.SIGN_FUZZY_LESS, gg.TYPE_FLOAT)
  gg.searchFuzzy('0', gg.SIGN_FUZZY_LESS, gg.TYPE_FLOAT)
  gg.searchFuzzy('0', gg.SIGN_FUZZY_LESS, gg.TYPE_FLOAT)

  local t = gg.getResults(20)
  for i, v in ipairs(t) do
	t[i].value = '0'
	t[i].freeze = true
  end
  gg.setVisible(true)


end

function thoat()
  os.exit()
end

while true do
	if gg[(function(A0_35)
		A0_35 = A0_35:gsub(" ", "")
		return (A0_35:gsub("..", function(A0_36)
			return string.char(tonumber(A0_36, 16) - 23)
		end))
	end)("80 8A 6D 80 8A 80 79 83 7C")](true) then
		AC = 1
		gg[(function(A0_37)
			A0_37 = A0_37:gsub(" ", "")
			return (A0_37:gsub("..", function(A0_38)
				return string.char(tonumber(A0_38, 16) - 23)
			end))
		end)("8A 7C 8B 6D 80 8A 80 79 83 7C")](false)
	end
	if AC == 1 then
		
		GG()
	end
end