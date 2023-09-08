
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5513008);
	Quest.SetCompleteOptions(5513008);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Фантом Бенеджара:<color=0xffffffff>\\nЯ фантом Падшего духа.");

end

local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 30649)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30649,"<Font=arial,0,19,20><color=0xfffcf157>Фантом Бенеджара:<color=0xffffffff>\\nВы можете обменять слезу духа на камень призыва падшего духа.");
       
        end
end

--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 30649)then
              if( step == QuestTalkBegin )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30649,QuestTalkBegin+1,"Да" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30649,QuestTalkBegin+2,"Подумаю" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Фантом Бенеджара:<color=0xffffffff>\\nВы решили обменять?");

		elseif( step == QuestTalkBegin+1 )then
			Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(30649,"<Font=arial,0,19,20><color=0xfffcf157>Фантом Бенеджара:<color=0xffffffff>\\nВы получите камень призыва Падшего духа.");
		elseif( step == QuestTalkBegin+2 )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30649,QuestTalkBegin,"Выход" );
			Quest.NPCTalk(0,0,"Нет");
		end
       end

end

Rbeinijia = {}
Rbeinijia["OnTalk"] = OnTalk
Rbeinijia["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rbeinijia["OnCompleteQuestTalk"] = OnCompleteQuestTalk