local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5513005);
	Quest.SetCompleteOptions(5513005);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Фантом Гадикары:<color=0xffffffff>\\nЯ фантом снежной королевы.");

end

local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 30645)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30645,"<Font=arial,0,19,20><color=0xfffcf157>Фантом Гадикары:<color=0xffffffff>\\nВы можете обменять слезу эльфа на камень призыва снежной королевы.");
       
        end
end

--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 30645)then
              if( step == QuestTalkBegin )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30645,QuestTalkBegin+1,"OK" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30645,QuestTalkBegin+2,"Передумать" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Фантом Гадикары:<color=0xffffffff>\\nВы действительно хотите произвести обмен?");

		elseif( step == QuestTalkBegin+1 )then
			Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(30645,"<Font=arial,0,19,20><color=0xfffcf157>Фантом Гадикары:<color=0xffffffff>\\nВы приняли решение. Возьмите камень призыва снежной королевы.");
		elseif( step == QuestTalkBegin+2 )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30645,QuestTalkBegin,"Выход" );
			Quest.NPCTalk(0,0,"Нет");
		end
       end

end

Rjiadicarla = {}
Rjiadicarla["OnTalk"] = OnTalk
Rjiadicarla["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rjiadicarla["OnCompleteQuestTalk"] = OnCompleteQuestTalk