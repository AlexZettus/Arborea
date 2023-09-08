
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить выбор в окне диалога
	Quest.SetAcceptOptions(5600079);
	Quest.SetCompleteOptions(5600079);
	Quest.NPCTalk(0,0,"<font=Dragon Font,0,19,20><color=0xfffcf157>Одиночка:<color=0xffffffff>\\n Мой любимый праздник подходит к концу, одинокие друзья, спешите поздравить друг друга с праздником!");

end


local function OnAcceptQuestTalk(id,step)--Если отменить задание, можно принять его заново вручную.
        if( id == 30843)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30843,"<font=Dragon Font,0,19,20><color=0xfffcf157>Одиночка: <color=0xffffffff>\\n Ты любишь кого-то? Почему же ты медлишь с признанием? Если у тебя не хватает храбрости можешь воспользоваться моим анонимным любовным письмом. Не бойся, никто не узнает, кто его послал! ");
        end
end


--Нажать после выбора задания
local function OnCompleteQuestTalk(id,step)
        if( id == 30843)then
              Quest.CloseNPCTalk();
	 Quest.CompleteQuestTalk(30843,"<font=Dragon Font,0,19,20><color=0xfffcf157>Одиночка: <color=0xffffffff>\\n Скорее вручи любовное письму человеку, который тебе по душе. И, может быть, в следующем году ты не будешь встречать этот праздник в одиночестве! ");
       end

end

Rdanshenzhuyizhe = {}
Rdanshenzhuyizhe["OnTalk"] = OnTalk
Rdanshenzhuyizhe["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rdanshenzhuyizhe["OnCompleteQuestTalk"] = OnCompleteQuestTalk