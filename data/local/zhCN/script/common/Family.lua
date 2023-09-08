

local function OnTalk()
	Quest.ClearNPCTalkOptions();                    								--清除对话框选项
	Quest.SetNPCTalkOption(EOT_ScenarioTalk,0,0,"Создать семью");					--设置对话选项
	Quest.SetNPCTalkOption(EOT_ScenarioTalk,1,0,"Распустить семью");
	Quest.SetAcceptOptions(5610022);
	Quest.SetCompleteOptions(5610022);
	Quest.NPCTalk(0,0,"Регистратор семей Кирилл:\\nЕсли вы хотите создать свою семью, то для начала должны зайти ко мне со своим другом или друзьями, у которых нет семьи.");
end

local function OnScenarioTalk(id,step)
	if( id == 0 )then --创建家族
		Quest.FamilyCreate();
	elseif( id == 1 )then --解散家族
		Quest.FamilyBreak();
	end
end

local function OnCompleteQuestTalk(id,step)
	if( id == 30801)then
		if( step == QuestTalkBegin )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30801,QuestTalkBegin+1,"Создать семью" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30801,QuestTalkBegin+2,"Распустить семью" );
			Quest.NPCTalk(0,0,"Регистратор семей Кирилл:\\nСемья - это важная ячейка общества! Если вы хотите создать семью или вступить в какую-либо семью, тогда смело приходите ко мне.");	        
		elseif( step == QuestTalkBegin+1 )then
			Quest.UpdateQuest(30801);
		elseif( step == QuestTalkBegin+2 )then
			Quest.CloseNPCTalk();
		end
	end
end


Family = {}
Family["OnTalk"] = OnTalk
Family["OnScenarioTalk"] = OnScenarioTalk
Family["OnCompleteQuestTalk"] = OnCompleteQuestTalk

