local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
	Quest.SetAcceptOptions(6040055);
	Quest.SetCompleteOptions(6040055);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Ангельский шелест：<color=0xffffffff><Font=arial,0,17,20>\\n      На мой взгляд получение уровня - это событие, происходящее с волшебной быстротой.");

end


local function OnAcceptQuestTalk(id,step)--Если удалить задание, то его можно будет заново выбрать вручную.
        if( id == 30797)then
			Quest.CloseNPCTalk();
		    Quest.AcceptQuestTalk(30797,"<Font=arial,0,19,20><color=0xfffcf157>Ангельский шелест：<color=0xffffffff><Font=arial,0,17,20>\\n      Такой случай бывает раз в жизни, скорее выполни наградное задание！Помни：<T>После 85 уровня уже не будет повышений</T>！");
	end
end


--после выбора меню заданий
local function OnCompleteQuestTalk(id,step)
        if( id == 30797)then
			Quest.CloseNPCTalk();
	        Quest.CompleteQuestTalk(30797,"<Font=arial,0,19,20><color=0xfffcf157>Ангельский шелест：<color=0xffffffff><Font=arial,0,17,20>\\n      Скоро ты получишь новый уровень.Помни：<T>После 85 уровня уже не будет повышений</T>.");
        end
end

tianshihulala = {}
tianshihulala["OnTalk"] = OnTalk
tianshihulala["OnAcceptQuestTalk"] = OnAcceptQuestTalk
tianshihulala["OnCompleteQuestTalk"] = OnCompleteQuestTalk
