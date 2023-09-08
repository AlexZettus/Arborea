
local function OnTalk()
	Quest.ClearNPCTalkOptions();  --清除对话框选项
	Quest.SetAcceptOptions(5010212);
	Quest.SetCompleteOptions(5010212);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Каменная печать Земля<color=0xffffffff>");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取

end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)


		if( step == QuestTalkBegin )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,20411,QuestTalkBegin+1,"Уничтожить печать" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,20411,QuestTalkBegin+2,"Назад" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Каменная печать Земля<color=0xffffffff>:\\nВы хотите уничтожить печать?");	        
		elseif( step == QuestTalkBegin+1 )then
			Quest.UpdateQuest(20411);
		elseif( step == QuestTalkBegin+2 )then
			Quest.CloseNPCTalk();
		end

end

Rfengyindi = {}
Rfengyindi["OnTalk"] = OnTalk
Rfengyindi["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rfengyindi["OnCompleteQuestTalk"] = OnCompleteQuestTalk