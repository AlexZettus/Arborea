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

--Знаки после запятой 取小数点后几位
local function GetFloat(x,n)
		return x-x%n
end

function GetObjString(obj,proto)
	--Активный или Пассивный
	local use = Tooltip.GetAreaUseType(proto)
	local ret = "<font=Arial,0,16,20><color=0xfffff717>"
	--Подсказка
	--if use == 1 then
	--	ret = ret .. "Можно перетащить в панель быстрого доступа\\n"
	--end
		ret = ret .. "<font=Arial,0,20,20><color=0xffffffff>"
	--Название
	local level = Tooltip.GetAreaSkillLevel(proto)
	ret = ret .. Tooltip.GetAreaName(proto)
	if level > 0 then
		ret = ret .. "[<color=0xff05ff00>" .. level .. "ур.<color=0xffffffff>]"
	end
		
	ret = ret .. "<font=Arial,0,16,20>"
	--Требуемый уровень для активации
	local nlevel = Tooltip.GetAreaActiveLevel(proto)
	if nlevel ~= nil and  nlevel > 0 then
		local playerlv = Tooltip.GetLocalPlayerLevel()
		if playerlv < nlevel then
			ret = ret .. "\\n \\n" .. "Требуется уровень: <color=0xffff402d> " .. nlevel .. "<color=0xffffffff>"
		else
			ret = ret .. "\\n \\n" .. "Требуется уровень: <color=0xff05ff00> " .. nlevel .. "<color=0xffffffff>"
		end
	end
	
	--Требуемый уровень божественности, святости
	local nnlevel = Tooltip.GetAreaGodHeadLevel(proto)
	if nnlevel ~= nil and nnlevel > 0 then
		local playerlv = Tooltip.GetLocalPlayerGodHead()
		if playerlv < nnlevel then
			ret = ret .. "\\n" .. "Требуемый уровень бога: <color=0xffff402d> " .. nnlevel .. "<color=0xffffffff>"
		else
			ret = ret .. "\\n" .. "Требуемый уровень бога: <color=0xff05ff00> " .. nnlevel .. "<color=0xffffffff>"
		end
	end
		
	--Время действия
	local time = Tooltip.GetAreaLeftTime(proto)
	if time > 0 then
		ret = ret .."\\n" .. "Действие: <color=0xff05ff00> "
			if time/(60*60*24) > 1 then
			 ret = ret .. time/(60*60*24) .. "дн.<color=0xffffffff>"
			end
			if (time/(60*60))%60 > 1 then
			 ret = ret .. (time/(60*60))%60 .. "ч.<color=0xffffffff>"
			end
			if (time/60)%60 > 1 then
			 ret = ret .. (time/60)%60 .. "мин.<color=0xffffffff>"
			end
			if time%60 > 1 then
			 ret = ret .. time%60 .. "сек.<color=0xffffffff>"
			end
	end
	
	--Статус
	local nstate = Tooltip.GetAreaState(proto)
	
	--Активный и пассивный
	local use = Tooltip.GetAreaUseType(proto)
	if use == 1 then
			ret = ret .. "\\n<color=0xff05ff00>Активный<color=0xffffffff>"
	elseif use == 2 then
			ret = ret .. "\\n<color=0xff00a2ff>Пассивный<color=0xffffffff>"
	end
	

	--Пассивный, усиление при повышении навыка
	if use ~= 2 then
		if nstate ~= 2 then
			--Пустые строки
			ret = ret .. "\\n    "
			--Сила навыка, мощность
			local single,sum = Tooltip.GetAreaDamage(obj,proto)
			if single ~= nil and single > 100000 then
					ret = ret .. "\\nСила навыка<color=0xff00a2ff> " .. GetInteger((single-100000)/100) .. "%" .. "<color=0xffffffff>" .. " "
			elseif sum ~= nil and sum > 0 then
					ret = ret .. "\\nСила навыка<color=0xff00a2ff> " .. sum .. "<color=0xffffffff>"
			end
			--Количество травм цели
			local damageNum = Tooltip.GetAreaDamageNum(proto)
			if damageNum > 1 then
					ret = ret .. "\\nЗапас<color=0xff00a2ff> " .. damageNum .. " <color=0xffffffff>"
			end
			--Радиус действия
			local new = Tooltip.GetAreaOPDistance(obj,proto)
			if new > 0 then
					ret = ret .. "\\nРадиус действия<color=0xff00a2ff> " .. GetInteger(new/100) .. " <color=0xffffffff>"
			end
			--Перезарядка, время отката
			local new = Tooltip.GetAreaCooldownTime(obj,proto)
			if new > 0 then
					ret = ret .. "\\nПерезарядка<color=0xff00a2ff> " .. GetFloat(new/1000,0.1) .. " <color=0xffffffff>"
			end
		end
	end

	--потребление, расход навыка
	if use == 1 then
			for i=0,4 do
					local new = Tooltip.GetAreaCost(obj,proto,i)
					if new > 0 then
						local lpcost = Tooltip.GetLocalPlayerCostAttCurValue(i)
						if lpcost >= new then
							ret = ret .. "\\n" .. cost_table[i] .. "расходовать<color=0xff00a2ff> " .. GetValueDisplay(new) .. "<color=0xffffffff>"
						else
							ret = ret .. "\\n" .. cost_table[i] .. "расходовать<color=0xffff402d> " .. GetValueDisplay(new) .. "" .. cost_table[i] .. "недостаточно<color=0xffffffff>"
						end
					end
			end
	end

	if use == 2 then
			--ret = ret .. "\\n  "
	end

	--Описание
	ret = ret .. "\\n \\n" .. Tooltip.GetAreaDesc(proto)

	--Путь получения, требования
	if nil ~= Tooltip.GetAreaGetDesc(obj,proto) then
		ret = ret .. "\\n \\nспособ получения следующего уровня:\\n" .. Tooltip.GetAreaGetDesc(obj,proto)
	end

	return ret
end



