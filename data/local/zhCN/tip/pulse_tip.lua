local sex_table = {"Муж.","Жен."}
local type_table = {"Обычная атака","Навык меча","Навык ножа","Навык воина","Навык стрелка","Навык барда","Женский навык","Навык лечения","Навык мага","Боевой навык","Колдовской навык",
							"Производственный навык","Гильдейский навык","Любовь","Пара","Братство","Навык учителя","Монстр","Монстр","","","","","Питомец"}
local pos_table = {"Вид спереди","Вид сзади"}
local dmg_table = {"Кулак","Кровотечение","Стрелок","Воин","Яд","Маг","Бард","Уникальный навык"}
local cost_table = {[0]="ОЗ","ОМ","Ярость","Выносливость","Стойкость"}

local function GetValueDisplay(value)

		if value < 0 then
				value = 0 - value
		end

		if value > 100000 then
					return (value - 100000)/100 .. "%%"
		else
					return value
		end
		return value
end

--Округление
local function GetInteger(x)
		return x-x%1
end

--Значение после запятой
local function GetFloat(x,n)
		return x-x%n
end

function GetObjString(obj,proto)
	local ret = "<font=龙字体,0,20,20><color=0xffffffff>"
	local active = Tooltip.GetPulseActiveState(proto)
	
	--Чтобы определить, подходит ли для активации, а затем отображается имя
	if active >0 then
		ret = ret .. "<color=0xff05ff00>" .. Tooltip.GetPulseName(proto) .. " <color=0xffffffff>"
		else
		ret = ret .. Tooltip.GetPulseName(proto) .. "<color=0xffff0000>" .. " Не доступно" .. "<color=0xffffffff>"
	end
	
	--Текущй и максимальный уровень
	local ncurlevel,maxlevel = Tooltip.GetPulseLevel(obj,proto)
	if active > 0 and ncurlevel ~= nil and maxlevel > 0 then
		ret = ret .. "<color=0xff05ff00>" .. ncurlevel .. "/" .. maxlevel .. "<color=0xffffffff>"
	end
		
	ret = ret .. "<font=龙字体,0,16,20>"
	--Отображает требуемые текущий уровень и высокий уровень
	local nlevel = Tooltip.GetPulseLevelLimit(proto)
	if nlevel ~= nil and  nlevel > 0 then
		local playerlv = Tooltip.GetLocalPlayerLevel()
		if playerlv < nlevel then
			ret = ret .. "\\n \\n" .. "Требуемый ур.<color=0xffff402d> " .. nlevel .. "<color=0xffffffff>"
		else
			ret = ret .. "\\n \\n" .. "Требуемый ур.<color=0xff05ff00> " .. nlevel .. "<color=0xffffffff>"
		end
	end

	
	--Размер святости
	local nnlevel = Tooltip.GetPulseGodLevelLimit(proto)
	if nnlevel ~= nil and nnlevel > 0 then
		local playerlv = Tooltip.GetLocalPlayerGodHead()
		if playerlv < nnlevel then
			ret = ret .. "\\n" .. "Святость<color=0xffff402d> " .. nnlevel .. "<color=0xffffffff>"
		else
			ret = ret .. "\\n" .. "Святость<color=0xff05ff00> " .. nnlevel .. "<color=0xffffffff>"
		end
	end
		

	--Описание
	ret = ret .. "\\n \\n<color=0xff05ff00>Текущ.:<color=0xffffffff>\\n" .. Tooltip.GetPulseDesc(proto)

	--Способ получения
	if nil ~= Tooltip.GetPulseNextDesc(proto) then
		ret = ret .. "\\n \\n<color=0xff05ff00>След. ур.:<color=0xffffffff>\\n" .. Tooltip.GetPulseNextDesc(proto)
	end
	
	return ret
end



