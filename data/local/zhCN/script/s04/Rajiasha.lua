local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5513010);
	Quest.SetCompleteOptions(5513010);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Фантом Адриши:<color=0xffffffff>\\nЯ фантом иллюзиониста.");

end

local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 30650)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30650,"<Font=arial,0,19,20><color=0xfffcf157>Фантом Адриши:<color=0xffffffff>\\nВы можете обменять слезу эльфа на камень призыва иллюзиониста.");
       
        end
end

--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 30650)then
              if( step == QuestTalkBegin )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30650,QuestTalkBegin+1,"ОК" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30650,QuestTalkBegin+2,"Подумаю" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Фантом Адриши:<color=0xffffffff>\\nВы решили менять?");

		elseif( step == QuestTalkBegin+1 )then
			Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(30650,"<Font=arial,0,19,20><color=0xfffcf157>Фантом Адриши:<color=0xffffffff>\\nВы и получите камень призыва иллюзиониста.");
		elseif( step == QuestTalkBegin+2 )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30650,QuestTalkBegin,"Выход" );
			Quest.NPCTalk(0,0,"Нет");
		end
       end

end

Rajiasha = {}
Rajiasha["OnTalk"] = OnTalk
Rajiasha["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rajiasha["OnCompleteQuestTalk"] = OnCompleteQuestTalk