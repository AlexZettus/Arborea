local function OnTalk()
	Quest.ClearNPCTalkOptions();
	Quest.SetAcceptOptions(9010253);
	Quest.SetCompleteOptions(9010253);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Террион<color=0xffffffff>\\n Физкульт-привет! Давай быстрее, не опаздывай, мы уже начинаем! Форму не забыл? Молодец, тогда начнем с разминки!");
end

local function OnAcceptQuestTalk(id,step)
    if ( id == 52059) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52059,"<Font=arial,0,19,20><color=0xfffcf157>Террион<color=0xffffffff><Font=arial,0,17,20>\\nРазминка - это физический труд, одержи победу на Призрачной Арене и возвращайся.");
    end
end

local function OnCompleteQuestTalk(id,step)
    if (id == 52059) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52059,"<Font=arial,0,19,20><color=0xfffcf157>Террион<color=0xffffffff><Font=arial,0,17,20>\\nХорошо размялся? Получай заслуженную пять! И помни, в здоровом теле - здоровый дух.");
	end
end

sept_5 = {}
sept_5["OnTalk"] = OnTalk
sept_5["OnAcceptQuestTalk"] = OnAcceptQuestTalk
sept_5["OnCompleteQuestTalk"] = OnCompleteQuestTalk
sept_5["OnCompleteQuestTalk"] = OnCompleteQuestTalk
