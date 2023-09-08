
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
	Quest.SetAcceptOptions(5010012);
	Quest.SetCompleteOptions(5010012);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Квартирмейстер Айла:<color=0xffffffff><Font=arial,0,17,20>\\nЗдравствуй, новичок! А ты взял задание у учителя Александры? Она находится внизу лестницы в начале игры. Если ты не знаешь, куда идти, нажми на подчеркнутый текст в списке Задания в правой части экрана.");

end


local function OnAcceptQuestTalk(id,step)--Если удалить задание, то его можно будет заново выбрать вручную.
        if( id == 20003)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20003,"<Font=arial,0,19,20><color=0xfffcf157>Квартирмейстер Айла:<color=0xffffffff><Font=arial,0,17,20>\\nДля начала убей 3 <color=0xffffe289>призраков кельтиров<color=0xffffffff> и иди к <color=0xff00ddbb>Тиристу<color=0xffffffff>. Призраки обитают за воротами на востоке. Чтобы атаковать противника, необходимо два раза нажать на нем левой кнопкой мыши или использовать умение кнопкой 2 на клавиатуре. ");
        end
end


--после выбора меню заданий
local function OnCompleteQuestTalk(id,step)
        if( id == 20002)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20002,"<Font=arial,0,19,20><color=0xfffcf157>Квартирмейстер Айла:<color=0xffffffff><Font=arial,0,17,20>\\n<color=0xffffff00>Видишь внизу 4 картинки? Это оружие. Выбери себе одно. Только одно!<color=0xffffffff> Нажми на картинке  левой кнопкой мыши, а затем нажми <color=0xffff00ff>Завершить<color=0xffffffff>. Но не торопись. Сначала я расскажу тебе об оружии:\\nКопье - оружие ближнего боя. Лучше всего подходит <color=0xff80ff00>воину<color=0xffffffff>.\\nЛук - оружие дальнего боя. Отлично подходит  для <color=0xff80ff00>стрелка<color=0xffffffff>.\\nАртефакт - магическое оружие, наиболее подходящее <color=0xff80ff00>магу<color=0xffffffff>.\\nЛира - магический инструмент, которым пользуются <color=0xff80ff00>барды.<color=0xffffffff>");
       end

end

Raila = {}
Raila["OnTalk"] = OnTalk
Raila["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Raila["OnCompleteQuestTalk"] = OnCompleteQuestTalk