local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5513007);
	Quest.SetCompleteOptions(5513007);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Фантом Халуры:<color=0xffffffff>\\nЯ фантом Темной ночи.");

end

local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 30647)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30647,"<Font=arial,0,19,20><color=0xfffcf157>Фантом Халуры:<color=0xffffffff>\\nВы можете поменять слезу эльфа на камень призыва Темной ночи.");
       
        end
end

--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 30647)then
              if( step == QuestTalkBegin )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30647,QuestTalkBegin+1,"ОК" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30647,QuestTalkBegin+2,"Передумать" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Фантом Халуры:<color=0xffffffff>\\nВы действительно решили менять?");

		elseif( step == QuestTalkBegin+1 )then
			Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(30647,"<Font=arial,0,19,20><color=0xfffcf157>Фантом Халуры:<color=0xffffffff>\\nВозьмите камень призыва Темной ночи.");
		elseif( step == QuestTalkBegin+2 )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30647,QuestTalkBegin,"Выход" );
			Quest.NPCTalk(0,0,"Отмена");
		end
       end

end

Rkalula = {}
Rkalula["OnTalk"] = OnTalk
Rkalula["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rkalula["OnCompleteQuestTalk"] = OnCompleteQuestTalk