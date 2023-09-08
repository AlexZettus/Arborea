local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5513009);
	Quest.SetCompleteOptions(5513009);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Призрак Алайши:<color=0xffffffff>\\nЯ призрак принцессы.");

end

local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 30646)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30646,"<Font=arial,0,19,20><color=0xfffcf157>Призрак Алайши:<color=0xffffffff>\\nВы можете обменять слезу эльфа на камень призыва принцессы-демона.");
       
        end
end

--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 30646)then
              if( step == QuestTalkBegin )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30646,QuestTalkBegin+1,"Да" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30646,QuestTalkBegin+2,"Нет" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Призрак Алайши:<color=0xffffffff>\\nВы решили менять?");

		elseif( step == QuestTalkBegin+1 )then
			Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(30646,"<Font=arial,0,19,20><color=0xfffcf157>Призрак Алайши:<color=0xffffffff>\\nВозьмите камень призыва принцессы-демона.");
		elseif( step == QuestTalkBegin+2 )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30646,QuestTalkBegin,"Выход" );
			Quest.NPCTalk(0,0,"Нет");
		end
       end

end

Ralxa = {}
Ralxa["OnTalk"] = OnTalk
Ralxa["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Ralxa["OnCompleteQuestTalk"] = OnCompleteQuestTalk