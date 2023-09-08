local sex_table = {"Муж.","Жен."}
local type_table = {"Обычная атака","Навык меча","Навык ножа","Навык воина","Навых стрелка","Навых барда","Женский навык","Навык лечения","Навык мага","Боевой навык","Колдовской навык",
							"Навык ремесла","Навык гильдии","Любовь","Пара","Братство","Навык учителя","Монстр","Монстр","","","","","Питомец"}
local pos_table = {"Вид спереди","Вид сзади"}
local dmg_table = {"Кулак","Кровотечение","Стрелок","Воин","Яд","Бард","Маг","Уникальный навык"}
local att_table =
{
	[0]="Сложение<color=0xff05ff00>#<color=0xffffffff>",
	[1]="Сила<color=0xff05ff00>#<color=0xffffffff>",
	[2]="Дух<color=0xff05ff00>#<color=0xffffffff>",
	[3]="Энергия<color=0xff05ff00>#<color=0xffffffff>",
	[4]="Навык<color=0xff05ff00>#<color=0xffffffff>",
	[5]="Ловкость<color=0xff05ff00>#<color=0xffffffff>"
}

local function GetValueDisplay(type,value)

			local ret
			if type == 28 or type == 29 or type == 30 or type == 31 or type == 36 or type == 54 or type == 55 or type == 56 or type == 58 or type == 59 or type == 67 or type == 68 or type == 69 then
					ret = value > 0 and (" + " .. value/100 .. "%% ") or (" - " .. (0 - value)/100 .. "%% ")
			else
					ret =  value > 0 and (" + " .. value .. " ") or (" - " .. 0 - value .. " ")
			end
			return ret
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

	local ret = "<font=Arial,0,16,20><color=0xfffff717>"

	--Подсказка
	local maxlevel = Tooltip.GetSkillMaxLevel(proto)
	local currlevel = Tooltip.GetSkillLevel(proto)
	if currlevel < maxlevel then
			ret = ret .. "Улучшение навыка\\n"
	end
	--Название
	ret = ret .. "<font=Arial,0,20,20><color=0xffffffff>"
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
		ret = ret .. "\\n" .. type_table[new]
	end

	--Активный, пассивный
	local use = Tooltip.GetSkillUseType(proto)
	if use == 1 then
			ret = ret .. "\\n<color=0xff05ff00>Активный навык<color=0xffffffff>"
	elseif use == 2 then
			ret = ret .. "\\n<color=0xff00a2ff>Пассивный навык<color=0xffffffff>"
	end

	--Активные, отображение
	if use == 1 then

		--Половые ограничения, гендерные ограничения
		local sex = Tooltip.GetSkillSexLimit(proto)
		if sex == 1 or sex == 2 then
			local lpsex = Tooltip.GetLocalPlayerSex()
			if (lpsex + sex) == 2 then
				ret = ret .. "\\n<color=0xff05ff00>" .. sex_table[sex] .. "<color=0xffffffff> персонаж"
			else
				ret = ret .. "\\n<color=0xffff402d>" .. sex_table[sex] .. "<color=0xffffffff> персонаж"
			end
		end


		--Применение
		local new = Tooltip.GetSkillPosLimit(proto)
		if new > 0 and new < 3 then
				ret = ret .. "\\nЦель начала <color=0xff05ff00>" .. pos_table[new] .. "<color=0xffffffff>применение"
		end

		--Поводья, использование приззыва маунта - пета
		--bmount = Tooltip.GetSkillMountLimit(proto)
		--if bmount then
				--ret = ret .. "\\nПоводья<color=0xff05ff00>можно<color=0xffffffff>применить"
		--else
				--ret = ret .. "\\nПоводья<color=0xff05ff00>нельзя<color=0xffffffff>применить"
		--end

	end
	--Пустые строки
	ret = ret .. "\\n    "


	--Предварительные навыки, текущий уровень
	local pre,level,bhave = Tooltip.GetSkillPreSkill(obj,proto,0)
	if pre and level then
			ret = ret .. "\\nТребования: "
			if not bhave then
					ret = ret .. "\\n<color=0xffff402d>" .. pre .. " [Уровень " .. level .. "]" .. "<color=0xffffffff>"
			else
					ret = ret .. "\\n<color=0xff05ff00>" .. pre .. " [Уровень " .. level .. "]" .. "<color=0xffffffff>"
			end
			for i=1, 9 do
				local pre2,level2,bhave2 = Tooltip.GetSkillPreSkill(obj,proto,i)
				if pre2 and level2 then
					if not bhave2 then
							ret = ret .. "\\n<color=0xffff402d>" .. pre2 .. " [Уровень " .. level2 .. "]" .. "<color=0xffffffff>"
					else
							ret = ret .. "\\n<color=0xff05ff00>" .. pre2 .. " [Уровень " .. level2 .. "]" .. "<color=0xffffffff>"
					end
				end
			end
	end

	--Предел уровня
	local lvlimit = Tooltip.GetSkillLevelLimit(obj,proto)
	if lvlimit and lvlimit > 1 then
			ret = ret .. "\\nПерсонаж "

			playerlv = Tooltip.GetLocalPlayerLevel()
			if playerlv < lvlimit then
					ret = ret .. "<color=0xffff402d>" .. lvlimit .. " <color=0xffffffff>уровня"
			else
					ret = ret .. "<color=0xff05ff00>" .. lvlimit .. " <color=0xffffffff>уровня"
			end
	end

	--Ограничение по талантам, очки навыков
	local tal,et = Tooltip.GetSkillTalentLimit(obj,proto)
	if tal and tal > 0 and et then
			pt = Tooltip.GetLocalPlayerTalentBidden(et)
			ret = ret .. "\\n "
			if tal > pt then
					ret = ret .. "<color=0xffff402d>" .. tal .. " <color=0xffffffff>очков навыка в этом древе талантов"
			else
					ret = ret .. "<color=0xff05ff00>" .. tal .. " <color=0xffffffff>очков навыка"
			end
	ret = ret .. "\\n    "
	end



	if use == 1 then
			--Тип травмы, урона
			local type = Tooltip.GetSkillDamageType(proto)
			if type > 0 and type < 9 then
					ret = ret .. "\\n<color=0xffffffff>Тип урона: " .. "<color=0xffffbc00>" .. dmg_table[type] 
			end
	end

	if use == 1 then
			--Мощность навыка
			local single,sum = Tooltip.GetSkillDamage(obj,proto)
			if single ~= nil and single > 100000 then
					ret = ret .. "\\nМощность <color=0xff00a2ff> " .. GetInteger((single-100000)/100) .. "%" .. "<color=0xffffffff>" .. "Параметры оружия"
			elseif sum ~= nil and sum > 0 then
					ret = ret .. "\\nМощность <color=0xff00a2ff> " .. sum .. "<color=0xffffffff>"
			end
			--Количество травм у цели
			local damageNum = Tooltip.GetSkillDamageNum(proto)
			if damageNum > 1 then
					ret = ret .. "\\nКол-во целей <color=0xff00a2ff> " .. damageNum .. " <color=0xffffffff>"
			end
			--Дистанция применения, радиус
			local new = Tooltip.GetSkillOPDistance(obj,proto)
			if new > 0 then
					ret = ret .. "\\nДистанция<color=0xff00a2ff> " .. GetInteger(new/100) .. "<color=0xffffffff> м."
			end
			--Время применения
			local new = Tooltip.GetSkillPrepareTime(obj,proto)
			if new > 0 then
					ret = ret .. "\\nПрименение<color=0xff00a2ff> " .. GetFloat(new/1000,0.1) .. "<color=0xffffffff> сек."
			end
			--Время отката, перезарядка
			local new = Tooltip.GetSkillCooldownTime(obj,proto)
			if new > 0 then
					ret = ret .. "\\nПерезарядка<color=0xff00a2ff> " .. GetFloat(new/1000,0.1) .. "<color=0xffffffff> сек."
			end

			ret = ret .. "\\n    "
	end

	--Бонус, размер
 	local att = Tooltip.GetSkillAttribute(proto)
	if att ~= nil then
			for k, v in pairs(att) do
					if att_table[k] then
							stratt = string.gsub(att_table[k], "#", GetValueDisplay(k, v))
							ret = ret .. "\\n" .. stratt
					end
			end
	end

	if use == 2 then
			--ret = ret .. "\\n  "
	end

	--Описание
	ret = ret .. "\\n" .. Tooltip.GetSkillDesc(proto)

	--Текст ниже, эффект
	local next = Tooltip.GetSkillNextLevel(proto)
	if next ~= "" then
			ret = ret .. "\\n  \\nСледующий уровень: \\n" .. next
	end


	return ret
end
