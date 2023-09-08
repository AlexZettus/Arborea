local function OnTalk()
	Quest.ClearNPCTalkOptions();    
	Quest.SetAcceptOptions(9010649);
	Quest.SetCompleteOptions(9010649);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20>Добро пожаловать, путник! Атлант - это пока еще неизведанный мир. Его огромные земли полны сокровищ, таинственные подземелья хранят в себе древние тайны, а волшебные духи и эльфы ищут героя, которому будут служить вечно. Отправляйся в полный приключений путь и стань покорителем Атланта!");
end

local function OnAcceptQuestTalk(id,step)
	if (id == 54001) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(54001,"<Font=arial,0,19,20>Боги Теоса всегда на стороне отважных воинов. Получи памятный подарок и отправляйся в путь!");
	elseif (id == 54002) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(54002,"<Font=arial,0,19,20>Боги Теоса всегда на стороне отважных воинов. Получи памятный подарок и отправляйся в путь!");
	elseif (id == 54003) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(54003,"<Font=arial,0,19,20>Боги Теоса всегда на стороне отважных воинов. Получи памятный подарок и отправляйся в путь!");
	end
end

local function OnCompleteQuestTalk(id,step)
	if (id == 54001) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(54001,"<Font=arial,0,19,20>Удачи тебе, покоритель Юпитера!");
	elseif (id == 54002) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(54002,"<Font=arial,0,19,20>Удачи тебе, покоритель Юпитера!");
	elseif (id == 54003) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(54003,"<Font=arial,0,19,20>Удачи тебе, покоритель Атланта!");
	end
end

saturn = {}
saturn["OnTalk"] = OnTalk
saturn["OnAcceptQuestTalk"] = OnAcceptQuestTalk
saturn["OnCompleteQuestTalk"] = OnCompleteQuestTalk