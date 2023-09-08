local sex_table = {[0] = "Жен.", [1] = "Муж."}
local quality_color = {[0]="<color=0xffffffff>",[1]="<color=0xfffff717>",[2]="<color=0xff05ff00>",[3]="<color=0xff00a2ff>",[4]="<color=0xffff7800>",[5]="<color=0xff9932cd>",[6]="<color=0xffff80c0>",[255]="<color=0xff8d8d8d>"}
local usetype_table =
{
	"",
	"Используйте на снаряжении в инвентаре",
	"Используйте на наряде в инвентаре",
	"Поместите в инвентарь или в слот улучшения",
	"Поместите в слот создания наряда"
}
local equip_pos = {"Оружие","Шлем","Доспех","Штаны","Перчатки","Обувь","Плащ","Эльф","Ожерелье","Кольцо","Пояс","Кристалл"}
local clan_table = {[0]="Отец","Бог земледелия","Фу-си","Сан Мяо","Ли","Юэчжи","Нюйва","Гунгун"}
local reput_table = {[0]="Ненависть","Враждебность","Недоверие","Равнодушие","Доверие","Дружелюбие","Уважение","Почтение","Восхищение","Превознесение"}

--Время преобразования, в секундах
local ONE_YEAR 	= 365*24*60*60
local ONE_MONTH	= 30*24*60*60
local ONE_DAY	 	= 24*60*60
local ONE_HOUR	 	= 60*60
local ONE_MINUTE 	= 60

--Значение после запятой
local function GetFloat(x,n)
		return x-x%n
end

--Округление
local function GetInteger(x)
		return x-x%1
end
--Взятие процента, два знака после запятой
local function GetPercent(x)
		local y = x/100
		return y-y%0.01
end
local function GetTimeDisplayLite(n)
	if n > ONE_YEAR then
			return GetInteger(n/ONE_YEAR) .. " г. "
	elseif n > ONE_MONTH then
			return GetInteger(n/ONE_MONTH) .. " мес. "
	elseif n > ONE_DAY then
			return GetInteger(n/ONE_DAY) .. " дн. "
	elseif n > ONE_HOUR then
			return GetInteger(n/ONE_HOUR) .. " ч. "
	elseif n > ONE_MINUTE then
			return GetInteger(n/ONE_MINUTE) .. " мин. "
	else
			return " менее 1 мин. "
	end
end

function GetObjString(proto,known,nameid)

	local ret = "<font=Arial,0,20,20><color=0xffffffff>"

	local quality = Tooltip.GetItemQuality(0,proto)
	local qualcolor = quality_color[quality]
	if qualcolor then
			ret = ret .. qualcolor
	end
	--Название
	ret = ret .. Tooltip.GetItemNameEx(proto,nameid)

	ret = ret .. "<font=Arial,0,16,20><color=0xff05ff00>"
	--Тип
	ret = ret .. "\\n" .. Tooltip.GetItemType(proto)
	--Владелец
	if Tooltip.GetItemBindType(proto) == 1 then

			ret = ret .. "\\n" .. "Владелец: "

	end


	ret = ret .. "<color=0xffffbc00>"
	--Половые ограничения, гендерные ограничения
	local sex = Tooltip.GetItemSexLimit(proto)
	if sex ~= -1 then

			ret = ret .. "\\n" .. sex_table[sex] .. " персонаж"

	end
	--Предел уровня, требования
	local lvlimit = Tooltip.GetItemLevelLimit(proto)
	if lvlimit > 1 then

			ret = ret .. "\\n  \\nТребуемый ур: "

			local playerlv = Tooltip.GetLocalPlayerLevel()
			if playerlv < lvlimit then
					ret = ret .. "<color=0xffff402d>" .. lvlimit .. " <color=0xffffbc00>"
			else
					ret = ret .. "<color=0xff05ff00>" .. lvlimit .. " <color=0xffffbc00>"
			end

	end
	--Требования по репутации клана
	local clan,cval = Tooltip.GetItemClanReputeLimit(proto)
	clan = clan - 20
	if clan >= 0 and cval > 0 then
		local lpclan = Tooltip.GetLocalPlayerRepution(clan)
		if lpclan >= cval then
			ret = ret .. "\\nЗаслужите у гильдии " .. clan_table[clan] .. " уровень репутации " .. reput_table[cval]
		else
			ret = ret .. "\\nЗаслужите у гильдии " .. clan_table[clan] .. " уровень репутации<color=0xffff402d> " .. reput_table[cval] .. "<color=0xffffbc00>"
		end
	end
	--Книги навыков
	local skill = Tooltip.GetItemLearnSkill(proto)
	if skill then
		--Ограничение

		--Предварительные навыки
		local pre,level,bhave = Tooltip.GetSkillPreSkill(0,skill,0)
		if pre and level then
				ret = ret .. "\\nНавык: "
				if not bhave then
						ret = ret .. "\\n<color=0xffff402d>" .. pre .. " " .. level .. "уровень " .. "<color=0xffffffff>"
				else
						ret = ret .. "\\n" ..pre .. " " .. level .. " уровень"
				end
				for i=1, 9 do
					local pre2,level2,bhave2 = Tooltip.GetSkillPreSkill(obj,proto,i)
					if pre2 and level2 then
						if not bhave2 then
							ret = ret .. "\\n<color=0xffff402d>" .. pre2 .. " " .. level2 .. " уровень" .. "<color=0xffffffff>"
						else
								ret = ret .. "\\n" ..pre2 .. " " .. level2 .. " уровень"
						end
					end
				end
		end
		--Изучено
		local flag = Tooltip.GetSkillIsLearn(skill)
		if flag then
			ret = ret .. "\\n<color=0xffff402d> изучен"
		end
	end
	--Пустые строки
	ret = ret .. "\\n    "
	ret = ret .. "<color=0xffffffff>"
	--Максимальное количество использований
	local maxusetimes = Tooltip.GetItemMaxUseTimes(proto)
	if maxusetimes > 1 then

			ret = ret .. "\\nИспользования: " .. maxusetimes .. "/" .. maxusetimes

	end

	--Стоимость усиления
	local potval = Tooltip.GetItemCostPotVal(proto)
	if potval~=nil and potval > 0 then
			ret = ret .. "\\nСтоимость " .. potval .. " усиления"

			ret = ret .. "\\nУлучшить часть  ".."<color=0xff05ff00>"
			for i=0,11 do
					by = Tooltip.GetItemHoldEquipPos(proto,i)
					if by~=nil and by == 1 then
							j = i+1
							ret = ret .. equip_pos[j].. " "
					end
			end
			ret = ret .. "\\n ".."<color=0xffffffff>"
	end

	--Улучшение части
	if Tooltip.ShowGoodsUsePart(proto) == true then
			ret = ret .. "\\nУлучшаемая часть ".."<color=0xff05ff00>"
			for i=0,11 do
					by = Tooltip.GetItemHoldEquipPos(proto,i)
					if by~=nil and by == 1 then
							j = i+1
							ret = ret .. equip_pos[j].. " "
					end
			end
			ret = ret .."<color=0xffffffff>"
	end

	--Улучшение части, уровень
	local level = Tooltip.ShowGoodsUseLevel(proto)
	if level ~= nil and level > 0 then
			ret = ret .. "\\nМин. ур. улучшаемого снаряжения <color=0xfffff717> " .. level .."<color=0xffffffff>"
	end

	--Время применения
	local new = Tooltip.GetItemPreTime(proto)
	if new ~= nil and new > 0 then
		ret = ret .. "\\n \\nПрименение<color=0xff05ff00> " .. new / 1000 .. "<color=0xffffffff> сек."
	end

	--Время перезарядки, откат
	local cdTime = Tooltip.GetItemCoolDownTime(proto)
	if cdTime > 0 then
		ret = ret .. "\\nПерезарядка<color=0xff00a2ff> " .. GetFloat(cdTime/1000,0.1) .. "<color=0xffffffff> сек."
	end

		--Успех, эффективность применения
	local power = Tooltip.GetProtoFairyPower(proto)
	if power > 0 then
		ret = ret .. "\\nУспех<color=0xfffff717> " .. power .."<color=0xffffffff> "
	end

	--Описание
	ret = ret .. "\\n \\n" .. Tooltip.GetItemDesc(proto)

	--Тип применения
	local usetype = Tooltip.GetItemUseType(proto)
	if usetype then
			local usetypedesc = usetype_table[usetype]
			if usetypedesc then
					ret = ret .. "\\n \\n" .. usetypedesc
			end
	end

	--Оставшееся время
	local totalTimeLimit = Tooltip.GetItemProtoAllTimeLimit(proto)
	if totalTimeLimit ~= nil and totalTimeLimit > 0 then
			ret = ret .. "\\nОсталось " .. GetTimeDisplayLite(totalTimeLimit) .. " "
	end

	return ret
end

