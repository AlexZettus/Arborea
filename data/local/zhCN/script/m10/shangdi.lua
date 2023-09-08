
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
	Quest.SetAcceptOptions(5010013);
	Quest.SetCompleteOptions(5010013);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Позор императора：<color=0xffffffff>\\nПосле получения уровня можно прибавить очки к умениям，горячая клавиша для умений <color=0xffff00ff>K<color=0xffffffff>.");

end


local function OnAcceptQuestTalk(id,step)--Если удалить задание, то его можно будет заново выбрать вручную.
        if( id == 20004)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20004,"<Font=arial,0,19,20><color=0xfffcf157>Позор императора：<color=0xffffffff>\\n    Сейчас ты можешь изучать и повышать только начальные умения，после получения<color=0xff00ddfe>20<color=0xffffffff>уровня ты сможешь изучать<color=0xff80ff00>навыки класса<color=0xffffffff>.\\nЗатем найди<color=0xff00ddbb>Духовного наставника  Айс<color=0xffffffff>и продолжай обучение.");
        end
end


--после выбора меню заданий
local function OnCompleteQuestTalk(id,step)
        if( id == 20003)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20003,"<Font=arial,0,19,20><color=0xfffcf157>Позор императора：<color=0xffffffff>\\n    Похоже первая битва прошла неплохо.После окончания задания сможешь<color=0xffffff00>получить новый уровень<color=0xffffffff>，с новым уровнем, ты получишь<color=0xffffff00>очки умений<color=0xffffffff>，не забудь повысить свои навыки<color=0xffff00ff>[горячая клавиша умений - K]<color=0xffffffff>.");

       end

end

shangdi = {}
shangdi["OnTalk"] = OnTalk
shangdi["OnAcceptQuestTalk"] = OnAcceptQuestTalk
shangdi["OnCompleteQuestTalk"] = OnCompleteQuestTalk