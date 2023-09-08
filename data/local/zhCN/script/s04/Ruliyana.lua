local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5513012);
	Quest.SetCompleteOptions(5513012);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Фантом Йолианы:<color=0xffffffff>\\nЯ фантом Леди Йолианы.");

end

local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 30651)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30651,"<Font=arial,0,19,20><color=0xfffcf157>Фантом Йолианы:<color=0xffffffff>\\nВы можете обменять слезу эльфа на камень призыва Леди Йолианы.");
       
        end
end

--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 30651)then
              if( step == QuestTalkBegin )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30651,QuestTalkBegin+1,"Да" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30651,QuestTalkBegin+2,"Подумаю" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Фантом Йолианы:<color=0xffffffff>\\nВы решили менять?");

		elseif( step == QuestTalkBegin+1 )then
			Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(30651,"<Font=arial,0,19,20><color=0xfffcf157>Фантом Йолианы:<color=0xffffffff>\\nВы получите камень призыва Леди Йолианы.");
		elseif( step == QuestTalkBegin+2 )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30651,QuestTalkBegin,"Выход" );
			Quest.NPCTalk(0,0,"Нет");
		end
       end

end

Ruliyana = {}
Ruliyana["OnTalk"] = OnTalk
Ruliyana["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Ruliyana["OnCompleteQuestTalk"] = OnCompleteQuestTalk