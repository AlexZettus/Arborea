local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(9010444);
	Quest.SetCompleteOptions(9010444);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Древний охотник Лиавен:<color=0xffffffff><Font=arial,0,17,20>\\nПриветствую, путник. Хватит ли тебе времени и терпения упокоить древние духи боссов, которые блуждают по всему Теосу. Принимай заказы на убийство, отправляйся в дикие локации, собирай скрижали, в которых заключены духи боссов. Скрижали можно получить, убивая монстров на диких локациях только при наличии принятого задания. Используй полученные скрижали на локациях Замок ада, Битва века, Забытый храм, Лабиринт Морока, Гробница Менеса, чтобы сразиться с боссом. Как только заказ будет выполнен, возвращайся ко мне за ценной наградой.<color=0xffffffff>");
end

local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
	if( id == 41113 or id == 41118)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Древний охотник Лиавен:<color=0xffffffff><Font=arial,0,17,20>\\nДля выполнения задачи отправляйтесь в Сноулэнд и убивайте там монстров, чтобы получить Скрижаль Ледяного дракона и Скрижаль Снежной метели. Используя скрижали, призовите и упокойте духи великих боссов Теоса.");
	elseif( id == 41114 or id == 41119)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Древний охотник Лиавен:<color=0xffffffff><Font=arial,0,17,20>\\nДля выполнения задачи отправляйтесь в Лес Теней и убивайте там монстров, чтобы получить Скрижаль Теневого охотника и Скрижаль Лесного проказника. Используя скрижали, призовите и упокойте духи великих боссов Теоса.");
	elseif( id == 41115 or id == 41120)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Древний охотник Лиавен:<color=0xffffffff><Font=arial,0,17,20>\\nДля выполнения задачи отправляйтесь в Южные топи и убивайте там монстров, чтобы получить Скрижаль Болотного чудовища и Скрижаль Ядовитого змея. Используя скрижали, призовите и упокойте духи великих боссов Теоса.");
	elseif( id == 41116 or id == 41121)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Древний охотник Лиавен:<color=0xffffffff><Font=arial,0,17,20>\\nДля выполнения задачи отправляйтесь на Гору Смерти и убивайте там монстров, чтобы получить Скрижаль Песчаного скитальца и Скрижаль Каменного стража. Используя скрижали, призовите и упокойте духи великих боссов Теоса.");
	elseif( id == 41117 or id == 41122)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Древний охотник Лиавен:<color=0xffffffff><Font=arial,0,17,20>\\nДля выполнения задачи отправляйтесь в Сумеречную пустошь и убивайте там монстров, чтобы получить Скрижаль Всепоглощающего огня и Скрижаль Бесконечного дождя. Используя скрижали, призовите и упокойте духи великих боссов Теоса.");
	elseif( id == 41123 or id == 41124)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Древний охотник Лиавен:<color=0xffffffff><Font=arial,0,17,20>\\nДля выполнения задачи отправляйтесь в Пустыню Аришат, и убивайте там монстров, чтобы получить Скрижаль Песчанного червя и Скрижаль Властителя преисподней. Используя скрижали, призовите и упокойте духи великих боссов Теоса.");
	end
end

local function OnCompleteQuestTalk(id,step)
	if( id == 41113 or id == 41118)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Древний охотник Лиавен:<color=0xffffffff><Font=arial,0,17,20>\\nДля выполнения задачи отправляйтесь в Сноулэнд и убивайте там монстров, чтобы получить Скрижаль Ледяного дракона и Скрижаль Снежной метели. Используя скрижали, призовите и упокойте духи великих боссов Теоса.");
	elseif( id == 41114 or id == 41119)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Древний охотник Лиавен:<color=0xffffffff><Font=arial,0,17,20>\\nДля выполнения задачи отправляйтесь в Лес Теней и убивайте там монстров, чтобы получить Скрижаль Теневого охотника и Скрижаль Лесного проказника. Используя скрижали, призовите и упокойте духи великих боссов Теоса.");
	elseif( id == 41115 or id == 41120)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Древний охотник Лиавен:<color=0xffffffff><Font=arial,0,17,20>\\nДля выполнения задачи отправляйтесь в Южные топи и убивайте там монстров, чтобы получить Скрижаль Болотного чудовища и Скрижаль Ядовитого змея. Используя скрижали, призовите и упокойте духи великих боссов Теоса.");
	elseif( id == 41116 or id == 41121)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Древний охотник Лиавен:<color=0xffffffff><Font=arial,0,17,20>\\nДля выполнения задачи отправляйтесь на Гору Смерти и убивайте там монстров, чтобы получить Скрижаль Песчаного скитальца и Скрижаль Каменного стража. Используя скрижали, призовите и упокойте духи великих боссов Теоса.");
	elseif( id == 41117 or id == 41122)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Древний охотник Лиавен:<color=0xffffffff><Font=arial,0,17,20>\\nДля выполнения задачи отправляйтесь в Сумеречную пустошь и убивайте там монстров, чтобы получить Скрижаль Всепоглощающего огня и Скрижаль Бесконечного дождя. Используя скрижали, призовите и упокойте духи великих боссов Теоса.");
	elseif( id == 41123 or id == 41124)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Древний охотник Лиавен:<color=0xffffffff><Font=arial,0,17,20>\\nДля выполнения задачи отправляйтесь в Пустыню Аришат, и убивайте там монстров, чтобы получить Скрижаль Песчанного червя и Скрижаль Властителя преисподней. Используя скрижали, призовите и упокойте духи великих боссов Теоса.");
	end
end

dazdra = {}
dazdra["OnTalk"] = OnTalk
dazdra["OnAcceptQuestTalk"] = OnAcceptQuestTalk
dazdra["OnCompleteQuestTalk"] = OnCompleteQuestTalk