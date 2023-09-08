
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
	Quest.SetAcceptOptions(5610113);
	Quest.SetCompleteOptions(5610113);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Стелла：<color=0xffffffff>\\nЛегендарная сокровищница - это место полное опастностей, бесчисленное множество храбрецов полегло в поисках сокровищ，сможешь ли ты пройти этот путь？");
end

local function OnAcceptQuestTalk(id,step)--Если удалить задание, то его можно будет заново выбрать вручную.
        if( id == 30921)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30921,"<Font=arial,0,19,20><color=0xfffcf157>Стелла：<color=0xffffffff>\\nЛегендарная сокровищница - это место полное опастностей, бесчисленное множество храбрецов полегло в поисках сокровищ，сможешь ли ты пройти этот путь？");
		    elseif( id == 30922)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30922,"<Font=arial,0,19,20><color=0xfffcf157>Стелла：<color=0xffffffff>\\nЛегендарная сокровищница - это место полное опастностей, бесчисленное множество храбрецов полегло в поисках сокровищ，сможешь ли ты пройти этот путь？");
       end
end


--после выбора меню заданий
local function OnCompleteQuestTalk(id,step)
        if( id == 30921)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30921,"<Font=arial,0,19,20><color=0xfffcf157>Стелла：<color=0xffffffff>\\nЯ не могу поверить, что ты в самом деле справился, с помощью своей силы ты проявил себя!");
        elseif( id == 30922)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30922,"<Font=arial,0,19,20><color=0xfffcf157>Стелла：<color=0xffffffff>\\nЗабирай, будь осторожней в пути");
       end

end

Rbaoku = {}
Rbaoku["OnTalk"] = OnTalk
Rbaoku["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rbaoku["OnCompleteQuestTalk"] = OnCompleteQuestTalk
