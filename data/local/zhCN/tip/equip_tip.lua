--Tooltip.GetEquipType(obj,proto)
--[[
	0,
	1,	// Предметы потребления
	2,	// Предметы неоднократного потребления
	3,	// Особый Предмет
	4,	// Питомцы
	5,	// Наряды из набора
	6,	// Предметы из премиум-магазина
	7,	// Оружие
	8,	// Броня
	9,	// Украшения
	10,	// Одежда
	11,	// Латы
	12,	// Амулеты
	13,	// Новинки
]]
local sex_table = {[0]="Женское","Мужское"}

local att_table =
{
	[0]="Сложение#",
	[1]="Сила#",
	[2]="Дух#",
	[3]="Интеллект#",
	[4]="Навык#",
	[5]="Проворство#",
	[6]="<color=0xff00a2ff>#Параметры",
	[7]="<color=0xff00a2ff>#Таланты",
	[8]="<color=0xff00a2ff>#Макс. ОЗ",
	[9]="<color=0xff00a2ff>#ОЗ",
	[10]="<color=0xff00a2ff>#Макс. ОМ",
	[11]="<color=0xff00a2ff>#ОМ",
	[12]="<color=0xff00a2ff>#Физическая атака",
	[13]="<color=0xff00a2ff>#Физическая защита",
	[14]="<color=0xff00a2ff>#Магическая атака",
	[15]="<color=0xff00a2ff>#Магическая защита",
	[16]="<color=0xff00a2ff>#Точность",
	[17]="<color=0xff00a2ff>#Ловкость",
	[18]="<color=0xff00a2ff>#Меткость",
	[19]="<color=0xff00a2ff>#Уворот",
	[20]="<color=0xff00a2ff>#Божественная сила",
	[21]="<color=0xff00a2ff>#Макс. Божественная сила",
	[22]="<color=0xff00a2ff>#Восстановление ОЗ",
	[23]="<color=0xff00a2ff>#Восстановление ОМ",
	[24]="<color=0xff00a2ff>#Ярость",
	[25]="<color=0xff00a2ff>#Энергия",
	[26]="<color=0xff00a2ff>#Макс. Энергия",
	[27]="<color=0xff00a2ff>#Восстановление Энергии",
	[28]="<color=0xff00a2ff>#Скорость передвижения",
	[29]="<color=0xff00a2ff>#Способность прыгать",
	[30]="<color=0xff00a2ff>#Скорость плавания",
	[31]="<color=0xff00a2ff>#Скорость транспорта",
	[32]="<color=0xff00a2ff>#Мин. урон оружия",
	[33]="<color=0xff00a2ff>#Макс. урон оружия",
	[34]="<color=0xff00a2ff>#Урон артефакта",
	[35]="<color=0xff00a2ff>#Броня",
	[36]="<color=0xff00a2ff>#Уменьшение обычного урона",
	[37]="<color=0xff00a2ff>#Уменьшение урона кровотечения",
	[38]="<color=0xff00a2ff>#Уменьшение урона стрелка",
	[39]="<color=0xff00a2ff>#Уменьшение урона воина",
	[40]="<color=0xff00a2ff>#Уменьшение урона яда",
	[41]="<color=0xff00a2ff>#Уменьшение урона барда",
	[42]="<color=0xff00a2ff>#Уменьшение урона мага",
	[43]="<color=0xff00a2ff>#Снижение урона святости",
	[44]="<color=0xff00a2ff>#Уменьшение физического урона ",
	[45]="<color=0xff00a2ff>#Уменьшение магического урона ",
	[46]="<color=0xff00a2ff>#Уменьшение всего урона ",
	[47]="<color=0xff00a2ff>#Доп. урон",
	[48]="<color=0xff00a2ff>#Поглощение урона",
	[49]="<color=0xff00a2ff>#Мифическое сопротивление",
	[50]="<color=0xff00a2ff>#Сопротивление ослаблению",
	[51]="<color=0xff00a2ff>#Сопротивление контролю",
	[52]="<color=0xff00a2ff>#Сопротивление замедлению",
	[53]="<color=0xff00a2ff>#Духовность",
	[54]="<color=0xff00a2ff>#Промахи",
	[55]="<color=0xff00a2ff>#Уклонение в ближнем бою",
	[56]="<color=0xff00a2ff>#Уклонение в дальнем бою",
	[57]="<color=0xff00a2ff>#Критический удар",
	[58]="<color=0xff00a2ff>#Критический урон",
	[59]="<color=0xff00a2ff>#Блок",
	[60]="<color=0xff00a2ff>#Вдохновение",
	[61]="<color=0xff00a2ff>#Уворот",
	[62]="<color=0xff00a2ff>#Интуиция",
	[63]="<color=0xff00a2ff>#Боевой дух",
	[64]="<color=0xff00a2ff>#Рана",
	[65]="<color=0xff00a2ff>#Угроза",
	[66]="<color=0xff00a2ff>#Размер",
	[67]="<color=0xffff80c0>Доп.опыт#",
	[68]="<color=0xffff80c0>Доп.деньги#",
	[69]="<color=0xffff80c0>Качество трофеев#",
	[70]="Удача#",
	[71]="Внешний вид#",
	[72]="Лидерство#",
	[73]="Опыт#",
	[74]="Карма#",
	[75]="Производство#",
	[83]="<color=0xff00a2ff>#Упорство",
	[84]="<color=0xff00a2ff>#Повышение урона воина",
	[85]="<color=0xff00a2ff>#Повышение урона стрелка",
	[86]="<color=0xff00a2ff>#Повышение урона мага",
	[87]="<color=0xff00a2ff>#Повышение урона барда",
	[88]="<color=0xff00a2ff>#Повышение физ. урона ",
	[89]="<color=0xff00a2ff>#Повышение маг. урона ",
	[90]="<color=0xff00a2ff>#Повышение всего урона ",
	[92]="<color=0xff00a2ff>#Урон стихий",
	[109]="<color=0xff00a2ff>#Сопротивляемость сжиганию ОМ",
	[110]="<color=0xff00a2ff>#Упорство",
	[111]="<color=0xff00a2ff>#Уменьшение крит.урона",
	[112]="<color=0xff00a2ff>#Повышение сопротивления контролю",
	[113]="<color=0xff00a2ff>#Усиление контроля",
	[114]="<color=0xff00a2ff>#Повышение усиления миф. урона",
	[115]="<color=0xff00a2ff>#Усиления эффектов дряхления ",
	[116]="<color=0xff00a2ff>#Повышение усиления замедления",
	[117]="<color=0xff00a2ff>#Размер физ. урона от рикошета",
	[118]="<color=0xff00a2ff>#Физ. урон от рикошета",
	[119]="<color=0xff00a2ff>#Размер маг. урона от рикошета",
	[120]="<color=0xff00a2ff>#Маг. урон от рикошета",
	[121]="<color=0xff00a2ff>#Уменьшение урона от физ.рикошета ",
	[122]="<color=0xff00a2ff>#Уменьшение урона от маг.рикошета ",
	[123]="<color=0xff00a2ff>#Сжигание ОМ",
	[124]="<color=0xff00a2ff>#Ежедневная вера",
	[125]="<color=0xff00a2ff>#Игнорирование атаки",
	[126]="<color=0xff00a2ff>#Игнорирование защиты",
	[127]="<color=0xff00a2ff>#Дух богов",
	[131]="<color=0xff00a2ff>#Стихийное проникновение",
	[132]="<color=0xff00a2ff>#Сопротивление стихиям",
	[134]="<color=0xff00a2ff>#Коэффициент попадания",
	[135]="<color=0xff00a2ff>#Урон стихий",
	[136]="<color=0xff00a2ff>#Боевые умения святого духа",
	[137]="<color=0xff00a2ff>#Защита святого духа",
	[138]="<color=0xff00a2ff>#Убийство святого духа",
	[139]="<color=0xff00a2ff>#Устойчивость святого духа",
	[140]="<color=0xff00a2ff>#Ярость святого духа",
	[141]="<color=0xff00a2ff>#Меткость святого духа",
	[142]="<color=0xff00a2ff>#Проницательность святого духа",

}

local att_table2 =
{
	[0]="Сложение#",
	[1]="Сила#",
	[2]="Дух#",
	[3]="Интеллект#",
	[4]="Навык#",
	[5]="Проворство#",
	[6]="#Параметры",
	[7]="#Очки навыков",
	[8]="#Макс. ОЗ",
	[9]="#ОЗ",
	[10]="#Макс. ОМ",
	[11]="#ОМ",
	[12]="#Физ. атака",
	[13]="#Физ. защита",
	[14]="#Маг. атака",
	[15]="#Маг. защита",
	[16]="#Точность",
	[17]="#Ловкость",
	[18]="#Меткость",
	[19]="#Уворот",
	[20]="#Божественная сила",
	[21]="#Макс. Божественная сила",
	[22]="#Восстановление ОЗ",
	[23]="#Восстановление ОМ",
	[24]="#Ярость",
	[25]="#Энергия",
	[26]="#Макс. Энергия",
	[27]="#Восстановление Энергии",
	[28]="#Скорость передвижения",
	[29]="#Способность прыгать",
	[30]="#Скорость плавания",
	[31]="#Скорость транспорта",
	[32]="#Мин. урон оружия",
	[33]="#Макс. урон оружия",
	[34]="#Урон артефакта",
	[35]="#Броня",
	[36]="#Уменьшение обычного урона",
	[37]="#Уменьшение урона кровотечения",
	[38]="#Уменьшение урона стрелка",
	[39]="#Уменьшение урона воина",
	[40]="#Уменьшение урона яда",
	[41]="#Уменьшение урона мага",
	[42]="#Уменьшение урона барда",
	[43]="#Снижение урона святости",
	[44]="#Уменьшение физического урона ",
	[45]="#Уменьшение магического урона ",
	[46]="#Уменьшение всего урона ",
	[47]="#Доп. урон",
	[48]="#Поглощение урона",
	[49]="#Мифическое сопротивление",
	[50]="#Сопротивление ослаблению",
	[51]="#Сопротивление контролю",
	[52]="#Сопротивление замедлению",
	[53]="#Духовность",
	[54]="#Промахи",
	[55]="#Уклонение в ближнем бою",
	[56]="#Уклонение в дальнем бою",
	[57]="#Критический удар",
	[58]="#Критический урон",
	[59]="#Блок",
	[60]="#Вдохновение",
	[61]="#Уворот",
	[62]="#Интуиция",
	[63]="#Боевой дух",
	[64]="#Рана",
	[65]="#Угроза",
	[66]="#Размер",
	[67]="Доп.опыт#",
	[68]="Доп.деньги#",
	[69]="Качество трофеев#",
	[70]="Удача#",
	[71]="Внешний вид#",
	[72]="Лидерство#",
	[73]="Опыт#",
	[74]="Карма#",
	[75]="Производство#",
	[83]="#Упорство",
	[84]="#Повышение урона воина",
	[85]="#Повышение урона стрелка",
	[86]="#Повышение урона барда",
	[87]="#Повышение урона мага",
	[88]="#Повышение физического урона ",
	[89]="#Повышение магического урона ",
	[90]="#Повышение всего урона ",
	[92]="#Урон стихий",
	[109]="#Сопротивляемость сжиганию ОМ",
	[110]="#Упорство",
	[111]="#Уменьшение крит.урона",
	[112]="#Повышение сопротивления контролю",
	[113]="#Усиление контроля",
	[114]="#Повышение усиления миф. урона",
	[115]="#Усиления эффектов дряхления ",
	[116]="#Повышение усиления замедления",
	[117]="#Размер физ. урона от рикошета",
	[118]="#Вероятность физ. урона от рикошета",
	[119]="#Размер маг. урона от рикошета",
	[120]="#Вероятность маг. урона от рикошета",
	[121]="#Уменьшение урона от физ.рикошета ",
	[122]="#Уменьшение урона от маг.рикошета ",
	[123]="#Сжигание ОМ",
	[124]="#Ежедневная вера",
	[125]="#Атака презрения",
	[126]="#Защита презрения",
	[127]="#Дух богов",
	[131]="#Стихийное проникновение",
	[132]="#Сопротивление стихиям",
	[135]="#Урон стихий",
	[136]="#Боевые умения святого духа",
	[137]="#Защита святого духа",
	[138]="#Убийство святого духа",
	[139]="#Устойчивость святого духа",
	[140]="#Ярость святого духа",
	[141]="#Меткость святого духа",
	[142]="#Проницательность святого духа",
}

local NUM_TEXT =
{
	[0]="",
	[1]="<color=0xffffff00>I",
	[2]="<color=0xffffff00>II",
	[3]="<color=0xffffff00>III",
	[4]="<color=0xff05ff00>IV",
	[5]="<color=0xff05ff00>V",
	[6]="<color=0xff00a2ff>VI",
	[7]="<color=0xff00a2ff>VII",
	[8]="<color=0xffff6000>VIII",
	[9]="<color=0xffff6000>IX",
	[10]="<color=0xff9933ff>X",
	[11]="<color=0xffff00ff>XI",
	[12]="<color=0xffff00ff>XII",
}

local wuxing_hall = {"<color=0xffff402d>Душа огня",	"<color=0xffd1b945>Душа земли",	"<color=0xff706a9b>Душа тьмы",	"<color=0xffb3f3a9>Душа феи",	"<color=0xffffffff>Святая душа"}
local wuxing_qiehe_type = {"<color=0xffffbc00>3 паза пробуждения души", "<color=0xffffbc00>4 паза пробуждения души", "<color=0xffffbc00>5 пазов пробуждения души"}
local wuxing = {"Огонь",	"Земля",	"Тьма",	"Миф",	"Свет"}

local quality_color =
{
	[0]="<color=0xffffffff>",
	[1]="<color=0xfffff717>",
	[2]="<color=0xff05ff00>",
	[3]="<color=0xff00a2ff>",
	[4]="<color=0xffff7800>",
	[5]="<color=0xff9932cd>",
	[6]="<color=0xffff80c0>",
	[255]="<color=0xff8d8d8d>"
}

local equip_pos = {"Шлем","Эльф","Доспех","Штаны","Мантия","Перчатки","Обувь","Кольцо","Кольцо на левую руку","Пояс","Ожерелье","Осн.оружие","Доп.оружие"}

local spec_att_table =
{
	"Простой ограничение уровня снаряжения снижается на 5",
	"Упрощенный ограничение уровня снаряжения снижается на 10",
	"Без уровня снаряжение без уровня ограничения",
	"Легкий ограничение свойств снаряжения снижается на 10%",
	"Нормальный ограничение свойств снаряжения снижается на 25%",
	"Непринужденный ограничение свойств снаряжения снижается на 50%",
	"Скрытый феникс начальный потенциал снаряжения возрастает на 200",
	"Скрытый феникс начальный потенциал снаряжения возрастает на 400",
	"Летящий феникс начальный потенциал снаряжения возрастает на 800",
	"Голосящий феникс начальный потенциал снаряжения возрастает на 1200",
	"Спящий дракон начальный потенциал снаряжения повышается на 5%",
	"Спрятавшийся дракон начальный потенциал снаряжения повышается на 10%",
	"Притаившийся дракон начальный потенциал снаряжения повышается на 20%",
	"Парящий дракон начальный потенциал снаряжения повышается на 30%",
	"Защита гравировкой снаряжение не может потерпеть неудачу во время гравировки усиления",
	"Защита клейма снаряжение не может потерпеть неудачу во время клеймения усиления",
	"Защита высечения снаряжение не может потерпеть неудачу во время высечения усиления",
	"Защита дракона снаряжение не может потерпеть неудачу во время усиления дракона",
	"Защита закаливания снаряжение не может потерпеть неудачу во время усиления закаливанием",
	"Защита проложения снаряжение не может потерпеть неудачу во время усиления проложением",
	"Бесподобный снаряжение не может потерпеть неудачу во время любого усиления (кроме выплавления)",
	"Избавление от скверных Когда снаряжение улучшено, вероятность успеха увеличивается на 5%",
	"Удача Когда снаряжение улучшено, показатель совершенства увеличивается на 5%",
	"Защита гибели Снаряжение не будет утеряно, если герой погибнет"
}
local color_table = {[0]="Вариант 1","Вариант 2","Вариант 3","Вариант 4","Вариант 5","Вариант 6","Вариант 7","Вариант 8","Вариант 9","Вариант 10","Вариант 11","Вариант 12"}
local clan_table = {[0]="отец","Бог земледелия","Фу-си","Сан Мяо","Ли","Юэчжи","Нюйва","Гунгун"}
local reput_table = {[0]="Ненависть","Враждебность","Недоверие","Равнодушие","Доверие","Дружелюбие","Уважение","Почтение","Восхищение","Превознесение"}

--Преобразование времени, единица измерения секунда
local ONE_YEAR 	= 365*24*60*60
local ONE_MONTH	= 30*24*60*60
local ONE_DAY	 	= 24*60*60
local ONE_HOUR	 	= 60*60
local ONE_MINUTE 	= 60
local ONE_SECOND 	= 60

--Округление
local function GetInteger(x)
		return x-x%1
end
--Возьмем процент (до двух знаков после запятой)

local function GetPercent(x)
		local y = x/100
		return y-y%0.01
end
--Отображение времени
local function GetTimeDisplay(n)
	if n > ONE_YEAR then
			return GetInteger(n/ONE_YEAR) .. " года "
	elseif n > ONE_MONTH then
			return GetInteger(n/ONE_MONTH) .. " месяца "
	elseif n > ONE_DAY then
			return GetInteger(n/ONE_DAY) .. " суток "
	elseif n > ONE_HOUR then
			return GetInteger(n/ONE_HOUR) .. " часа "
	elseif n > ONE_MINUTE then
			return GetInteger(n/ONE_MINUTE) .. " минуты " 
	else
			return " Меньше минуты "
	end
end
--Отображение свойств процентного значения
local function GetValueDisplayPct(value)

	return value > 0 and (" + " .. GetInteger(value/100) .. "%% ") or (" - " .. GetInteger(0-value/100) .. "%% ")

end
--Отображение свойств значения
local function GetValueDisplay(type,value)

			if type == 28 or type == 29 or type == 30 or type == 31 or type == 36 or type == 54 or type == 55 or type == 56 or type == 58 or type == 59 or type == 67 or type == 68 or type == 69 then
					return GetValueDisplayPct(value)
			else
					return value > 0 and (" + " .. GetInteger(value) .. " ") or (" - " .. GetInteger(0 - value) .. " ")
			end
end
--Отображение свойств значения
local function GetValueDisplay2(type,value)
			local bpercent = false
			if value > 100000 then
				bpercent = true
				value = value - 100000
			elseif value < -100000 then
				bpercent = true
				value = value + 100000
			end

			if type == 28 or type == 29 or type == 30 or type == 31 or type == 36 or type == 54 or type == 55 or type == 56 or type == 58 or type == 59 or type == 67 or type == 68 or type == 69 or bpercent then
					return GetValueDisplayPct(value)
			else
					return value >= 0 and (" + " .. GetInteger(value) .. " ") or (" - " .. GetInteger(0 - value) .. " ")
			end
end
--Перечень упорядоченной последовательности
local function pairsByKeys(t,f)
	local a = {}
	for n in pairs(t) do a[#a + 1] = n end
	table.sort(a,f)
	local i = 0
	return function ()
		i = i + 1
		return a[i],t[a[i]]
	end
end
--Сравнение порядка свойств
local function compAtt(a,b)
	if a == 71 then return true end

	if b == 71 then return false end

	return a < b
end


function GetObjString(obj,proto)

	local ret = "<font=Arial,0,20,20><color=0xffffffff>"

	--Ранг
	local quality = Tooltip.GetItemQuality(obj,proto)
	local qualcolor = quality_color[quality]
	if qualcolor then
			ret = ret .. qualcolor
	end

	--Название
	ret = ret .. Tooltip.GetItemName(obj)

	--Кристалл души
	local equippos = Tooltip.GetEquipPos(proto)
	if equippos == 13 then -- Согласно определенной позиции это Кристалл души
		ret = ret .. " Ур. " .. Tooltip.GetHunJingLevel(obj) .. " "
	end

	--Количество усилений
	local strengLevel = Tooltip.GetEquipStrengLevel(obj);
	if(strengLevel>0) then
			ret = ret .. "+" .. strengLevel;
	end

	--Количество дополнений
	local BrandLevel = Tooltip.GetEquipBrandLevel(obj);
	if(BrandLevel>0) then
			ret = ret .. " Знаков " .. BrandLevel;
	end

	--Уровень пробуждения
	local AwakenLevel = Tooltip.GetAwakenLevel(obj);
	if(AwakenLevel>0) then
			ret = ret .. " Уровень пробуждения " .. AwakenLevel;
	end

	--Уровень заряженных узоров
	local chongnengLevel = Tooltip.GetShengWenChongLevel(obj);
	if chongnengLevel ~= nil and chongnengLevel>0 then
			ret = ret .. "+" .. chongnengLevel;
	end

	ret = ret .. "<font=Arial,0,16,20><color=0xff05ff00>"
	--[[Состояние полета
	if Tooltip.IsEquipSoaring(obj) == true then
			ret = ret .. "\\n" .. "уже отлит"
	end]]

	--Состояние производства
	local ju,ming,rong = Tooltip.GetEquipProduceState(obj)
	if ju or ming or rong then
			ret = ret .. "\\n"
			--[[
			if ju > 0 then
					ret = ret .. "Высекать" .. ju
			end
			if ming > 0 then
					ret = ret .. "Гравировать" .. ming
			end
			--]]
			if rong > 0 then
					ret = ret .. "Плавить" .. rong
			end
	end


	--Виды
	ret = ret .. "\\n" .. Tooltip.GetEquipTypeDesc(obj,proto)

	--Соединение
	if Tooltip.GetItemBindState(obj) == true then
			ret = ret .. "\\n" .. "Владелец: "
			local roleName = Tooltip.GetItemBindRoleName(obj)
			if roleName ~= nil then
				ret = ret  .. "[" .. roleName .."]"
			end
	end

  --Предмет заблокирован(предмет заблокирован)
	if Tooltip.GetItemLockState(obj) then
		local strResult = Tooltip.GetItemLockString(obj)
		if strResult == nil then
			ret = ret .. "\\nЗаблокирован"
		else
			ret = ret .. "\\n " .. strResult .. " Снятие блокировки"
		end
	end


	ret = ret .. "<color=0xffffbc00>"
	--Половые ограничения
	local sex = Tooltip.GetItemSexLimit(proto)
	if sex ~= -1 then
		mysex = Tooltip.GetLocalPlayerSex()
		if mysex == sex then
			ret = ret .. "\\n".. "Ограничения: "..sex_table[sex]
		else
			ret = ret .. "\\n<color=0xffffbc00>Ограничения: ".. "<color=0xffff402d>" .. sex_table[sex]
		end

	end



	--Уровень ограничений
	local lvlimit = Tooltip.GetEquipLevelLimit(obj)
	if lvlimit > 1 then
		ret = ret .. "\\n  \\nТребуемый ур.: "

		local playerlv = Tooltip.GetLocalPlayerLevel()
		if playerlv < lvlimit then
			ret = ret .. "<color=0xffff402d>" .. lvlimit .. " <color=0xffffbc00> ур."
		else
			ret = ret .. "<color=0xff05ff00>" .. lvlimit .. " <color=0xffffbc00> ур."
		end
	end


	--Ограничения святости
	local lvlimit = Tooltip.GetEquipGodHeadLimit(obj,0)
	if lvlimit~=nil and lvlimit >= 1 then
		ret = ret .. "\\nТребуемый ур. святости: "

		local playerlv = Tooltip.GetLocalPlayerGodHead()
		if playerlv < lvlimit then
			ret = ret .. "<color=0xffff402d>" .. lvlimit .. " <color=0xffffbc00>ур."
		else
			ret = ret .. "<color=0xff05ff00>" .. lvlimit .. " <color=0xffffbc00>ур."
		end
	end

	--Уровень ковки и точные правила
	if quality >= 5 and Tooltip.IsHolyMan(proto) ~= 1 and Tooltip.IsHolyManEquip(proto) ~= 1 then --Ранг больше фиолетового цвета，Уровеньбольше 70
		local soar_level = Tooltip.Getequip_soar_level(obj)
		if soar_level >= 10 then
			ret = ret .. "\\n<color=0xffffbc00>Божественная ковка: <color=0xffffffff>" .. soar_level .. "<color=0xffffbc00> ур."
		elseif soar_level <= 0 then
			if Tooltip.GetEquipType(obj,proto)~=12 and Tooltip.GetEquipType(obj,proto)~=10 then
			ret = ret .. "\\n<color=0xffffbc00>Не перекован"
			end
		else
			ret = ret .. "\\n<color=0xffffbc00>Уровень ковки: <color=0xffffffff>" .. soar_level .. " <color=0xffffbc00>ур."
		end
	end

	--Ограничения свойств
    if quality ~= 255 then
		for i=0,5 do
				local new = Tooltip.GetEquipAttributeLimit(0,proto,i)
				if new > 0 then
						local origin = Tooltip.GetLocalPlayerAttBidden(i) + Tooltip.GetLocalPlayerAttLevelup(i)
						if origin < new then
								strlimit = string.gsub(att_table[i], "#", " <color=0xffff402d>" .. new .. "<color=0xffffbc00>")
						else
								strlimit = string.gsub(att_table[i], "#", " " .. new)
						end
						ret = ret .. "\\nТребования свойств" .. strlimit
				end
		end
	end

	--Кристалл души
	local equippos = Tooltip.GetEquipPos(proto)
	if equippos == 13 then -- Согласно определенной позиции это Кристалл души
		local hunjingIntelligence, hunjingability=Tooltip.GetHunJingSpec(obj)
		ret = ret .. "\\n" .. "Способности " .. "<color=0xff05ff00>" .. hunjingIntelligence
		ret = ret .. "\\n" .. "Сила навыков " .. "<color=0xff05ff00>" .. hunjingability

		if nil ~= Tooltip.GetHunJingSkillDesc(obj) and nil ~= Tooltip.GetHunJingSkillName(obj) then
			ret = ret .. "\\n \\n<color=0xff05ff00>" .. Tooltip.GetHunJingSkillName(obj) .. ":<color=0xffffffff>\\n" .. Tooltip.GetHunJingSkillDesc(obj)
		end

		if nil ~= Tooltip.GetHunJingAttDesc(obj) then
			ret = ret .. "\\n \\n<color=0xff05ff00>Доп.умения：<color=0xffffffff>\\n" .. Tooltip.GetHunJingAttDesc(obj)
		end
	end

	--Ограничения родового авторитета
	--[[
	local clan,cval = Tooltip.GetItemClanReputeLimit(proto)
	clan = clan - 20
	if clan >= 0 and cval > 0 then
		local lpclan = Tooltip.GetLocalPlayerRepution(clan)
		if lpclan >= cval then
			if quality ~= 255 then
					ret = ret .. "\\nНеобходимо" .. clan_table[clan] .. "родовой авторитет " .. reput_table[cval]
			else
					ret = ret .. "\\nНеобходимо" .. clan_table[clan] .. "родовой авторитет<color=0xffff402d> " .. reput_table[cval] .. "<color=0xffffbc00>"
			end
		end
	end
	--]]

	--Срок использования
	if Tooltip.IsItemInAmazingBag(obj) == false then
			local timelimit = Tooltip.GetItemTimeLimit(obj)
			if timelimit ~= nil and timelimit > 0 then
				ret = ret .. "\\nОсталось более " .. GetTimeDisplay(timelimit)
			end
	end

	if quality == 255 then

			ret = ret .. "\\n" .. quality_color[255] .. "Не оцененный" .. "<color=0xffffffff>"



                        --Скорректированная ставка и вероятность фиолетовой оценки

			local pct,pctex,Voilet1 = Tooltip.GetEquipQltyModPct(obj)


			if pct < 0 then
			-- 一Скорректированная ставка меньше нуля начать

			-- Вероятность оценки
				local White,Yellow,Green,Blue,Orange,Voilet = Tooltip.GetEquipQltyPct(proto)



				if Orange~=nil and Orange >0  then
					local orate = Orange/10000*(1+pct/10000)
					orate = GetInteger(orate*100)
					if orate >0  then
                        ret = ret  .. "<color=0xffff8000>"
						ret = ret  .. "\\nВероятность оранжевого цвета: почти " .. orate .. "%"
					end
				end

				if Blue~=nil and Blue   >0  then
					local brate = Blue/10000*(1+pct/10000)-Orange/10000*pct/10000
					brate = GetInteger(brate*100)
					if brate >0   then
                        ret = ret  .. "<color=0xff0088ff>"
						ret = ret  .. "\\nВероятность синего цвета: почти " .. brate .. "%"
					end
				end

				if Green ~=nil and Green  >0  then
					local grate = Green/10000*(1+pct/10000)-Blue/10000*pct/10000
					grate = GetInteger(grate*100)
					if grate  >0  then
                        ret=  ret   .. "<color=0xff00ff00>"
						ret = ret  .. "\\nВероятность зеленого цвета: почти " .. grate .. "%"
					end
				end

				if Yellow~=nil and Yellow >0  then
					local yrate = Yellow/10000*(1+pct/10000)-Green/10000*pct/10000
					yrate = GetInteger(yrate*100)
					if yrate  >0  then
                        ret = ret  .. "<color=0xffffff00>"
						ret = ret  .. "\\nВероятность желтого цвета: почти " .. yrate .."%"
					end
				end

				if White~=nil and White  >0  then
					local wrate = White/10000 - Yellow/10000*pct/10000
					wrate = GetInteger(wrate*100)
					if wrate  >0  then
                        ret = ret  .. "<color=0xffffffff>"
						ret = ret  .. "\\nВероятность белого цвета: почти " .. wrate .."%"
					end
				end
                        -- 一Скорректированная ставка меньше нуля завершить

			elseif pct >= 0 then

			-- 一Скорректированная ставка больше или равна нулю начать
				if pctex == nil then
					pctex = 0
				end

                        -- Вероятность оценки
				local White,Yellow,Green,Blue,Orange,Voilet = Tooltip.GetEquipQltyPct(proto)
				Voilet = Voilet1*100

				if voilet~=nil and Voilet > 0 then
					local vrate = GetInteger(Voilet/100)
					if vrate > 0 then
                        ret = ret  .. "<color=0xff5300a0>"
						ret = ret  .. "\\nВероятность фиолетового цвета: почти " .. vrate .. "%"
					end
				end

				if Orange~=nil and Orange >0  then
					local orate = (1-Voilet/10000)*(Orange/10000+Blue/10000*pct/10000+Green/10000*(1-pct/10000)*pctex/10000)
					orate = GetInteger(orate*100)
					if orate >0  then
                        ret = ret  .. "<color=0xffff8000>"
						ret = ret  .. "\\nВероятность оранжевого цвета: почти " .. orate .. "%"
					end
				end

				if Blue~=nil and Blue   >0  then
					local brate = (1-Voilet/10000)*(Blue/10000*(1-pct/10000)*(1-pctex/10000)+Green/10000*pct/10000+Yellow/10000*(1-pct/10000)*pctex/10000)
					brate = GetInteger(brate*100)
					if brate >0   then
                        ret = ret  .. "<color=0xff0088ff>"
						ret = ret  .. "\\nВероятность синего цвета: почти " .. brate .. "%"
					end
				end

				if Green~=nil and Green  >0  then
					local grate = (1-Voilet/10000)*(Green/10000*(1-pct/10000)*(1-pctex/10000)+Yellow/10000*pct/10000+White/10000*(1-pct/10000)*pctex/10000)
					grate = GetInteger(grate*100)
					if grate  >0  then
                        ret=  ret   .. "<color=0xff00ff00>"
						ret = ret  .. "\\nВероятность зеленого цвета: почти" .. grate .. "%"
					end
				end

				if Yellow~=nil and Yellow >0  then
					local yrate = (1-Voilet/10000)*(Yellow/10000*(1-pct/10000)*(1-pctex/10000)+White/10000*pct/10000)
					yrate = GetInteger(yrate*100)
					if yrate  >0  then
                        ret = ret  .. "<color=0xffffff00>"
						ret = ret  .. "\\nВероятность желтого цвета: почти" .. yrate .."%"
					end
				end

				if White~=nil and White  >0  then
					local wrate = (1-Voilet/10000)*(White/10000*(1-pct/10000)*(1-pctex/10000))
					wrate = GetInteger(wrate*100)
					if wrate  >0  then
                        ret = ret  .. "<color=0xffffffff>"
						ret = ret  .. "\\nВероятность белого цвета: почти" .. wrate .."%"
					end
				end
                        -- 一Скорректированная ставка больше или равна нулю завершить
			end

			ret = ret .. "\\n <color=0xffffffff>"

			--Мин. урон
			local minDmg,maxDmg =Tooltip.GetEquipWeaponDamage(proto)

			if minDmg > 0 then
				if maxDmg > 0 then
					ret = ret .. "\\n".."\\nМин. урон " .. minDmg .." - " .. maxDmg
				end
			end

			--Мин.магический урон
			--[[
			local minhun = Tooltip.GetEquipWeaponWuhun(proto)
				if minhun > 0 then
					ret = ret .. "\\n" .. "\\nМин.магический урон " .. minhun
				end
			--]]

			--Мин.потенциал
			--[[
			local  minpotval,maxpotval = Tooltip.GetEquipPotVal(proto)
			if maxpotval ~= nil then
				if minpotval > 0 then
					ret = ret .. "\\n" .. "\\nМин.значение усиления " .. minpotval .. "/" .. maxpotval
				end
			end
			ret = ret .. "\\n "
			--]]


			-- Мускулатура
            local att = Tooltip.GetEquipProtoAtt(proto)
			if att ~= nil then
		        for k, v in pairsByKeys(att,compAtt) do
					if  att_table[k] then
						stratt = string.gsub(att_table[k], "#", GetValueDisplay(k, v))
						ret = ret .. "\\n" .. stratt
					end
				end
				ret = ret .. "\\n <color=0xffff0000>Можно получить после оценки других свойств!"
			end

			--Описание снаряжения
			local dest = Tooltip.GetEquipDescEx(proto)
			if dest ~= nil then
				ret = ret .. "\\n <color=0xffffffff> "
				ret = ret .. "\\n "
				ret = ret .. dest
			end

      --Подпись снаряжения, если есть подпись производителя, покрывает
			local bSignatrued = Tooltip.IsEquipSignatured(obj)
			if bSignatrued ~= nil and bSignatrued ~= false then
				local strPlayer = Tooltip.GetEquipSignaturePlayer(obj)
				local strSignatrueDesc = Tooltip.GetEquipSignature(obj)
				if strPlayer ~= nil then
					ret = ret .. "\\n<color=0xff06d401>".. strPlayer .. ":"
				end
				if( strSignatrueDesc ~= nil ) then
					ret = ret .. "\\n" .. strSignatrueDesc
				end
			else
				--Производитель,если снаряжение использует подпись IM предметов, то подпись производителя будет покрыта
				local creator = Tooltip.GetItemCreator(obj)
				if creator ~= nil then
					ret = ret .. "\\n  \\n" .. "<color=0xff06d401>" .. Tooltip.GetItemCreator(obj) .. "<color=0xffffffff>" .. "Создать"
				end
			end

			return ret
	end

	--Рост свойств
	local isGrowEquip = Tooltip.GetIsGrowEquip(obj)
	if isGrowEquip ~= nil then
		local curEquipGrowExp, curEquipGrowMaxExp = Tooltip.GetEquipGrowExp(obj)	--Получить опыт снаряжения
		local equipGrowStrength = Tooltip.GetGrowEquipStrength(obj)								--Мощь снаряжения роста
		if curEquipGrowExp ~= nil and curEquipGrowMaxExp ~= nil and equipGrowStrength ~= nil then
			ret = ret .. "\\n<color=0xffffbc00>Магия Звезд " .. NUM_TEXT[equipGrowStrength] .. "<color=0xffffbc00> ： " .. curEquipGrowExp .. "/" .. curEquipGrowMaxExp
		end
		local equipGrowStarColor = Tooltip.GetEquipStarColor(obj)
		if equipGrowStarColor ~= nil then
			ret = ret .. "\\n<color=0xffffffff>"
			for i=0,9 do
				ret = ret .. equipGrowStarColor[i]
			end
		end
		local equipGrowAttType, equipGrowAttValue= Tooltip.GetEquipGrowAtt(obj)	--Свойства Снаряжения
		if equipGrowAttValue ~= nil and equipGrowAttType ~= nil then
			for i=0,4 do
				if equipGrowAttType[i] ~= nil and equipGrowAttValue[i] ~= nil then
					if att_table[equipGrowAttType[i]] then
						local stratt = string.gsub(att_table[equipGrowAttType[i]], "#", "")
						stratt = stratt .. equipGrowAttValue[i]
						ret = ret .. "\\n" .. stratt
					end
				end

			end
		end
	end

	ret = ret .. "<color=0xffffffff>"

	--Урон оружия
	local min,max = Tooltip.GetEquipWeaponDamage(obj,proto)
	--Магический урон
	local hun = Tooltip.GetEquipWeaponWuhun(obj,proto)
	--Броня
	local armor = Tooltip.GetEquipArmorDefine(obj,proto)
	if (min > 0 and max > 0) or hun > 0 or armor > 0 then
		--Пространство
		ret = ret .. "\\n  "

		if min > 0 and max > 0 then
			ret = ret .. "\\nУрон оружия " .. min .. " - " .. max
		end

		if hun > 0 then
				ret = ret .. "\\nУрон артефакта " .. hun
		end


		if armor > 0 then
				ret = ret .. "\\nБроня " .. armor
		end

	end

	--Новейший
	--[[
	--local new = Tooltip.GetEquipNewNess(obj,proto)
	--local equiptype = Tooltip.GetEquipType(obj,proto)
	--if 7 == equiptype then
		--if new < 0 then
			--new = 0
		--end
		--ret = ret .. "\\nДолговечный " .. new
	--end
	--]]
	--Потенциал
	--[[
	--local new,currmax,max = Tooltip.GetEquipPotVal(obj,proto)
	--if max >= 0 and new ~= nil then
			--ret = ret .. "\\nочки усиления " .. new .. "/" .. currmax .. "(Макс.:" .. max .. ")"
	--end

	--Количество возможного повышения потенциала
	local maxtime = Tooltip.GetEquipPotTime(obj,proto)
	if maxtime > 0 then
			ret = ret .. "\\nКоличество возможного повышения очков усиления " .. maxtime
	end
	--]]

    local nativeIntelligence, birthtime, attmods, halls, hallrewarded, hallrewardtypes, hallreward, linzhu, lizhurewardtypes1, lizhurewardtypes2, lizhurewardtypes3, lizhurewardtypes4, lizhurewardtypes5, lizhurewards1, lizhurewards2,lizhurewards3,lizhurewards4,lizhurewards5, wuxingReward, wuxingRewarded, skillnames=Tooltip.GetFaBaoSpec(obj)
	-- Амулеты природные дарования
	if nativeIntelligence ~= nil and nativeIntelligence>0 then
		ret = ret .. "\\n" .. "Способности эльфа " .. "<color=0xff05ff00>" .. nativeIntelligence
	end

	-- Количество размножений
	if birthtime ~= nil then
		ret = ret .. "\\n" .."<color=0xffffffff>".. "Кол-во возможных скрещиваний эльфа " .. "<color=0xff05ff00>" .. birthtime
	end

	-- Доп. свойства амулетов
	if attmods ~= nil then
		ret = ret .. "\\n "
		for k, v in pairs(attmods) do
			if att_table[k] ~= nil then
				if k < 92 or k > 97 then
					ret = ret .. "\\n" .. string.gsub(att_table[k], "#", GetValueDisplay(k, v))
				else
					ret = ret .. "\\n" .. string.gsub("<color=0xff00a2ff>#Урон стихий", "#", GetValueDisplay(k, v))
				end
			end
		end
	end

	--Бонус свойств
 	local att = Tooltip.GetEquipAttribute(obj)
	ret = ret .. "<color=ffff7800>"
	if att ~= nil then
	    ret = ret .. "\\n  "
		for k, v in pairsByKeys(att,compAtt) do
			if  att_table[k] then
				stratt = string.gsub(att_table[k], "#", GetValueDisplay(k, v))
				ret = ret .. "\\n" .. stratt
			end
		end
	end

	--Процент бонуса свойств
	local attpct = Tooltip.GetEquipAttributePct(obj)
	if attpct ~= nil then
		for k, v in pairs(att) do
			if  att_table[k] then
				stratt = string.gsub(att_table[k], "#", GetValueDisplayPct(k, v))
				ret = ret .. "\\n" .. stratt
			end
		end
	end

	-- Свойства усиления снаряжения
	local equipConsolidateAtt = Tooltip.GetEqipConsolidateAtt(obj)
	if equipConsolidateAtt ~= nil then
		ret = ret .. "\\n  "
		for k, v in pairs(equipConsolidateAtt) do
			if att_table[k] ~= nil then
				ret = ret .. "\\n" .. string.gsub(att_table[k], "#", GetValueDisplay(k, v))
			end
		end
	end

	--Бонус свойств плавления
 	local attrong = Tooltip.GetCastingAttribute(obj)
	if attrong ~= nil then
		for k, v in pairsByKeys(attrong,compAtt) do
			if  att_table[k] then
				stratt = string.gsub(att_table[k], "#", GetValueDisplay(k, v))
				ret = ret .. "\\n" .. stratt
			end
		end
	end

	-- Соответсвующие свойства святого духа
	local isShengLing = Tooltip.IsHolyMan(proto)
	if isShengLing ~= nil then
		if isShengLing == 1 then
			--Обнаруживает снаряжение святого духа,начинает демонстрацию свойств святого духа
			local shengling1,shengling2,shengling3,shengling4,shengling5,shengling6,shengling7,shengling8,shengling9,shengling10,shengling11,shengling12,shengling13,shenglingequiptable = Tooltip.GetHolyManAtt(obj)
			ret = ret .. "\\n\\n\\n\\n" .. "\\n<color=0xffffbc00>" .. "Уровень поглощения  " .. "<color=0xff05ff00>" .. shengling2 .. "<color=0xffffbc00>/" .. shengling12
			
			ret = ret .. "\\n" .. "\\n" .. "<color=0xffffbc00>Чудесная сила  " .. "<color=0xff05ff00>"  .. shengling13 .. "<color=0xffffbc00>/" .. shengling11 
			if shengling4 ~= 0 then
				ret = ret .. "\\n\\n" .. "<color=0xff00a2ff>Урон  " .. shengling4
			end
			if shengling5 ~= 0 then
				ret = ret .. "\\n<color=0xff00a2ff>" .. "Защита  " .. shengling5
			end
			if shengling6 ~= 0 then
				ret = ret .. "\\n<color=0xff00a2ff>" .. "Убийство  " .. shengling6
			end
			if shengling7 ~= 0 then 
				ret = ret .. "\\n<color=0xff00a2ff>" .. "Устойчивость  " .. shengling7
			end
			if shengling8 ~= 0 then
				ret = ret .. "\\n<color=0xff00a2ff>" .. "Ярость  " .. shengling8
			end
			if shengling9 ~= 0 then
				ret = ret .. "\\n<color=0xff00a2ff>" .. "Точность  " .. shengling9
			end
			if shengling10 ~= 0 then 
				ret = ret .. "\\n<color=0xff00a2ff>" .. "Проницательность  " .. shengling10
			end

			ret = ret .. "\\n\\n\\n\\n\\n<color=0xffffbc00>Используемые узоры:"
			if shenglingequiptable ~= nil then
				if shenglingequiptable[0] ~= nil then
					ret = ret .. "\\n" .. shenglingequiptable[0]
				end
				if shenglingequiptable[1] ~= nil then
					ret = ret .. "\\n" .. shenglingequiptable[1]
				end
				if shenglingequiptable[2] ~= nil then
					ret = ret .. "\\n" .. shenglingequiptable[2]
				end
				if shenglingequiptable[3] ~= nil then
					ret = ret .. "\\n" .. shenglingequiptable[3]
				end
				if shenglingequiptable[4] ~= nil then
					ret = ret .. "\\n" .. shenglingequiptable[4]
				end
				if shenglingequiptable[5] ~= nil then
					ret = ret .. "\\n" .. shenglingequiptable[5]
				end
			end

			--ret = ret .. "\\n" .. "Солидарность  " .. shengling1
			--ret = ret .. "\\n" .. "Количество поглощений эльфа  " .. shengling2
			--ret = ret .. "\\n" .. "Количество возможного снаряжения  " .. shengling3
			--ret = ret .. "\\n" .. "Урон святого духа  " .. shengling4
			--ret = ret .. "\\n" .. "Защита святого духа  " .. shengling5
			--ret = ret .. "\\n" .. "Смертельный риск  " .. shengling6
			--ret = ret .. "\\n" .. "Количество смертельного риска  " .. shengling7
			--ret = ret .. "\\n" .. "Повышение урона  " .. shengling8
			--ret = ret .. "\\n" .. "Меткость  " .. shengling9
			--ret = ret .. "\\n" .. "Ловкость  " .. shengling10
			--ret = ret .. "\\n" .. "Чудесная сила  " .. shengling11

		end
	end

	-- Свойства снаряжения святого духа
	local isShengLingEquip = Tooltip.IsHolyManEquip(proto)
	if isShengLingEquip ~= nil then
		if isShengLingEquip == 1 then
			--Начинает демонстрировать свойства снаряжения святого духа
			local ShengLingEquip1,ShengLingEquip2,ShengLingEquip3,ShengLingEquip4,ShengLingEquip5,ShengLingEquip6,ShengLingEquip7,ShengLingEquip8,ShengLingEquip9 = Tooltip.GetHolyEquipAtt(obj)
			ret = ret .. "\\n\\n\\n\\n\\n<color=0xffffbc00>" .. "Поглощение: " .. "<color=0xff05ff00>" .. ShengLingEquip9 .."<color=0xffffbc00> ур."
			
			ret = ret .. "\\n<color=0xffffbc00>" .. "Расход чудесной силы: " .. "<color=0xff05ff00>" .. ShengLingEquip1
			ret = ret .. "\\n\\n\\n\\n"
			if ShengLingEquip2 ~= 0 then
				ret = ret .. "\\n<color=0xff00a2ff>" .. "Урон  +" .. ShengLingEquip2
			end
			if ShengLingEquip3 ~= 0 then
				ret = ret .. "\\n<color=0xff00a2ff>" .. "Защита  +" .. ShengLingEquip3
			end
			if ShengLingEquip4 ~= 0 then
				ret = ret .. "\\n<color=0xff00a2ff>" .. "Убийство  +" .. ShengLingEquip4
			end
			if ShengLingEquip5 ~= 0 then
				ret = ret .. "\\n<color=0xff00a2ff>" .. "Устойчивость +" .. ShengLingEquip5
			end
			if ShengLingEquip6 ~= 0 then
				ret = ret .. "\\n<color=0xff00a2ff>" .. "Ярость  +" .. ShengLingEquip6
			end
			if ShengLingEquip7 ~= 0 then
				ret = ret .. "\\n<color=0xff00a2ff>" .. "Точность  +" .. ShengLingEquip7
			end
			if ShengLingEquip8 ~= 0 then
				ret = ret .. "\\n<color=0xff00a2ff>" .. "Проницательность  +" .. ShengLingEquip8
			end
		end
	end

	-- 槽
	if halls ~= nil and hallrewarded~=nil and hallrewardtypes~=nil and hallreward~=nil then
		for k, v in pairs(halls) do
			if hallrewardtypes[k] ~= nill and hallreward[k] ~= nil then -- Призовые свойства и очки не могут быть пустыми
				if linzhu[k] ~= nil then
					ret = ret .. "\\n" .. "<color=0xffffbc00>" .. linzhu[k] .. " "
					-- свойств
					if k == 1 then
						if lizhurewardtypes1[1] ~= nil then
							ret = ret .. string.gsub(att_table[lizhurewardtypes1[1]], "#", GetValueDisplay(lizhurewardtypes1[1], lizhurewards1[1]))
						end
						if lizhurewardtypes1[2] ~= nil then
							ret = ret .. " " ..string.gsub(att_table[lizhurewardtypes1[2]], "#", GetValueDisplay(lizhurewardtypes1[2], lizhurewards1[2]))
						end
						if lizhurewardtypes1[3] ~= nil then
							ret = ret .. " " .. string.gsub(att_table[lizhurewardtypes1[3]], "#", GetValueDisplay(lizhurewardtypes1[3], lizhurewards1[3]))
						end
					end

					if k ==2 then
						if lizhurewardtypes2[1] ~= nil then
							ret = ret .. string.gsub(att_table[lizhurewardtypes2[1]], "#", GetValueDisplay(lizhurewardtypes2[1], lizhurewards2[1]))
						end
						if lizhurewardtypes2[2] ~= nil then
							ret = ret .. " " ..string.gsub(att_table[lizhurewardtypes2[2]], "#", GetValueDisplay(lizhurewardtypes2[2], lizhurewards2[2]))
						end
						if lizhurewardtypes2[3] ~= nil then
							ret = ret .. " " .. string.gsub(att_table[lizhurewardtypes2[3]], "#", GetValueDisplay(lizhurewardtypes2[3], lizhurewards2[3]))
						end
					end

					if k ==3 then
						if lizhurewardtypes3[1] ~= nil then
							ret = ret .. string.gsub(att_table[lizhurewardtypes3[1]], "#", GetValueDisplay(lizhurewardtypes3[1], lizhurewards3[1]))
						end
						if lizhurewardtypes3[2] ~= nil then
							ret = ret .. " " ..string.gsub(att_table[lizhurewardtypes3[2]], "#", GetValueDisplay(lizhurewardtypes3[2], lizhurewards3[2]))
						end
						if lizhurewardtypes3[3] ~= nil then
							ret = ret .. " " .. string.gsub(att_table[lizhurewardtypes3[3]], "#", GetValueDisplay(lizhurewardtypes3[3], lizhurewards3[3]))
						end
					end

					if k ==4 then
						if lizhurewardtypes4[1] ~= nil then
							ret = ret .. string.gsub(att_table[lizhurewardtypes4[1]], "#", GetValueDisplay(lizhurewardtypes4[1], lizhurewards4[1]))
						end
						if lizhurewardtypes4[2] ~= nil then
							ret = ret .. " " ..string.gsub(att_table[lizhurewardtypes4[2]], "#", GetValueDisplay(lizhurewardtypes4[2], lizhurewards4[2]))
						end
						if lizhurewardtypes4[3] ~= nil then
							ret = ret .. " " .. string.gsub(att_table[lizhurewardtypes4[3]], "#", GetValueDisplay(lizhurewardtypes4[3], lizhurewards4[3]))
						end
					end

					if k ==5 then
						if lizhurewardtypes5[1] ~= nil then
							ret = ret .. string.gsub(att_table[lizhurewardtypes5[1]], "#", GetValueDisplay(lizhurewardtypes5[1], lizhurewards5[1]))
						end
						if lizhurewardtypes5[2] ~= nil then
							ret = ret .. " " ..string.gsub(att_table[lizhurewardtypes5[2]], "#", GetValueDisplay(lizhurewardtypes5[2], lizhurewards5[2]))
						end
						if lizhurewardtypes5[3] ~= nil then
							ret = ret .. " " .. string.gsub(att_table[lizhurewardtypes5[3]], "#", GetValueDisplay(lizhurewardtypes5[3], lizhurewards5[3]))
						end
					end



					-- Завершение свойств
				end
				ret = ret .. "\\n" .. wuxing_hall[v+1] .. " " 	-- имя слота
				if hallrewarded[k] then -- Активировать
					ret = ret .. "<color=0xff05ff00>"
					ret = ret .. string.gsub(att_table[hallrewardtypes[k]], "#", GetValueDisplay(hallrewardtypes[k], hallreward[k]))
				else	-- Не активировать
					ret = ret .. "<color=0xff8d8d8d>"
					ret = ret .. string.gsub(att_table2[hallrewardtypes[k]], "#", GetValueDisplay(hallrewardtypes[k], hallreward[k])).." [Неактивная]"
				end
			end
		end
	end
	-- Подходящий приз
	if wuxingReward ~= nil then
		ret = ret .."\\n".."\\n" -- Пространство
		for i=1,3 do
			if wuxingReward[i] ~= nil then
				ret = ret .."\\n".. wuxing_qiehe_type[i] .. " "
				if wuxingRewarded[i] then -- Активировать
					ret = ret .."<color=0xff05ff00>"
				else	-- Не активировать
					ret = ret .."<color=0xff8d8d8d>"
				end
				ret = ret .. wuxingReward[i]
			end
		end
	end

 	-- Навыки эльфа
	if skillnames ~= nil then
		ret = ret .."\\n".."\\n" -- Пространство
		ret = ret .."\\n".. "<color=0xff05ff00>"
		for i=1,5 do
			if skillnames[i] ~= nil then
				ret = ret .."\\n".. skillnames[i]
			end
		end
	end

	--Макс. повышение природных дарований эльфа，потенциал эльфа
	local isOpenYaoJingQianNeng = Tooltip.GetIsFaBaoQianNengOpen(obj)
	if isOpenYaoJingQianNeng ~= nil then
		if isOpenYaoJingQianNeng == 1 then
			ret = ret .. "\\n" .. "<color=0xff05ff00>Потенциал открыт"
		end
	end

	--Прирост драгоценных камней
	local diamondLevel = Tooltip.GetDiamondAddLevel(obj)
	if diamondLevel ~= nil and diamondLevel ~= 0 then
			ret = ret .. "\\n<color=0xffffbc00>Усиление камней: " .. "<color=0xff05ff00>" ..diamondLevel .. "<color=0xffffbc00>" .. "\\nБонус камней: " .. "<color=0xff05ff00>" .. diamondLevel .. "0%" 
	end

	--Драгоценный камень
	local gem
	local num,max = Tooltip.GetEquipHoldNum(obj)

	gem = "<font=Arial,0,13,20>"
	if max > 0 then
			gem = gem .. "<color=0xffffffff>"
			gem = gem .. "\\nКоличество ячеек " .. max
			for i=1,max do
					local name,desc,qual = Tooltip.GetEquipHoldGem(obj,i-1)
					if desc then
						desc = string.gsub(desc, "\\n.+", "", 1)
					end
					if name and desc and qual >=0 and qual <= 6 then
							gem = gem .. "\\n" .. quality_color[qual] .. name .. "<color=0xff05ff00>" .. " " .. desc
					end
			end
	end
	--Решить есть или нет свойства драгоценных камней
	if gem then
		ret = ret .. "\\n  " .. gem
	end

	--Дракон
	--[[
	local long = "Свойства души дракона"
	for i=1,5 do
			local new = Tooltip.GetEquipLongfu(obj,i-1)
			if new > 0 then
					long = long .. "\\n " .. wuxing[i] .. "Душа дракона " .. new
			end
	end
	--Внешняя сила души дракона
	local outer,name,desc = Tooltip.GetEquipLonghun(obj,false)
	if outer then
		local flag,pos, posR = Tooltip.GetEquipLonghunActive(obj,false)
		 if flag == true then
		 		 long = long .. quality_color[1]
		 else
		 		 long = long .. quality_color[255]
		 end
		 long = long .. "\\n[Внешний]" .. name .. " " .. desc
		 if posR ~= -1 then
			long = long .. "\\n Потребность левой руки " .. equip_pos[pos+1]
			long = long .. "\\n Потребность правой руки " .. equip_pos[posR+1]
		 else
			long = long .. "\\n Необходимо " .. equip_pos[pos+1]
		 end
		 long = long .. "\\n "
		 for i=1,5 do
				local new = Tooltip.GetEquipLonghunFive(outer,i-1)
				if new > 0 then
						long = long .. " " .. wuxing[i] .. new
				end
		end
	end
	--Внутренняя сила души дракона
	local inner,name,desc = Tooltip.GetEquipLonghun(obj,true)
	if inner then
		local flag,pos1,pos2,pos1R,pos2R = Tooltip.GetEquipLonghunActive(obj,true)
		 if flag == true then
		 		 long = long .. quality_color[1]
		 else
		 		 long = long .. quality_color[255]
		 end
		 long = long .. "\\n[Внутренний]" .. name .. " " .. desc

		 if pos1R ~= -1 then
		 	long = long .. "\\n Потребность левой руки " .. equip_pos[pos1+1] .. " + " .. equip_pos[pos2+1]
			long = long .. "\\n Потребность правой руки " .. equip_pos[pos1R+1] .. " + " .. equip_pos[pos2R+1]
		 else
			 long = long .. "\\n Необходимо " .. equip_pos[pos1+1] .. " + " .. equip_pos[pos2+1]
		 end
		 long = long .. "\\n "
		 for i=1,5 do
				local new = Tooltip.GetEquipLonghunFive(inner,i-1)
				if new > 0 then
						long = long .. " " .. wuxing[i] .. new
				end
		end
	end

	--Решить есть или нет свойства душа дракона
	if long ~= "Свойства души дракона" then
			ret = ret .. "\\n<color=0xffffffff>  \\n" .. long
			long = nil
	end
	--]]

	--Свойства наборов
	local suit = "\\n \\n<color=0xff9932cd>Свойства наборов<color=0xffffffff>"
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
	if suit ~= "\\n \\n<color=0xff9932cd>Свойства наборов<color=0xffffffff>"	then
			ret = ret .. "\\n<color=0xffffffff>" .. suit
	end

	--Название и описание навыков снаряжения пробуждения
	local AwakenSkillName1=Tooltip.GetAwakenSkillName1(obj)
	local AwakenSkillName2=Tooltip.GetAwakenSkillName2(obj)
	local AwakenSkillName3=Tooltip.GetAwakenSkillName3(obj)
	local AwakenSkillName4=Tooltip.GetAwakenSkillName4(obj)
	local AwakenSkillName5=Tooltip.GetAwakenSkillName5(obj)
	local AwakenSkillName6=Tooltip.GetAwakenSkillName6(obj)
	local AwakenSkillDesc1=Tooltip.GetAwakenSkillDesc1(obj)
	local AwakenSkillDesc2=Tooltip.GetAwakenSkillDesc2(obj)
	local AwakenSkillDesc3=Tooltip.GetAwakenSkillDesc3(obj)
	local AwakenSkillDesc4=Tooltip.GetAwakenSkillDesc4(obj)
	local AwakenSkillDesc5=Tooltip.GetAwakenSkillDesc5(obj)
	local AwakenSkillDesc6=Tooltip.GetAwakenSkillDesc6(obj)
	local AwakenSkillPic1=Tooltip.GetAwakenSkill1RarePic(obj)
	local AwakenSkillPic2=Tooltip.GetAwakenSkill2RarePic(obj)
	local AwakenSkillPic3=Tooltip.GetAwakenSkill3RarePic(obj)
	local AwakenSkillPic4=Tooltip.GetAwakenSkill4RarePic(obj)
	local AwakenSkillPic5=Tooltip.GetAwakenSkill5RarePic(obj)
	local AwakenSkillPic6=Tooltip.GetAwakenSkill6RarePic(obj)
	if AwakenSkillName1~=nil then
		ret=ret .. "\\n<color=0xff9932cd>Навыки пробуждения:"
		ret = ret .. "\\n<color=0xffffffff>" .. AwakenSkillPic1
		ret=ret .. "<color=0xffffbc00>" .. AwakenSkillName1 .. " <color=0xffffbc00>" .. AwakenSkillDesc1
	end
	if AwakenSkillName2~=nil then
		ret=ret .. "\\n<color=0xffffffff>" .. AwakenSkillPic2 .. " <color=0xffffbc00>" .. AwakenSkillName2 .. " " .. AwakenSkillDesc2
	end
	if AwakenSkillName3~=nil then
		ret=ret .. "\\n<color=0xffffffff>" .. AwakenSkillPic3 .. " <color=0xffffbc00>" .. AwakenSkillName3 .. " " .. AwakenSkillDesc3
	end
	if AwakenSkillName4~=nil then
		ret=ret .. "\\n<color=0xffffffff>" .. AwakenSkillPic4 .. " <color=0xffffbc00>" .. AwakenSkillName4 .. " " .. AwakenSkillDesc4
	end
	if AwakenSkillName5~=nil then
		ret=ret .. "\\n<color=0xffffffff>" .. AwakenSkillPic5 .. " <color=0xffffbc00>" .. AwakenSkillName5 .. " " .. AwakenSkillDesc5
	end
	if AwakenSkillName6~=nil then
		ret=ret .. "\\n<color=0xffffffff>" .. AwakenSkillPic6 .. " <color=0xffffbc00>" .. AwakenSkillName6 .. " " .. AwakenSkillDesc6
	end
	
	--Особые свойства
	--[[
	local new = Tooltip.GetEquipSpecAttribute(obj)
	if new>0 and new<25 then
			ret = ret .. "\\n \\n<color=0xff05ff00>" .. spec_att_table[new]
	end
	--]]

	ret = ret .. "<font=Arial,0,16,20><color=0xffffffff>"
	--Цвет
	local color = Tooltip.GetEquipColor(obj)
	if color then
		ret = ret .. "\\nДоступна покраска"
		if color == -1 then
			color = 0
		end
		ret = ret .. "\\nНынешний цвет: " .. color_table[color]
	end
	--Описание
	ret = ret .. "\\n \\n" .. Tooltip.GetEquipDescEx(proto)

	ret = ret .. "<font=Arial,0,16,20><color=0xffff0000>"
	--Можно или нет высасывать душу
	if Tooltip.IsCanXiHun(proto) == true then
			ret = ret .. "\\n" .. "Невозможно усилить камнем души."
	end

	--Можно или нет усилить
	--[[local nStrLv = Tooltip.GetEquipMaxStrengthenLevel(obj);
	if nStrLv == 0 then
			ret = ret .. "<font=Arial,0,16,20><color=0xffff0000>"
			ret = ret .. "\\n" .. "Нельзя усилить или разобрать"
	elseif nStrLv < 20 then
			-- ret = ret .. "\\n<color=0xffffbc00>Макс. усиление до <color=0xff00ff00>" .. nStrLv .. " <color=0xffffbc00>Уровня"
	end]]--

	local bSignatrued = Tooltip.IsEquipSignatured(obj)
	if bSignatrued ~= nil and bSignatrued ~= false then
		local strPlayer = Tooltip.GetEquipSignaturePlayer(obj)
		local strSignatrueDesc = Tooltip.GetEquipSignature(obj)
		if strPlayer ~= nil then
			ret = ret .. "\\n<color=0xff06d401>".. strPlayer .. ":"
		end
		if( strSignatrueDesc ~= nil ) then
			ret = ret .. "\\n" .. strSignatrueDesc
		end
	else
		--Производитель,если снаряжение использует подпись IM предметов, то подпись производителя будет покрыта
		local creator = Tooltip.GetItemCreator(obj)
		if creator ~= nil then
			ret = ret .. "\\n  \\n".."Создатель " .. "<color=0xff06d401>" .. Tooltip.GetItemCreator(obj) .. "<color=0xffffffff>" 
		end
	end

    local count = select(2,string.gsub(ret, "\\n", "\\n"))

	if count > 42 then
	    ret = string.gsub(ret, "<font=Arial,0,16,20>", "<font=Arial,0,13,20>")
		ret = string.gsub(ret, "<font=Arial,0,20,20>", "<font=Arial,0,16,20>")
	end

	return ret
end
