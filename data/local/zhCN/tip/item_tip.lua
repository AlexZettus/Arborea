local sex_table = {[0] = "Жен.",[1] = "Муж."}
local quality_color = {[0]="<color=0xffffffff>",[1]="<color=0xfffff717>",[2]="<color=0xff05ff00>",[3]="<color=0xff00a2ff>",[4]="<color=0xffff7800>",[5]="<color=0xff9932cd>",[6]="<color=0xffff80c0>",[255]="<color=0xff8d8d8d>"}
local usetype_table =
{
	"",
	"Используйте на снаряжении в инвентаре",
	"Используйте на наряде в инвентаре",
	"Поместите в инвентарь или в слот улучшения",
	"Поместите в слот создания наряда"
}

local itemDesc =
{
	-- Трекер сообщения
	--[1360110] = "Персонаж не может использовать операции в следующих случаях: смерть, головокружение, сонливость, неподвижное тело, бизнес, которым управляют, ПК, тюрьма, кабина, верхом. \ \ N, если цель игроком в регионе (поле практика, копия Город станции Запретный город) не может быть передан, операция передачи не удастся."
}

local equip_pos = {"Оружие","Шлем","Доспех","Штаны","Перчатки","Обувь","Плащ","Эльф","Ожерелье","Кольцо","Пояс","Кристалл"}
local clan_table = {[0]="Отец","Бог земледелия","Фу-си","Сан Мяо","Ли","Юэчжи","Нюйва","Гунгун"}
local reput_table = {[0]="Ненависть","Враждебность","Недоверие","Равнодушие","Доверие","Дружелюбие","Уважение","Почтение","Восхищение","Превознесение"}

--Время использования, в секундах
local ONE_YEAR 	= 365*24*60*60
local ONE_MONTH	= 30*24*60*60
local ONE_DAY	 	= 24*60*60
local ONE_HOUR	 	= 60*60
local ONE_MINUTE 	= 60
local ONE_SECOND 	= 60

--Знаки после запятой
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
--Отображаемое время
local function GetTimeDisplay(n)
	if n > ONE_YEAR then
			return GetInteger(n/ONE_YEAR) .. " год"
	elseif n > ONE_MONTH then
			return GetInteger(n/ONE_MONTH) .. " мес."
	elseif n > ONE_DAY then
			return GetInteger(n/ONE_DAY) .. " дн."
	elseif n > ONE_HOUR then
			return GetInteger(n/ONE_HOUR) .. " ч."
	elseif n > ONE_MINUTE then
			return GetInteger(n/ONE_MINUTE) .. " мин."
	else
			return "менее 1 мин."
	end
end

function GetObjString(obj,proto)

	local ret = "<font=Arial,0,20,20><color=0xffffffff>"

	local quality = Tooltip.GetItemQuality(obj,proto)
	local qualcolor = quality_color[quality]
	if qualcolor then
			ret = ret .. qualcolor
	end
	--Название
	ret = ret .. Tooltip.GetItemName(obj)

	ret = ret .. "<font=Arial,0,16,20><color=0xff05ff00>"
	--Тип
	ret = ret .. "\\n" .. Tooltip.GetItemType(proto)

	--Владелец предмета, если невозможно поднять выпавший предмет залоченный мист. замком
	local roleName = Tooltip.GetItemYueDingRoleName(obj)
	if roleName ~= nil then
		ret = ret .. "Законный владелец[" .. roleName .."]"
	end

	--Владелец предмета
	if Tooltip.GetItemBindState(obj) == true then
			ret = ret .. "\\n" .. "Владелец:"
			local roleName = Tooltip.GetItemBindRoleName(obj)
			if roleName ~= nil then
				ret = ret .. "[" .. roleName .."]"
			end
	end

	--Привязка к персонажу
	if Tooltip.GetItemAccountBindState(obj) == true then
			ret = ret .. "\\n" .. "Привязан"
	end
	--Отображение блокировки предмета
	if Tooltip.GetItemLockState(obj) then
		local strResult = Tooltip.GetItemLockString(obj)
		if strResult == nil then
			ret = ret .. "\\nПредмет заблокирован"
		else
			ret = ret .. "\\n " .. strResult .. " Разблокировать"
		end
	end

	ret = ret .. "<color=0xffffbc00>"
	--Половые ограничения, гендерные ограничения
	local sex = Tooltip.GetItemSexLimit(proto)
	if sex ~= -1 then

			ret = ret .. "\\n" .. sex_table[sex] .. "персонаж"

	end
	--Требования уровня
	local lvlimit = Tooltip.GetItemLevelLimit(proto)
	if lvlimit > 1 then

			ret = ret .. "\\n  \\nТребуемый ур.: "

			playerlv = Tooltip.GetLocalPlayerLevel()
			if playerlv < lvlimit then
					ret = ret .. "<color=0xffff402d>" .. lvlimit .. " <color=0xffffbc00>"
			else
					ret = ret .. "<color=0xff05ff00>" .. lvlimit .. " <color=0xffffbc00>"
			end

	end

	--Требование по вере
	local beliefcost = Tooltip.IsCostBelief(proto)
	if beliefcost ~= nil then
		local att = Tooltip.GetLocalPlayerAttribute(107)
		if beliefcost <= att then
			ret = ret .. "\\nТребуется веры: " .. "<color=0xff00ff00>" ..beliefcost
		else
			ret = ret .. "\\nТребуется веры: " .. "<color=0xffff0000>" ..beliefcost
		end

	end

	--Требование по репутации
	local clan,cval = Tooltip.GetItemClanReputeLimit(proto)
	clan = clan - 20
	if clan >= 0 and cval > 0 then
		local lpclan = Tooltip.GetLocalPlayerRepution(clan)
		if lpclan >= cval then
			ret = ret .. "\\nЗаслужите у семьи" .. clan_table[clan] .. "уровень репутации " .. reput_table[cval]
		else
			ret = ret .. "\\nЗаслужите у клана" .. clan_table[clan] .. "уровень репутации<color=0xffff402d> " .. reput_table[cval] .. "<color=0xffffbc00>"
		end
	end
	--Книги навыков
	local skill = Tooltip.GetItemLearnSkill(proto)
	if skill then
		--Ограничения

		--Предварительно изученные навыки
		local pre,level,bhave = Tooltip.GetSkillPreSkill(0,skill,0)
		if pre and level then
				ret = ret .. "\\nТребования навыка "
				if not bhave then
						ret = ret .. "\\n<color=0xffff402d>" .. pre .. " " .. level .. "уровень" .. "<color=0xffffffff>"
				else
						ret = ret .. "\\n" ..pre .. " " .. level .. "уровень"
				end
				for i=1,9 do
					local pre2,level2,bhave2 = Tooltip.GetSkillPreSkill(obj,proto,i)
					if pre2 and level2 then
						if not bhave2 then
							ret = ret .. "\\n<color=0xffff402d>" .. pre2 .. " " .. level2 .. "уровень" .. "<color=0xffffffff>"
						else
								ret = ret .. "\\n" ..pre2 .. " " .. level2 .. "уровень"
						end
					end
				end
		end
		--Изучение
		local flag = Tooltip.GetSkillIsLearn(skill)
		if flag then
			ret = ret .. "\\n<color=0xffff402d>изучен"
		end
	end
	--Пустые строки
	ret = ret .. "\\n    "
	ret = ret .. "<color=0xffffffff>"
	--Частота, колличество использований
	local maxusetimes = Tooltip.GetItemMaxUseTimes(proto)
	if maxusetimes > 1 then

			usedtimes = Tooltip.GetItemUseTimes(obj)

			if usedtimes == nil then
					usedtimes = 0
			end

			ret = ret .. "\\nОсталось зарядов: " .. (maxusetimes - usedtimes) .. " из " .. maxusetimes

	end

	--Время использования
	if Tooltip.IsItemInAmazingBag(obj) == false then
			local timelimit = Tooltip.GetItemTimeLimit(obj)
			if timelimit ~= nil and timelimit > 0 then
				ret = ret .. "\\nОсталось: " .. "<color=0xffffae00>" .. GetTimeDisplay(timelimit) .. "<color=0xffffffff>" .. " "
			end
	end

	--Укрепление класса реквизит
	if Tooltip.ShowStrengthenPart(proto) == true then
			--ret = ret .. "\\nПотребление" .. potval .. "одетого потенциального предмета"

			ret = ret .. "\\nЯчейка предмета: ".."<color=0xff05ff00>"
			for i=0,11 do
					by = Tooltip.GetItemHoldEquipPos(proto,i)
					if by~=nil and by == 1 then
							j = i+1
							ret = ret .. equip_pos[j].. " "
					end
			end
			ret = ret .."<color=0xffffffff>"
	end

	--Минимальный уровень предмета
	local strenLevel = Tooltip.StrengthenLevel(proto)
	if strenLevel ~= nil and strenLevel > 0 then
			ret = ret .. "\\nМин. уровень предмета:<color=0xfffff717> " .. strenLevel .."<color=0xffffffff>"
	end

	--Поступление в продажу
	--local bCanSell = Tooltip.GetItemCanSell(proto)
	--if bCanSell ~= nil and bCanSell == 0 then
		--ret = ret .. "\\n<color=0xffff402d>Невозможно продать<color=0xffffffff>"
	--elseif bCanSell ~= nil and bCanSell == 1 then
	--	ret = ret .. "\\n<color=0xff05ff00>Можно продать<color=0xffffffff>"
	--end

	--Сила применяемого навыка
	local power = Tooltip.GetFairyPower(obj)
	if power > 0 then
		ret = ret .. "\\nКоэффициент успеха:<color=0xfffff717> " .. power .."<color=0xffffffff> "
	end

	--Максимальное количество, стек, возможность складывания
	local new = Tooltip.GetItemMaxItem(proto)
	if new ~= nil and new > 0 then
		ret = ret .. "\\nСтек<color=0xfffff717> " .. new .."<color=0xffffffff> шт."
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

	--Описание
	ret = ret .. "\\n \\n" .. Tooltip.GetItemDesc(proto)


	--Создатель
	local creator = Tooltip.GetItemCreator(obj)
	if creator ~= nil then

		ret = ret .. "\\n  \\nСоздатель:<color=0xff06d401> " .. Tooltip.GetItemCreator(obj) .. "<color=0xffffffff>"

	end

	--[[Описание навыка
	local areadesc = Tooltip.GetAreaSkillBookDesc(proto)
	if areadesc ~= nil then
		ret = ret .. "\\n \\n<color=0xff00ff00>" .. Tooltip.GetItemName(obj) ..":" .. areadesc
	end]]

	--Описание применения
	local usetype = Tooltip.GetItemUseType(proto)
	if usetype then
			usetypedesc = usetype_table[usetype]
			if usetypedesc then
					ret = ret .. "\\n \\n" .. usetypedesc
			end
	end

	-- Предметы - специальные инструкции, написанные в поле таблице item_name по алфавиту, отображение подсказок
	local itemTypeID = Tooltip.GetItemTypeID(proto)
	if itemTypeID then
		local desc = itemDesc[itemTypeID]
		if desc then
			ret = ret .. "\\n<color=0xff05ff00>Подсказка: \\n<color=0xffffffff>" .. desc
		end
	end

	return ret
end

