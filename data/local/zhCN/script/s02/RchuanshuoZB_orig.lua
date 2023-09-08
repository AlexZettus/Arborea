
local function OnTalk()

	Quest.ClearNPCTalkOptions();    
	Quest.SetNPCTalkOption( EOT_ScenarioTalk,0,ScenarioTalkBegin, "Условия получения мифического снаряжения " );
	Quest.SetNPCTalkOption( EOT_ScenarioTalk,1,ScenarioTalkBegin, "Условия получения легендарного снаряжения " );
	Quest.SetNPCTalkOption( EOT_ScenarioTalk,2,ScenarioTalkBegin, "Отмена" );

	Quest.SetAcceptOptions(5011012);
	Quest.SetCompleteOptions(5011012);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Меняла легендарного оружия:<color=0xffffffff>\\nЧто-то зачастили ко мне кандидаты в воины света. И вы туда же!");

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
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Меняла легендарного оружия:<color=0xffffffff>:\\nВыберите, какую информацию вам нужно узнать:")
		elseif( step == ScenarioTalkBegin+1 ) then 
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Меняла легендарного оружия:<color=0xffffffff>\\n Легендарное синее оружие 40-го уровня: 4 знака воителя и 8 золотых\\n Легендарная синяя броня 40-го уровня: 2 знака воителя и 5 золотых");
		elseif( step == ScenarioTalkBegin+2 ) then 
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Меняла легендарного оружия:<color=0xffffffff>\\n Легендарное синее оружие 60-го уровня: 5 знаков правителя и 20 золотых\\n Легендарная синяя броня 60-го уровня: 3 знак правителя и 10 золотых");
		elseif( step == ScenarioTalkBegin+3 ) then 
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Меняла легендарного оружия:<color=0xffffffff>\\n Легендарное синее оружие 80-го уровня: 10 знаков завоевателя и 50 золотых\\n Легендарная синяя броня 80-го уровня: 8 знаков завоевателя и 25 золотых");
		elseif( step == ScenarioTalkBegin+4 ) then 
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Меняла легендарного оружия:<color=0xffffffff>\\n Уровня 40–55: знака воителя\\n Уровень 55-75: знак правителя\\n Уровень выше 75-го: знак завоевателя\\n Вечный ад: 1 знак XX в награду за каждое ивентовое задание\\n Логово зверя: 1 осколок знака XX в награду за каждое ивентовое задание\\n Легенда Трех Богов: 3-5 осколка знака XX в награду за каждое ивентовое задание\\n Конкурс знаний: от 3 до 5 осколков знака XX за каждое ивентовое задание");	
		elseif( step == ScenarioTalkBegin+5 ) then --Вернуться в предыдущее меню 
			OnTalk();
		elseif( step == ScenarioTalkBegin+10000 ) then --Закрыть окно
			Quest.CloseNPCTalk();
		end
	elseif( id==1 ) then
		if( step == ScenarioTalkBegin ) then
			Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
			Quest.SetNPCTalkOption( EOT_ScenarioTalk,1,ScenarioTalkBegin+1, "Условия обмена оружия 40-го уровня" );
			Quest.SetNPCTalkOption( EOT_ScenarioTalk,1,ScenarioTalkBegin+2, "Условия обмена оружия 60-го уровня" );
			Quest.SetNPCTalkOption( EOT_ScenarioTalk,1,ScenarioTalkBegin+3, "Условия обмена оружия 80-го уровня" );
			Quest.SetNPCTalkOption( EOT_ScenarioTalk,1,ScenarioTalkBegin+4, "Информация о соответствующих знаках" );
			Quest.SetNPCTalkOption( EOT_ScenarioTalk,1,ScenarioTalkBegin+5, "Назад" );
			Quest.SetNPCTalkOption( EOT_ScenarioTalk,1,ScenarioTalkBegin+10000, "Отмена" );
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Меняла легендарного оружия:<color=0xffffffff>\\nВыберите, какую информацию вы хотите узнать:")
		elseif( step == ScenarioTalkBegin+1 ) then 
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Меняла легендарного оружия:<color=0xffffffff>\\n Легендарное оранжевое оружие 40-го уровня: легендарное синее снаряжение 40-го уровня + 2 вакка + 50 кристаллов \\n Легендарная оранжевая броня 40-го уровня: снаряжение 40-го уровня + 1 вакка + 20 кристаллов");
		elseif( step == ScenarioTalkBegin+2 ) then 
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Меняла легендарного оружия:<color=0xffffffff>\\n Легендарное оранжевое оружие 60-го уровня: легендарное синее оружие 60-го уровня + 4 камень темного кристалла + 50 кристаллов + 20 улучшенных первичных эльфов \\n Легендарная оранжевая броня 60-го уровня: легендарная синяя броня 60-го уровня + 2 камня темного кристалла + 20 кристаллов + 20 улучшенных первичных эльфов");
		elseif( step == ScenarioTalkBegin+3 ) then 
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Меняла легендарного оружия:<color=0xffffffff>\\n Легендарное оранжевое оружие 80-го уровня: легендарное синее оружие 80-го уровня + 5 камней демонической отравы + 50 кристаллов + 40 особенных первичных эльфов \\n Легендарная оранжевая броня 80-го уровня: легендарная синяя броня 80-го уровня + 3 камня демонической отравы + 20 кристаллов + 40 особых первичных эльфов");
		elseif( step == ScenarioTalkBegin+4 ) then 
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Меняла легендарного оружия:<color=0xffffffff>\\n Уровень 40-55: вакка\\n Уровень 55-75: камень темного кристалла\\n Выше 75-го уровня: камень демонической отравы\\n Вечный ад: 1 знак XX в награду за каждое ивентовое задание \\n Есть определенный шанс получить за ивент в подземелье, за убийство босса и монстров Вечного ада, Логова зверя, Вторжения монстров.");	
		elseif( step == ScenarioTalkBegin+5 ) then --Вернуться в предыдущее меню 
			OnTalk();
		elseif( step == ScenarioTalkBegin+10000 ) then --Закрыть окно
			Quest.CloseNPCTalk();
		end
	elseif( id==2 ) then
		Quest.CloseNPCTalk();
	end
end

local function OnAcceptQuestTalk(id,step)--Если удалить задание, его снова можно будет получить вручную
        if( id == 40045)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40045,"<Font=arial,0,19,20><color=0xfffcf157>Меняла легендарного оружия:<color=0xffffffff>\\nВы знаете, что называется легендарным? Легендарным называется особое снаряжение в мире Blood&Soul. Его получить не так уж и трудно, но вам необходимо иметь камень вакка. Я признаю, что вы достойны получения камня вакка, если выполните задание, которое я вам дам.");
        elseif( id == 40046)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40046,"<Font=arial,0,19,20><color=0xfffcf157>Меняла легендарного оружия:<color=0xffffffff>\\nВы знаете, что называется легендарным? Легендарным называется особое снаряжение в мире Blood&Soul. Его получить не так уж и трудно, но вам необходимо иметь камня вакка. Я признаю, что вы достойны получения камня вакка, если выполните задание, которое я вам дам.");
        end
end


--Настройки завершения заданий
local function OnCompleteQuestTalk(id,step)
        if( id == 40045)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40045,"<Font=arial,0,19,20><color=0xfffcf157>Меняла легендарного оружия:<color=0xffffffff>\\nПохоже, вы действительно достойны получения камня вакка и этого легендарного снаряжения. Пожалуйста, возьмите камень вакка.");
        elseif( id == 40046)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40046,"<Font=arial,0,19,20><color=0xfffcf157>Меняла легендарного оружия:<color=0xffffffff>\\nПохоже, вы действительно достойны получения камня вакка и этого легендарного снаряжения. Пожалуйста, возьмите камень вакка.");
       end

end

RchuanshuoZB = {}
RchuanshuoZB["OnTalk"] = OnTalk
RchuanshuoZB["OnScenarioTalk"] = OnScenarioTalk
RchuanshuoZB["OnAcceptQuestTalk"] = OnAcceptQuestTalk
RchuanshuoZB["OnCompleteQuestTalk"] = OnCompleteQuestTalk