local sex_table = {"Муж.","Жен."}
local type_table = {"Обычная атака","Навык меча","Навык ножа","Навык воина","Навык стрелка","Навык барда","Женский навык","Навык лечения","Навык мага","Боевой навык","Колдовской навык",
							"Производственный навык","Гильдейский навык","Любовь","Пара","Братство","Навык учителя","Монстр","Монстр","","","","","Питомец"}
local pos_table = {"Вид спереди","Вид сзади"}
local dmg_table = {"Кулак","Кровотечение","Стрелок","Воин","Яд","Маг","Бард","Уникальный навык"}
local att_table =
{
	[0]="Здоровье<color=0xff05ff00>#<color=0xffffffff>",
	[1]="Сила<color=0xff05ff00>#<color=0xffffffff>",
	[2]="ОЗ<color=0xff05ff00>#<color=0xffffffff>",
	[3]="ОМ<color=0xff05ff00>#<color=0xffffffff>",
	[4]="Навык<color=0xff05ff00>#<color=0xffffffff>",
	[5]="Ловкость<color=0xff05ff00>#<color=0xffffffff>"
}
--Значение после запятой
local function GetFloat(x,n)
		return x-x%n
end

--Округление
local function GetInteger(x)
		return x-x%1
end
--Взятый процент (два знака после запятой)
local function GetPercent(x)
		local y = x/100
		return y-y%0.01
end

local function GetValueDisplay(type,value)

			local ret
			if type == 28 or type == 29 or type == 30 or type == 31 or type == 36 or type == 54 or type == 55 or type == 56 or type == 58 or type == 59 or type == 67 or type == 68 or type == 69 then
					ret = value > 0 and (" + " .. value/100 .. "%% ") or (" - " .. (0 - value)/100 .. "%% ")
			else
					ret =  value > 0 and (" + " .. value .. " ") or (" - " .. 0 - value .. " ")
			end
			return ret
end

function GetObjString(obj,proto)

	--local ret = "<font=Arial,0,16,20><color=0xffffffff>"

	--Активный или пассивный
	local use = Tooltip.GetSkillUseType(proto)
	local ret = "<font=Arial,0,16,20><color=0xfffff717>"
	--Подсказка
	if use == 1 then
		ret = ret .. "\\n<font=Arial,0,20,20><color=0xffffffff>"
	end
	ret = ret .. "<font=Arial,0,20,20><color=0xffffffff>"
	--Название
	ret = ret .. Tooltip.GetSkillName(proto)

	ret = ret .. "<font=Arial,0,16,20><color=0xffffffff>"
	local maxlevel = Tooltip.GetSkillMaxLevel(proto)

	--Уровень навыка
	local level = Tooltip.GetSkillLevel(proto)
	local maxlevel = Tooltip.GetSkillMaxLevel(proto)
	if maxlevel > 1 then
		ret = ret .. "[<color=0xff05ff00>" .. level .. " ур.<color=0xffffffff>]"
	end

	--Тип
	local new = Tooltip.GetSkillType(proto)
	if new > 1 and new < 25 then
		ret = ret .. "\\n<color=0xff05ff00>" .. type_table[new].."<color=0xffffffff>"
	end

	--Активный или пассивный
	if use == 1 then
			ret = ret .. "\\n<color=0xff05ff00>Активный<color=0xffffffff>"
	elseif use == 2 then
			ret = ret .. "\\n<color=0xff00a2ff>Пассивный<color=0xffffffff>"
	end

	--Активные навыки, отображение
	if use == 1 then

		--Половые ограничения (гендерные ограничения)
		local sex = Tooltip.GetSkillSexLimit(proto)
		if sex == 1 or sex == 2 then
			local lpsex = Tooltip.GetLocalPlayerSex()
			if (lpsex + sex) == 2 then
				ret = ret .. "\\n<color=0xff05ff00>" .. sex_table[sex] .. "<color=0xffffffff>Ограничение"
			else
				ret = ret .. "\\n<color=0xffff402d>" .. sex_table[sex] .. "<color=0xffffffff>Ограничение"
			end
		end


		--Начало использования
		local new = Tooltip.GetSkillPosLimit(proto)
		if new > 0 and new < 3 then
				ret = ret .. "\\nЦель<color=0xff05ff00> " .. pos_table[new] .. " <color=0xffffffff>начала"
		end
	end
	--空行
	--ret = ret .. "\\n    "


	--[[Предварительные навыки
	local pre,level,bhave = Tooltip.GetSkillPreSkill(obj,proto)
	if pre and level then
			ret = ret .. "\\nОбновление  навыка, перемещение "
			if not bhave then
					ret = ret .. "<color=0xffff402d>" .. pre .. "[" .. level .. "Уровень]（Не изучено）" .. "<color=0xffffffff>"
			else
					ret = ret .. "<color=0xff05ff00>" .. pre .. "[" .. level .. "Уровень]" .. "<color=0xffffffff>"
			end
	end]]

	--Уровень изучения, предел
	local lvlimit = Tooltip.GetSkillLevelLimit(obj,proto)
	if lvlimit and lvlimit > 1 then
		ret = ret .. "\\nУровень изучения："
		local playerlv = Tooltip.GetLocalPlayerLevel()
		if playerlv < lvlimit then
			--if level < 1 then
				ret = ret .. "<color=0xffff402d>" .. lvlimit .. " <color=0xffffffff>уровень"
			--end
		else
				ret = ret .. "<color=0xff05ff00>" .. lvlimit .. " <color=0xffffffff>уровень"
		end
	end

	--[[Ограничения по талантам, очки навыков
	local tal,et = Tooltip.GetSkillTalentLimit(obj,proto)
	if tal and tal > 0 and et then
			pt = Tooltip.GetLocalPlayerTalentBidden(et)
			ret = ret .. "\\nТребуется для изучения "
			if tal > pt then
					ret = ret .. "<color=0xffff402d>" .. tal .. " <color=0xffffffff>очки навыков"
			else
					ret = ret .. "<color=0xff05ff00>" .. tal .. " <color=0xffffffff>очки навыков"
			end
	ret = ret .. "\\n    "
	end]]

	if use == 1 then
			--Тип наносимого урона
			local type = Tooltip.GetSkillDamageType(proto)
			if type > 0 and type < 9 then
					ret = ret .. "\\n<color=0xffffbc00>" .. dmg_table[type] .. "<color=0xffffffff>(урон)"
			end
	end

	if use == 1 then
			--Сила, мощность навыка
			local new = Tooltip.GetSkillDamage(obj,proto)
			if new > 0 then
					ret = ret .. "\\nМощность<color=0xff00a2ff> " .. new .. "<color=0xffffffff>"
			end
			--Дистанция использования, охвата навыка
			local new = Tooltip.GetSkillOPDistance(obj,proto)
			if new > 0 then
					ret = ret .. "\\nДистанция<color=0xff00a2ff> " .. GetInteger(new/100) .. " <color=0xffffffff>м."
			end
			--Время применения, каст
			local new = Tooltip.GetSkillPrepareTime(obj,proto)
			if new > 0 then
					ret = ret .. "\\nПрименение<color=0xff00a2ff> " .. GetFloat(new/1000,0.1) .. " <color=0xffffffff>сек. "
			end
			--Время восстановления, кастования
			local new = Tooltip.GetSkillCooldownTime(obj,proto)
			if new > 0 then
					ret = ret .. "\\nПерезарядка<color=0xff00a2ff> " .. GetFloat(new/1000,0.1) .. " <color=0xffffffff>сек. "
			end

			ret = ret .. "\\n"
	end

	--Бонусы
 	local att = Tooltip.GetSkillAttribute(proto)
	if att ~= nil then
			for k,v in pairs(att) do
					if att_table[k] then
							stratt = string.gsub(att_table[k],"#",GetValueDisplay(k,v))
							ret = ret .. "\\n" .. stratt
					end
			end
	end

	if use == 2 then
			ret = ret .. "\\n"
	end

	--Описание
	ret = ret .."Этот навык улучшен максимально. ".. Tooltip.GetSkillDesc(proto)

	--[[Вывод требований
	local nextnum = Tooltip.GetSkillNextLevel(proto)
	if nextnum ~= nil then
		ret = ret .. "\\n  \\nСледующий уровень："..nextnum
	end

	local rfund = Tooltip.GetResearchGuildSkillCostFund(proto)
	local rmaterial = Tooltip.GetResearchGuildSkillCostMaterial(proto)
	if level < maxlevel then
		ret = ret .."\\n\\n\\n\\n\\n\\n\\nтребуется"

		ret = ret .. "\\nГильдейского фонда "
		ret = ret .. rfund
		ret = ret .. "\\nГильдейских ресурсов "
		ret = ret .. rmaterial
	else
		ret = ret .."\\n<color=0xff05ff00>Максимально изучен<color=0xffffffff>"
	end]]
	return ret
end
