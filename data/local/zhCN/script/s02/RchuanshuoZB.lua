
local function OnTalk()

	Quest.ClearNPCTalkOptions();    
	Quest.SetNPCTalkOption( EOT_ScenarioTalk,0,ScenarioTalkBegin, "Условия получения мифического снаряжения " );
	Quest.SetNPCTalkOption( EOT_ScenarioTalk,1,ScenarioTalkBegin, "Отмена" );

	Quest.SetAcceptOptions(5011012);
	Quest.SetCompleteOptions(5011012);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Меняла мифического оружия:<color=0xffffffff>\\nЧто-то зачастили ко мне кандидаты в воины света. И вы туда же!");

end


local function OnScenarioTalk(id,step)
	if( id==0 ) then --Функционирование
		if( step == ScenarioTalkBegin ) then
			Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
			Quest.SetNPCTalkOption( EOT_ScenarioTalk,0,ScenarioTalkBegin+1, "Условия обмена оружия 40-го уровня" );
			Quest.SetNPCTalkOption( EOT_ScenarioTalk,0,ScenarioTalkBegin+2, "Условия обмена оружия 60-го уровня" );
			Quest.SetNPCTalkOption( EOT_ScenarioTalk,0,ScenarioTalkBegin+3, "Условия обмена оружия 80-го уровня" );
			Quest.SetNPCTalkOption( EOT_ScenarioTalk,0,ScenarioTalkBegin+4, "Информация о соответствующих знаках" );
			Quest.SetNPCTalkOption( EOT_ScenarioTalk,0,ScenarioTalkBegin+5, "Назад" );
			Quest.SetNPCTalkOption( EOT_ScenarioTalk,0,ScenarioTalkBegin+10000, "Отмена" );
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Меняла мифического оружия:<color=0xffffffff>:\\nВыберите, какую информацию вам нужно узнать:")
		elseif( step == ScenarioTalkBegin+1 ) then 
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Меняла мифического оружия:<color=0xffffffff>\\nМифическое синее оружие 40-го уровня: \\n4 знака воителя и 25 золотых\\nМифическая синяя броня 40-го уровня: \\n2 знака воителя и 15 золотых");
		elseif( step == ScenarioTalkBegin+2 ) then 
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Меняла мифического оружия:<color=0xffffffff>\\nМифическое синее оружие 60-го уровня: \\n5 знаков правителя и 120 золотых\\nМифическая синяя броня 60-го уровня: \\n3 знак правителя и 80 золотых");
		elseif( step == ScenarioTalkBegin+3 ) then 
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Меняла мифического оружия:<color=0xffffffff>\\nМифическое синее оружие 80-го уровня: \\n10 знаков завоевателя и 300 золотых\\nМифическая синяя броня 80-го уровня: \\n8 знаков завоевателя и 240 золотых");
		elseif( step == ScenarioTalkBegin+4 ) then 
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Меняла мифического оружия:<color=0xffffffff>\\nУровень 40–55: знак воителя\\nУровень 55-75: знак правителя\\nУровень выше 75-го: знак завоевателя\\nВечный ад: 1 знак в награду за каждое ивентовое задание\\nЛогово зверя: 1 осколок знака в награду за каждое ивентовое задание\\nЛегенда Трех Богов: 3-5 осколка знака в награду за каждое ивентовое задание\\nКонкурс знаний: от 3 до 5 осколков знака за каждое ивентовое задание");	
		elseif( step == ScenarioTalkBegin+5 ) then --Вернуться в предыдущее меню 
			OnTalk();
		elseif( step == ScenarioTalkBegin+10000 ) then --Закрыть окно
			Quest.CloseNPCTalk();
		end
	elseif( id==1 ) then
		Quest.CloseNPCTalk();
	end
end

local function OnAcceptQuestTalk(id,step)--Если удалить задание, его снова можно будет получить вручную
        if( id == 40045)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40045,"<Font=arial,0,19,20><color=0xfffcf157>Меняла мифического оружия:<color=0xffffffff>\\nВы знаете, что называется мифическим? Мифическим называется особое снаряжение в мире Blood&Soul. Его получить не так уж и трудно, но вам необходимо иметь камень вакка. Я признаю, что вы достойны получения камня вакка, если выполните задание, которое я вам дам.");
        elseif( id == 40046)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40046,"<Font=arial,0,19,20><color=0xfffcf157>Меняла мифического оружия:<color=0xffffffff>\\nВы знаете, что называется мифическим? Мифическим называется особое снаряжение в мире Blood&Soul. Его получить не так уж и трудно, но вам необходимо иметь камень вакка. Я признаю, что вы достойны получения камня вакка, если выполните задание, которое я вам дам.");
        end
end


--Настройки завершения заданий
local function OnCompleteQuestTalk(id,step)
        if( id == 40045)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40045,"<Font=arial,0,19,20><color=0xfffcf157>Меняла мифического оружия:<color=0xffffffff>\\nПохоже, вы действительно достойны получения камня вакка и этого мифического снаряжения. Пожалуйста, возьмите камень вакка.");
        elseif( id == 40046)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40046,"<Font=arial,0,19,20><color=0xfffcf157>Меняла мифического оружия:<color=0xffffffff>\\nПохоже, вы действительно достойны получения камня вакка и этого мифического снаряжения. Пожалуйста, возьмите камень вакка.");
       end

end

RchuanshuoZB = {}
RchuanshuoZB["OnTalk"] = OnTalk
RchuanshuoZB["OnScenarioTalk"] = OnScenarioTalk
RchuanshuoZB["OnAcceptQuestTalk"] = OnAcceptQuestTalk
RchuanshuoZB["OnCompleteQuestTalk"] = OnCompleteQuestTalk