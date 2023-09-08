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

	local ret = "<font=Arial,0,20,20><color=0xffffffff>"
	--Название
	ret = ret .. Tooltip.GetSkillName(proto)

	ret = ret .. "<font=Arial,0,16,20>"

	--Уровень навыка
	local level = Tooltip.GetSkillLevel(proto)
	local maxlevel = Tooltip.GetSkillMaxLevel(proto)
	if maxlevel > 1 then
		ret = ret .. "[<color=0xff05ff00>" .. level .. "уровень<color=0xffffffff>]"
	end

	--Тип навыка
	local new = Tooltip.GetSkillType(proto)
	if new > 1 and new < 25 then
		ret = ret .. "\\n" .. type_table[new]
	end

	--Активный, пассивный
	local use = Tooltip.GetSkillUseType(proto)
	if use == 1 then
			ret = ret .. "\\n<color=0xff05ff00>Активный<color=0xffffffff>"
	elseif use == 2 then
			ret = ret .. "\\n<color=0xff00a2ff>Пассивный<color=0xffffffff>"
	end
	ret = ret .. "\\n"

	if use == 1 then
			--Мощность навыка
			local new = Tooltip.GetSkillDamage(obj,proto)
			if new > 0 then
					ret = ret .. "\\nМощность <color=0xff00a2ff> " .. new .. "<color=0xffffffff>"
			end
			--Радиус применения
			local new = Tooltip.GetSkillOPDistance(obj,proto)
			if new > 0 then
					ret = ret .. "\\nДистанция<color=0xff00a2ff> " .. GetInteger(new/100) .. "<color=0xffffffff> м."
			end
			--Применение, время
			local new = Tooltip.GetSkillPrepareTime(obj,proto)
			if new > 0 then
					ret = ret .. "\\nПрименение <color=0xff00a2ff> " .. GetFloat(new/1000,0.1) .. "<color=0xffffffff> сек."
			end
			--Перезарядка навыка, откат
			local new = Tooltip.GetSkillCooldownTime(obj,proto)
			if new > 0 then
					ret = ret .. "\\nПерезарядка <color=0xff00a2ff> " .. GetFloat(new/1000,0.1) .. "<color=0xffffffff> сек."
			end

			ret = ret .. "\\n    "
	end

	--Бонус навыка
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
			ret = ret .. "\\n  "
	end

	--Описание навыка
	ret = ret .. "\\n" .. Tooltip.GetSkillDesc(proto)
	ret = ret .. "\\n\\n\\n\\n\\n\\n"
	ret = ret .. "Этот навык улучшен максимально.  "
	return ret
end
