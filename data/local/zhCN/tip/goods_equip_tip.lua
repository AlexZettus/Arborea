local sex_table = {[0]="Жен.","Муж."}
local quality_color = {[0]="<color=0xffffffff>",[1]="<color=0xfffff717>",[2]="<color=0xff05ff00>",[3]="<color=0xff00a2ff>",[4]="<color=0xffff7800>",[5]="<color=0xff9932cd>",[6]="<color=0xffff80c0>",[255]="<color=0xff8d8d8d>"}
local atta_table = {[0]="комплекция",[1]="военная сила",[2]="истина",[3]="сила заклинаний",[4]="сила технологий",[5]="техника отработки движений"}
local clan_table = {[0]="Регулус","Шэньнун","Фу-си","Сань-мяо","Цзю-ли","Юэчжи","Нюй-ва","Гунгун"}
local reput_table = {[0]="Ненависть","отвращение","равнодушие","нейтралитет","дружелюбие","близость","доверие","уважение","поклонение","легендарность"}
local ShengLingAtt = {[0]="Урон","Защита","Убийство", "Устойчивость", "Ярость", "Точность", "Проницательность"}
local att_table =
{
	[0]="<color=0xffff80c0>комплекция",
	[1]="<color=0xffff80c0>военная сила",
	[2]="<color=0xffff80c0>истина",
	[3]="<color=0xffff80c0>сила заклинаний",
	[4]="<color=0xffff80c0>сила технологий",
	[5]="<color=0xffff80c0>техника отработки движений",
	[6]="<color=0xff00a2ff>пересчет атрибутов",
	[7]="<color=0xff00a2ff>пересчет талантов",
	[8]="<color=0xff00a2ff>Макс ОЗ",
	[9]="<color=0xff00a2ff>Физическая сила",
	[10]="<color=0xff00a2ff>верхняя граница истины",
	[11]="<color=0xff00a2ff>истина",
	[12]="<color=0xff00a2ff>Физическая атака",
	[13]="<color=0xff00a2ff>Физическая защита",
	[14]="<color=0xff00a2ff>Магическая атака",
	[15]="<color=0xff00a2ff>Магическая защита",
	[16]="<color=0xff00a2ff>Точность",
	[17]="<color=0xff00a2ff>Ловкость",
	[18]="<color=0xff00a2ff>Попадание в цель",
	[19]="<color=0xff00a2ff>Уклонение",
	[20]="<color=0xff00a2ff>Сила духа",
	[21]="<color=0xff00a2ff>Верхняя граница силы духа",
	[22]="<color=0xff00a2ff>Восстановление физической силы",
	[23]="<color=0xff00a2ff>Восстановление истины",
	[24]="<color=0xff00a2ff>Ярость",
	[25]="<color=0xff00a2ff>Жизненная сила",
	[26]="<color=0xff00a2ff>Верхняя граница жизненной силы",
	[27]="<color=0xff00a2ff>Восстановление жизненной силы",
	[28]="<color=0xff00a2ff>Скорость перемещения",
	[29]="<color=0xff00a2ff>Способность к прыжкам",
	[30]="<color=0xff00a2ff>Скорость плавания",
	[31]="<color=0xff00a2ff>Скорость верховой езды",
	[32]="<color=0xff00a2ff>Минимальный урон оружию",
	[33]="<color=0xff00a2ff>Максимальный урон оружию",
	[34]="<color=0xff00a2ff>урон заклинаний",
	[35]="<color=0xff00a2ff>Броня",
	[36]="<color=0xff00a2ff>Обычное уменьшение урона",
	[37]="<color=0xff00a2ff>Уменьшение урона кровотечением",
	[38]="<color=0xff00a2ff>Магическое уменьшение урона",
	[39]="<color=0xff00a2ff>уменьшение урона небесным войском",
	[40]="<color=0xff00a2ff>Токсичность для уменьшения урона",
	[41]="<color=0xff00a2ff>Божественный звук для уменьшения урона",
	[42]="<color=0xff00a2ff>Уменьшение урона с помощью неба и земли",
	[43]="<color=0xff00a2ff>Мастерство для уменьшения урона",
	[44]="<color=0xff00a2ff>Физическое уменьшение урона",
	[45]="<color=0xff00a2ff>Заклинательное уменьшение урона",
	[46]="<color=0xff00a2ff>Полное уменьшение урона",
	[47]="<color=0xff00a2ff>Доп. урон",
	[48]="<color=0xff00a2ff>Привлечение урона",
	[49]="<color=0xff00a2ff>Сопротивление определенному урону",
	[50]="<color=0xff00a2ff>Слабое сопротивление",
	[51]="<color=0xff00a2ff>Сопротивление результату контроля",
	[52]="<color=0xff00a2ff>Замедление сопротивления",
	[53]="<color=0xff00a2ff>Духовность",
	[54]="<color=0xff00a2ff>Мастштаб провала атаки",
	[55]="<color=0xff00a2ff>Избегание ближнего боя",
	[56]="<color=0xff00a2ff>Избегание дальнего боя",
	[57]="<color=0xff00a2ff>Жестокий удар",
	[58]="<color=0xff00a2ff>Сила жестокого удара",
	[59]="<color=0xff00a2ff>Качество формы",
	[60]="<color=0xff00a2ff>Вдохновение",
	[61]="<color=0xff00a2ff>Укрывательство",
	[62]="<color=0xff00a2ff>Восприятие",
	[63]="<color=0xff00a2ff>Боевой дух",
	[64]="<color=0xff00a2ff>Внутренний урон",
	[65]="<color=0xff00a2ff>Ненависть",
	[66]="<color=0xff00a2ff>Телосложение",
	[67]="<color=0xffff80c0>Дополнение боевого опыта",
	[68]="<color=0xffff80c0>Дополнение внезапного богатства",
	[69]="<color=0xffff80c0>Дополнение шанса разбогатеть",
	[70]="<color=0xffff80c0>Удача",
	[71]="<color=0xffff80c0>Темперамент",
	[72]="<color=0xffff80c0>Управление",
	[73]="<color=0xffff80c0>Опыт",
	[74]="<color=0xffff80c0>Мораль",
	[75]="<color=0xffff80c0>Исправление",
	[83]="<color=0xff00a2ff>Прочность",
	[84]="<color=0xff00a2ff>Увеличение урона небесного воинства",
	[85]="<color=0xff00a2ff>Увеличение магического урона",
	[86]="<color=0xff00a2ff>Увеличение урона наба и земли",
	[87]="<color=0xff00a2ff>Увеличение урона божественного звука",
	[88]="<color=0xff00a2ff>Увеличение физического урона",
	[89]="<color=0xff00a2ff>Увеличение урона от заклинаний",
	[90]="<color=0xff00a2ff>Увеличение полного урона",
	[92]="<color=0xff00a2ff>Урон стихий",
	[109]="<color=0xff00a2ff>Сопротивление силе заклинаний горения",
	[110]="<color=0xff00a2ff>Прочность",
	[111]="<color=0xff00a2ff>Уровень прочности",
	[112]="<color=0xff00a2ff>Сопротивление результату контроля",
	[113]="<color=0xff00a2ff>Усиление результата контроля",
	[114]="<color=0xff00a2ff>Укрепление определенного урона",
	[115]="<color=0xff00a2ff>Укрепление результата старения",
	[116]="<color=0xff00a2ff>Укрепление результата замедления",
	[117]="<color=0xff00a2ff>Физическое восстановление от урона",
	[118]="<color=0xff00a2ff>Доля физического восстановления",
	[119]="<color=0xff00a2ff>Магическое восстановление от  урона",
	[120]="<color=0xff00a2ff>Доля магического восстановления",
	[121]="<color=0xff00a2ff>Уменьшение физического восстановления",
	[122]="<color=0xff00a2ff>Уменьшение магического восстановления",
	[123]="<color=0xff00a2ff>Сила заклинаний горения",
	[124]="<color=0xff00a2ff>Ежедневная вера",
	[125]="<color=0xff00a2ff>Игнорирование атаки",
	[126]="<color=0xff00a2ff>Игнорирование защиты",
	[127]="<color=0xff00a2ff>Святой дух",
	[131]="<color=0xff00a2ff>Стихийное проникновение",
	[132]="<color=0xff00a2ff>Сопротивление элемента",

}

--Преобразование времени，единица - секунда
local ONE_YEAR 	= 365*24*60*60
local ONE_MONTH	= 30*24*60*60
local ONE_DAY	 	= 24*60*60
local ONE_HOUR	 	= 60*60
local ONE_MINUTE 	= 60

--Взять несколько пощиций после запятой
local function GetFloat(x,n)
		return x-x%n
end

--Округление
local function GetInteger(x)
		return x-x%1
end
--Округление процентов(ставить два знака после запятой)
local function GetPercent(x)
		local y = x/100
		return y-y%0.01
end
local function GetTimeDisplayLite(n)
	if n > ONE_YEAR then
			return GetInteger(n/ONE_YEAR) .. " г."
	elseif n > ONE_MONTH then
			return GetInteger(n/ONE_MONTH) .. " мес."
	elseif n > ONE_DAY then
			return GetInteger(n/ONE_DAY) .. " дн."
	elseif n > ONE_HOUR then
			return GetInteger(n/ONE_HOUR) .. " ч."
	elseif n > ONE_MINUTE then
			return GetInteger(n/ONE_MINUTE) .. " мин."
	else
			return "меньше минуты"
	end
end

function GetObjString(proto,quality,nameid)

	local ret = "<Font=arial,0,20,20><color=0xffffffff>"

	--Сорт
	local qualcolor = quality_color[quality]
	if qualcolor then
			ret = ret .. qualcolor
	end

	--Наименование
	ret = ret .. Tooltip.GetItemNameEx(proto,nameid)

	ret = ret .. "<Font=arial,0,16,20><color=0xff05ff00>"

	--Категория
	ret = ret .. "\\n" .. Tooltip.GetItemType(proto)
	--Привязка
	if Tooltip.GetItemBindType(proto) == 1 then

			ret = ret .. "\\n" .. "Привязан к персонажу"

	end

	ret = ret .. "<color=0xffffbc00>"
	--границы пола
	local sex = Tooltip.GetItemSexLimit(proto)
	if sex ~= -1 then

			ret = ret .. "\\n" .. sex_table[sex] .. " персонаж"

	end

	--границы уровня
	local lvlimit = Tooltip.GetItemLevelLimit(proto)
	if lvlimit > 1 then

			ret = ret .. "\\n  \\nТребуемый ур.: "

			local playerlv = Tooltip.GetLocalPlayerLevel()
			if playerlv < lvlimit then
					ret = ret .. "<color=0xffff402d>" .. lvlimit .. " <color=0xffffbc00>ур."
			else
					ret = ret .. "<color=0xff05ff00>" .. lvlimit .. " <color=0xffffbc00>ур."
			end
	end

	--особая оценка оборотня，прибавить оборотню атрибутов
	local fabaoAtt1,fabaoAtt2,fabaoAtt3=Tooltip.GetFabaoRoleAtt(proto)
	if fabaoAtt1 ~= nil then
		ret = ret .. "\\n" .. att_table[fabaoAtt1]
	end
	if fabaoAtt2 ~= nil then
		ret = ret .. "\\n" .. att_table[fabaoAtt2]
	end
	if fabaoAtt3 ~= nil then
		ret = ret .. "\\n" .. att_table[fabaoAtt3]
	end

	--границы божественной природы
	local lvlimit = Tooltip.GetEquipGodHeadLimit(0,proto)
	if lvlimit > 1 then
		ret = ret .. "\\nТребуемый ур. святости: "

		local playerlv = Tooltip.GetLocalPlayerGodHead()
		if playerlv > lvlimit then
			ret = ret .. "<color=0xffff402d>" .. lvlimit .. " <color=0xffffbc00>ур."
		else
			ret = ret .. "<color=0xff05ff00>" .. lvlimit .. " <color=0xffffbc00>ур."
		end
	end
	
	--границы атрибутов
	for i=0,5 do
			local new = Tooltip.GetEquipAttributeLimit(0,proto,i)
			if new > 0 then
					local origin = Tooltip.GetLocalPlayerAttBidden(i) + Tooltip.GetLocalPlayerAttLevelup(i)
					if origin < new then
							ret = ret .. "\\nТребуемые параметры: " .. atta_table[i] .. " <color=0xffff402d>" .. new .. "<color=0xffffbc00>"
					else
							ret = ret .. "\\nТребуемые параметры: " .. atta_table[i] .. " " .. new
					end
			end
	end
	
	--Границы престижа клана
	local clan,cval = Tooltip.GetItemClanReputeLimit(proto)
	clan = clan - 20
	if clan >= 0 and cval > 0 then
		local lpclan = Tooltip.GetLocalPlayerRepution(clan)
		if lpclan >= cval then
			ret = ret .. "\\nЗаслужите у семьи" .. clan_table[clan] .. "уровень репутации " .. reput_table[cval]
		else
			ret = ret .. "\\nЗаслужите у семьи" .. clan_table[clan] .. "уровень репутации<color=0xffff402d> " .. reput_table[cval] .. "<color=0xffffbc00>"
		end
	end

	--описание
	--ret = ret .. "\\n<color=0xffffffff>" .. Tooltip.GetItemDesc(proto)
	ret = ret .. "\\n<color=0xffffffff>" .. Tooltip.GetEquipDescEx(proto)
	
	if quality == 255 then
			--ret = ret .. "\\n" .. quality_color[255] .. "не определено"
			return ret
	end

	ret = ret .. "\\n  "
	ret = ret .. "<color=0xffffffff>"

	--Коэффициент влияния полученного оборудования на соответствующие атрибуты
	local fweapon,farmor,fpotval = Tooltip.GetEquipQltyEffect(quality)

	--урон оборудования
	local min,max = Tooltip.GetEquipWeaponDamage(0,proto)
	if min > 0 and max > 0 then
			ret = ret .. "\\nФиз. урон " .. GetInteger(min*fweapon) .. " - " .. GetInteger(max*fweapon)
	end
	--урон заклинаний
	local hun = Tooltip.GetEquipWeaponWuhun(0,proto)
	if hun > 0 then
			ret = ret .. "\\nМаг. урон " .. GetInteger(hun*fweapon)
	end
	--броня
	local armor = Tooltip.GetEquipArmorDefine(0,proto)
	if armor > 0 then
			ret = ret .. "\\nБроня " .. GetInteger(armor*farmor)
	end

	--потенциал
	--local new,maxv,fabaoflag = Tooltip.GetShopEquipPotVal(0,proto)
	--if fabaoflag == 12 then
			--ret = ret .. "\\nпримерная величина укрепления" .. new
	--elseif new > 0 and new ~= nil then
			--ret = ret .. "\\nпримерная величина укрепления" .. GetInteger(new*fpotval)
	--end

	--темперамент
	local att = Tooltip.GetEquipProtoAtt(proto)
	if att then
		for k,v in pairs(att) do
			if k == 71 then
				ret = ret .. "\\nВнешний вид " .. v
			end
		end

	end

	--Атрибуты святого духа
	local isShengLing = Tooltip.IsHolyMan(proto)
	if isShengLing ~= nil then
		if isShengLing == 1 then
			--начинает демонстрировать атрибуты оборудования святого духа
			local ShengLing1,ShengLing2,ShengLing3,ShengLing4,ShengLing5,ShengLing6,ShengLing7,ShengLing8 = Tooltip.GetGoodsHolyManAtt(proto)
			if ShengLing1~= nil then
				ret = ret .. "\\n<color=0xff00a2ff>" .. "Урон  +" .. ShengLing1
			end
			if ShengLing2~= nil then
				ret = ret .. "\\n<color=0xff00a2ff>" .. "Защита  +" .. ShengLing2
			end
			if ShengLing3~= nil then
				ret = ret .. "\\n<color=0xff00a2ff>" .. "Чудесная сила  " .. ShengLing3
			end
			if ShengLing4~= nil then
				ret = ret .. "\\n<color=0xff00a2ff>" .. "Убийство  +" .. ShengLing4
			end
			if ShengLing5~= nil then
				ret = ret .. "\\n<color=0xff00a2ff>" .. "Устойчивость  +" .. ShengLing5
			end
			if ShengLing6~= nil then
				ret = ret .. "\\n<color=0xff00a2ff>" .. "Ярость  +" .. ShengLing6
			end
			if ShengLing7~= nil then
				ret = ret .. "\\n<color=0xff00a2ff>" .. "Точность  +" .. ShengLing7
			end
			if ShengLing8~= nil then
				ret = ret .. "\\n<color=0xff00a2ff>" .. "Проницательность  +" .. ShengLing8
			end

		end
	end

	local isShengLingEquip = Tooltip.IsHolyManEquip(proto)
	if isShengLingEquip ~= nil then
		if isShengLingEquip == 1 then
			local ShengWen1,ShengWen2,ShengWen3,ShengWen4,ShengWen5,ShengWen6,ShengWen7,ShengWen8,ShengWen9,ShengWen10,ShengWen11,ShengWen12,ShengWen13,ShengWen14 = Tooltip.GetGoodsHolyEquipAtt(proto)
			if ShengWen1 ~= nil and ShengWen2 ~= 0 then
				ret = ret .. "\\n<color=0xff00a2ff>" .. ShengLingAtt[ShengWen1] .. "  +" .. ShengWen2
			end
			if ShengWen3 ~= nil and ShengWen4 ~= 0 then
				ret = ret .. "\\n<color=0xff00a2ff>" .. ShengLingAtt[ShengWen3] .. "  +" .. ShengWen4
			end
			if ShengWen5 ~= nil and ShengWen6 ~= 0 then
				ret = ret .. "\\n<color=0xff00a2ff>" .. ShengLingAtt[ShengWen5] .. "  +" .. ShengWen6
			end
			if ShengWen7 ~= nil and ShengWen8 ~= 0 then
				ret = ret .. "\\n<color=0xff00a2ff>" .. ShengLingAtt[ShengWen7] .. "  +" .. ShengWen8
			end
			if ShengWen9 ~= nil and ShengWen10 ~= 0 then
				ret = ret .. "\\n<color=0xff00a2ff>" .. ShengLingAtt[ShengWen9] .. "  +" .. ShengWen10
			end
			if ShengWen11 ~= nil and ShengWen12 ~= 0 then
				ret = ret .. "\\n<color=0xff00a2ff>" .. ShengLingAtt[ShengWen11] .. "  +" .. ShengWen12
			end
			if ShengWen13 ~= nil and ShengWen14 ~= 0 then
				ret = ret .. "\\n<color=0xff00a2ff>" .. ShengLingAtt[ShengWen13] .. "  +" .. ShengWen14
			end

		end
	end

	--атрибут оборудования
	local suit = "\\n \\n<color=0xff9932cd>Параметры<color=0xffffffff>"
	for i=0,2 do
			local suitid,new,num,maxnum = Tooltip.GetEquipSuitName(proto,quality,i)
			if new ~= nil then
					suit = suit .. "\\n<color=0xff05ff00>" .. new .. "<color=0xffffbc00>  " .. num .. "/" .. maxnum
					if num >= 1 then
							for i=0,4 do
									quat,att = Tooltip.GetEquipSuitAttribute(suitid,i)
									if quat ~= nil and att ~= nil then
											if quat <= num then
												suit = suit .. "\\n" .. quat .. "шт. " .. att
												--break
											else
												suit = suit .. "\\n<color=0xff8d8d8d>" .. quat .. "шт. " .. att

											end
									end
							end
					end
			end
	end
	if suit ~= "\\n \\n<color=0xff9932cd>атрибут оборудования<color=0xffffffff>"	then
			ret = ret .. "\\n<color=0xffffffff>" .. suit
	end

	ret = ret .. "\\n<color=0xffffffff>"
	--оставшееся время
	local totalTimeLimit = Tooltip.GetItemProtoAllTimeLimit(proto)
	if totalTimeLimit ~= nil and totalTimeLimit > 0 then
			ret = ret .. "\\nОсталось " .. GetTimeDisplayLite(totalTimeLimit)
	end

	return ret
end

