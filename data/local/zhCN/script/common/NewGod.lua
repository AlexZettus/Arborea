local function OnTalk()
	Quest.ClearNPCTalkOptions();
	Quest.SetNPCTalkOption(13,1,0,"Бороться за ранг бога");
	Quest.SetNPCTalkOption(13,2,0,"Предыдущий рейтинг");
	Quest.SetNPCTalkOption(13,3,0,"Таблица рангов");
	Quest.SetNPCTalkOption(2,4,0,"Получить сюжетные навыки")
	Quest.SetAcceptOptions(5610023);
	Quest.SetCompleteOptions(5610023);
	Quest.NPCTalk(0,0,"Здесь ты можешь зарегистрироваться для участия в борьбе за ранг высшего бога. Также здесь ты можешь ознакомиться с перечнем высших рангов и победителями прошлой недели.");
end

local function OnAcceptQuestTalk(id,step)
	
end

local function OnCompleteQuestTalk(id,step)
	
end

local function OnScenarioTalk()

        Common.ServerCtrlTalk()

end

NewGod = {}
NewGod["OnTalk"] = OnTalk
NewGod["OnAcceptQuestTalk"] = OnAcceptQuestTalk
NewGod["OnCompleteQuestTalk"] = OnCompleteQuestTalk
NewGod["OnScenarioTalk"] = OnScenarioTalk