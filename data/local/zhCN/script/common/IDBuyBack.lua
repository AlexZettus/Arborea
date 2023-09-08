local function OnTalk()
		Quest.ClearNPCTalkOptions();                    --清除对话框选项
		Quest.SetNPCTalkOption(EOT_ScenarioTalk,0,0,"Проверить увеличение опыта");
		Quest.SetNPCTalkOption(EOT_ScenarioTalk,1,0,"Получить подарок [неоднократно]");
		Quest.SetNPCTalkOption(EOT_ScenarioTalk,2,0,"Выкупить подарок обратно");
		Quest.SetNPCTalkOption(EOT_ScenarioTalk,3,0,"Закрыть");
		Quest.SetAcceptOptions(5513017);
	  Quest.SetCompleteOptions(5513017);
		Quest.NPCTalk(0,0,"Тебя ждет щедрая награда!");
end

local function OnScenarioTalk(id,step)

	if( id == 0 )then  --查看我的历练进度
		Quest.ViewLiLian();
		Quest.CloseNPCTalk();
	elseif( id == 1 )then --领取历练豪华大礼包（可多次领取
		Quest.ReceiveGift();
		Quest.CloseNPCTalk();
	elseif( id == 2 )then --放弃礼包同意收回账号
		Quest.IDBuyBack();
		Quest.CloseNPCTalk();
	elseif( id == 3 ) then --关闭
		Quest.CloseNPCTalk();
	end

end

local function OnCompleteQuestTalk(id,step)
	if( id == 30804)then
		if( step == QuestTalkBegin )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30804,QuestTalkBegin+1,"ОК" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30804,QuestTalkBegin+2,"Назад" );
			Quest.NPCTalk(0,0,"Тебе нужна награда?");	        
		elseif( step == QuestTalkBegin+1 )then
			Quest.UpdateQuest(30804);
		elseif( step == QuestTalkBegin+2 )then
			Quest.CloseNPCTalk();
		end
	end
end

IDBuyBack = {}
IDBuyBack["OnTalk"] = OnTalk
IDBuyBack["OnScenarioTalk"] = OnScenarioTalk
IDBuyBack["OnCompleteQuestTalk"] = OnCompleteQuestTalk