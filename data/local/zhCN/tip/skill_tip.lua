local sex_table = {"Муж.","Жен."}
local type_table = {"Обычная атака","Навык меча","Навык ножа","Навык воина","Навых стрелка","Навых барда","Женский навык","Навык лечения","Навык мага","Боевой навык","Колдовской навык",
							"Производственный навык","Навык гильдии","Любовь","Пара","Братство","Навык учителя","Монстр","Монстр","","","","","Питомец"}
local pos_table = {"Вид спереди","Вид сзади"}
local dmg_table = {"Кулак","Кровотечение","Стрелок","Воин","Яд","Бард","Маг","Уникальный навык"}
local cost_table = {[0]="ОЗ","ОМ","Ярость","Святость","Стойкость"}

local function GetValueDisplay(value)

		if value < 0 then
			value = 0 - value
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
	--Активный или пассивный
	local use = Tooltip.GetSkillUseType(proto)
	local ret = "<font=Arial,0,16,20>"
	--подсказка
	if use == 1 then
	    local bool = false
	    for i=0,4 do
			local new = Tooltip.GetSkillCost(obj,proto,i)
			if new > 0 and i == 3 then
				bool = true
			end
		end
		if bool then
		    ret = ret .. "<color=0xffff0000>Нельзя перетащить в панель быстрого запуска\\n<font=Arial,0,20,20><color=0xffffffff>"
		else
			ret = ret .. "<color=0xfffff717>Можно перетащить в панель быстрого запуска\\n<font=Arial,0,20,20><color=0xffffffff>"
		end
	end

	--Потребление навыка
	if use == 1 then

	end

	--Название
	ret = ret .. Tooltip.GetSkillName(proto)

	--Уровень навыка
	local level = Tooltip.GetSkillLevel(proto)
	local maxlevel = Tooltip.GetSkillMaxLevel(proto)
	if maxlevel > 1 then
		ret = ret .. "[<color=0xff05ff00>Ур " .. level .. "<color=0xffffffff>]"
	end

	ret = ret .. "<font=Arial,0,16,20>"
	--Тип навыка
	local new = Tooltip.GetSkillType(proto)
	if new > 1 and new < 25 then
		ret = ret .. "\\n<color=0xff05ff00>" .. type_table[new] .."<color=0xffffffff>"
	elseif new == 1 then
		return ret
	end

	--Активный и пассивный
	local use = Tooltip.GetSkillUseType(proto)
	if use == 1 then
			ret = ret .. "\\n<color=0xff05ff00>Активный навык<color=0xffffffff>"
	elseif use == 2 then
			ret = ret .. "\\n<color=0xff00a2ff>Пассивный навык<color=0xffffffff>"
	end

	--Отображение Активных навыков
	if use == 1 then
		--Половые ограничения
		local sex = Tooltip.GetSkillSexLimit(proto)
		if sex == 1 or sex == 2 then
			local lpsex = Tooltip.GetLocalPlayerSex()
			if (lpsex + sex) == 2 then
				ret = ret .. "\\n<color=0xff05ff00>" .. sex_table[sex] .. "<color=0xffffffff> персонаж"
			else
				ret = ret .. "\\n<color=0xffff402d>" .. sex_table[sex] .. "<color=0xffffffff> персонаж"
			end
		end


		--Начало использования
		local new = Tooltip.GetSkillPosLimit(proto)
		if new > 0 and new < 3 then
				ret = ret .. "\\nЦель начала<color=0xff05ff00>" .. pos_table[new] .. "<color=0xffffffff>"
		end

		--Поводья
		--bmount = Tooltip.GetSkillMountLimit(proto)
		--if bmount then
				--ret = ret .. "\\nПоводья<color=0xff05ff00>можно<color=0xffffffff>использовать"
		--else
				--ret = ret .. "\\nПоводья<color=0xff05ff00>нельзя<color=0xffffffff>использовать"
		--end

	end

	if use == 1 then
			--Тип травмы
			local type = Tooltip.GetSkillDamageType(proto)
			if type > 0 and type < 9 then
					ret = ret .. "\\nТип урона: <color=0xffffbc00>" .. dmg_table[type] .. "<color=0xffffffff>"
			end
	end

	if use == 1 then
		--Пустые строки
		ret = ret .. "\\n    "
			--Мощность навыка
			local single,sum = Tooltip.GetSkillDamage(obj,proto)
			if single ~= nil and single > 100000 then
					ret = ret .. "\\nМощность<color=0xff00a2ff> " .. GetInteger((single-100000)/100) .. "%" .. "<color=0xffffffff>" .. " от параметров оружия"
			elseif sum ~= nil and sum > 0 then
					ret = ret .. "\\nМощность<color=0xff00a2ff> " .. sum .. "<color=0xffffffff>"
			end
			--Целевое количество травм
			local damageNum = Tooltip.GetSkillDamageNum(proto)
			if damageNum > 1 then
					ret = ret .. "\\nКол-во целей<color=0xff00a2ff> " .. damageNum .. " <color=0xffffffff>"
			end
			--Дистанция охвата
			local new = Tooltip.GetSkillOPDistance(obj,proto)
			if new > 0 then
					ret = ret .. "\\nДистанция<color=0xff00a2ff> " .. GetInteger(new/100) .. "<color=0xffffffff> м."
			end
			--Время применения
			local new = Tooltip.GetSkillPrepareTime(obj,proto)
			if new > 0 then
					ret = ret .. "\\nПрименение <color=0xff00a2ff> " .. GetFloat(new/1000,0.1) .. "<color=0xffffffff> сек."
			end
			--Время отката навыка
			local new = Tooltip.GetSkillCooldownTime(obj,proto)
			if new > 0 then
					ret = ret .. "\\nПерезарядка<color=0xff00a2ff> " .. GetFloat(new/1000,0.1) .. "<color=0xffffffff> сек."
			end
	end

	--Потребление навыком маны, ОМ
	if use == 1 then
			for i=0,4 do
					local new = Tooltip.GetSkillCost(obj,proto,i)
					if new > 0 then
						local lpcost = Tooltip.GetLocalPlayerCostAttCurValue(i)
						if lpcost >= new then
							ret = ret .. "\\n" .. cost_table[i] .. "<color=0xff00a2ff> " .. GetValueDisplay(new) .. "<color=0xffffffff>"
						else
							ret = ret .. "\\n" .. cost_table[i] .. "<color=0xffff402d> " .. GetValueDisplay(new) .. "（" .. cost_table[i] .. " - недостаточно）<color=0xffffffff>"
						end
					end
			end
	end

	if use == 2 then
			--ret = ret .. "\\n  "
	end

	--Описание
	ret = ret .. "\\n \\n" .. Tooltip.GetSkillDesc(proto)

	--Доп описание
	local next = Tooltip.GetSkillNextLevel(proto)
	if next ~= "" then
			ret = ret .. "\\n  \\nСледующий уровень\\n" .. next
	end


	return ret
end



