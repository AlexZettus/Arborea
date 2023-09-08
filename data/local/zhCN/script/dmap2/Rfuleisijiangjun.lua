local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
	Quest.SetAcceptOptions(6040161);
	Quest.SetCompleteOptions(6040161);
	Quest.NPCTalk(0,0,"<font=龙字体,0,19,20><color=0xfffcf157>Генерал Флеисс：<color=0xffffffff>\\nЗащищайте корабли！！！");

end


--после выбора настроек заданий
local function OnCompleteQuestTalk(id,step)
        if( id == 52950)then
	      Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(52950,"<font=龙字体,0,19,20><color=0xfffcf157>Генерал Флеисс：<color=0xffffffff>\\nСпасибо, что спас меня, в знак моей благодарности, пожалуйста, прими это.");
		elseif(id == 52003) then
			Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(52003,"<font=龙字体,0,19,20><color=0xfffcf157>Генерал Флеисс：<color=0xffffffff>\\nСпасибо, что спас меня, в знак моей благодарности, пожалуйста, прими это.");
	end


end

Rfuleisijiangjun = {}
Rfuleisijiangjun["OnTalk"] = OnTalk
Rfuleisijiangjun["OnCompleteQuestTalk"] = OnCompleteQuestTalk
