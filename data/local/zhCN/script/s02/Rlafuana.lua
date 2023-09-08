local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5513011);
	Quest.SetCompleteOptions(5513011);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Фантом Рафейны:<color=0xffffffff>\\nРада видеть вас!");

end

local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 30652)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30652,"<Font=arial,0,19,20><color=0xfffcf157>Фантом Рафейны:<color=0xffffffff>\\nВы можете обменять слезу эльфа на камень призыва Любимицы Богини.");
       
        end
end

--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 30652)then
              if( step == QuestTalkBegin )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30652,QuestTalkBegin+1,"ОК" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30652,QuestTalkBegin+2,"Передумать" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Фантом Рафейны:<color=0xffffffff>\\nВы действительно решили обменять это?");

		elseif( step == QuestTalkBegin+1 )then
			Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(30652,"<Font=arial,0,19,20><color=0xfffcf157>Фантом Рафейны:<color=0xffffffff>\\nВы приняли решение. Вы получите камень призыва Любимицы Богини.");
		elseif( step == QuestTalkBegin+2 )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30652,QuestTalkBegin,"Выход" );
			Quest.NPCTalk(0,0,"Отказываюсь");
		end
       end

end

Rlafuana = {}
Rlafuana["OnTalk"] = OnTalk
Rlafuana["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rlafuana["OnCompleteQuestTalk"] = OnCompleteQuestTalk