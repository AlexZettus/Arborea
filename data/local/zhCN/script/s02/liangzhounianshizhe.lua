
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
	Quest.SetAcceptOptions(6040305);
	Quest.SetCompleteOptions(6040305);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Вестник празднования второй годовщины：<color=0xffffffff>\\nСквозь дождь и ветер，сквозь невзгоду，шаг за шагом иду я уже два года.");

end


local function OnAcceptQuestTalk(id,step)--Если удалить задание, то его можно будет заново выбрать вручную.
	if( id == 30923)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30923,"<Font=arial,0,19,20><color=0xfffcf157>Вестник празднования второй годовщины：<color=0xffffffff>\\nС 18 июня по 1 июля, каждый день можно приходить сюда и получать праздничный подарок с фейерверками.");	

	end
end


--после выбора меню заданий
local function OnCompleteQuestTalk(id,step)
     if( id == 30923)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30923,"<Font=arial,0,19,20><color=0xfffcf157>Вестник празднования второй годовщины：<color=0xffffffff>\\nПолучите празничные подарки с фейерверками.");
      end

end

liangzhounianshizhe = {}
liangzhounianshizhe["OnTalk"] = OnTalk
liangzhounianshizhe["OnAcceptQuestTalk"] = OnAcceptQuestTalk
liangzhounianshizhe["OnCompleteQuestTalk"] = OnCompleteQuestTalk