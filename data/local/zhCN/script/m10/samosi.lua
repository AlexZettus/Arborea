
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
	Quest.SetAcceptOptions(5010019);
	Quest.SetCompleteOptions(5010019);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Эстер：<color=0xffffffff>\\nКак только ты закончишь ряд испытаний, то сможешь отправиться в Тарио.");

end


local function OnAcceptQuestTalk(id,step)--Если удалить задание, то его можно будет заново выбрать вручную.
        if( id == 20013)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20013,"<Font=arial,0,19,20><color=0xfffcf157>Эстер：<color=0xffffffff>\\nДо сих пор на этих землях возрождаются последователи <A>Царицы цветочных сирен</A>. Ветер разбрасывает семена цветов повсюду. Внеси свою лепту в зачистку Стены памяти - убей <C>8</C> <A>цветочных мутантов</A> и отправляйся к <D>Аррасу</D> за дальнейшими указаниями.");
        elseif( id == 20016)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20016,"<Font=arial,0,19,20><color=0xfffcf157>Эстер：<color=0xffffffff>\\n<D>Проводник Розали</D> искала тебя. Пожалуйста, отправляйся к ней.");
        end
end


--после выбора меню заданий
local function OnCompleteQuestTalk(id,step)
        if( id == 20012)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20012,"<Font=arial,0,19,20><color=0xfffcf157>Эстер：<color=0xffffffff>\\nОтлично! Ты все ближе к финальному испытанию!");
        elseif( id == 20015)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20015,"<Font=arial,0,19,20><color=0xfffcf157>Эстер：<color=0xffffffff>\\nПобеда над демонами означает, что ты обладаешь достаточной силой, чтобы сделать первый шаг на пути настоящего воина. Эти вещи - твоя награда, прими их!\\nИ помни, что после получения каждого нового уровня появляются новые очки умений，не забудь повысить свои навыки.");
		elseif( id == 20011)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20011,"<Font=arial,0,19,20><color=0xfffcf157>Эстер：<color=0xffffffff>\\nОтлично! Тебе осталось выполнить ещё несколько поручений, и ты сможешь отправиться в Тарио.");
		elseif( id == 20027)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20027,"<Font=arial,0,19,20><color=0xfffcf157>Эстер：<color=0xffffffff>\\nМне говорили, что ты придёшь. Я могу помочь тебе добраться в Тарио. Нажми кнопку Завершить.");
       end

end

samosi = {}
samosi["OnTalk"] = OnTalk
samosi["OnAcceptQuestTalk"] = OnAcceptQuestTalk
samosi["OnCompleteQuestTalk"] = OnCompleteQuestTalk