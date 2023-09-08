local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
	Quest.SetAcceptOptions(6040162);
	Quest.SetCompleteOptions(6040162);
	Quest.NPCTalk(0,0,"<font=龙字体,0,19,20><color=0xfffcf157>Капитан Кровавых слез：<color=0xffffffff>\\nЗащищайте корабли！！！");

end


--после выбора настроек заданий
local function OnCompleteQuestTalk(id,step)
       if ( id == 52002) then
		  Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(52002,"<font=龙字体,0,19,20><color=0xfffcf157>Капитан Кровавых слез：<color=0xffffffff>\\nСпасибо, что спас меня, в знак моей благодарности, пожалуйста, прими это.");

		end


end

Rjianzhang = {}
Rjianzhang["OnTalk"] = OnTalk
Rjianzhang["OnCompleteQuestTalk"] = OnCompleteQuestTalk
