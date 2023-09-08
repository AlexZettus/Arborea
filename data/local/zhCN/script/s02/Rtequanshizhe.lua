
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
	Quest.SetAcceptOptions(5610110);
	Quest.SetCompleteOptions(5610110);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Хранитель привелегий：<color=0xffffffff><Font=arial,0,17,20>\\nКаждый персонаж может прийти сюда, чтобы получить одну привилегию,чем раньше персонаж был создан,тем выше будет уровень привилегии：\\nПремиум斗圣привилегия：до 16 октября 2011 года.\\nПривилегия золотой чаши：с 16 октября 2011 года по 16 марта 2012 года\\nПривилегия серебряной чаши：после 16 марта 2012 года");

end


local function OnAcceptQuestTalk(id,step)--Если удалить задание, то его можно будет заново выбрать вручную.
        if( id == 30920)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30920,"<Font=arial,0,19,20><color=0xfffcf157>Хранитель привелегий：<color=0xffffffff><Font=arial,0,17,20>\\nПодойди, позволь мне посмотреть на дату создания твоего персонажа.");
        end
end


--после выбора меню заданий
local function OnCompleteQuestTalk(id,step)
        if( id == 30920)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30920,"<Font=arial,0,19,20><color=0xfffcf157>Хранитель привелегий：<color=0xffffffff><Font=arial,0,17,20>\\nЭто твоя карта привилегии，возьми.");
       end


end

Rtequanshizhe = {}
Rtequanshizhe["OnTalk"] = OnTalk
Rtequanshizhe["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rtequanshizhe["OnCompleteQuestTalk"] = OnCompleteQuestTalk
