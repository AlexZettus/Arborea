local function OnTalk()
	Quest.ClearNPCTalkOptions();
	Quest.SetAcceptOptions(5010247);
	Quest.SetCompleteOptions(5010247);
	Quest.SetNPCTalkOption(14,0,0,"Макияж");
	Quest.SetNPCTalkOption(14,1,0,"Отмена");
	Quest.NPCTalk(0,0," Хотите изменить лицо, прическу и цвет волос? Здесь вы можете изменить свою внешность, однако для этого вам понадобится Карта красоты, которую можно приобрести в премиум-магазине.");
end

local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 30370)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30370,"<Font=arial,0,19,20><color=0xfffcf157>Мария:<color=0xffffffff><Font=arial,0,17,20>\\nДля изменения внешности необходимо иметь карту красоты. К счастью у меня есть одна. Держите!");
        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 30370)then
	      Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30370,"<Font=arial,0,19,20><color=0xfffcf157>Мария:<color=0xffffffff><Font=arial,0,17,20>\\nЕсли захотите изменить свою внешность - приходите.");
       end


end
ChangeFace = {}
ChangeFace["OnTalk"] = OnTalk
ChangeFace["OnAcceptQuestTalk"] = OnAcceptQuestTalk
ChangeFace["OnCompleteQuestTalk"] = OnCompleteQuestTalk