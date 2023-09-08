
local function OnTalk()
	Quest.ClearNPCTalkOptions();
	Quest.SetAcceptOptions(9010944);
	Quest.SetCompleteOptions(9010944);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Рори:<color=0xffffffff>\\nПриветствую тебя. Я пришел из прошлого, чтобы рассказать тебе одну историю. Получи 80 уровень и прими участие в событии Весеннее путешествие.\\nЕжедневно ты можешь выполнить 5 заданий и получить за это Камень памяти х110 (суммарно за все задания). Чтобы обменять Камень памяти обратись к торговцу ивента.");
end

local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
    if id == 52155 then
        Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52155,"<Font=arial,0,19,20><color=0xfffcf157>Рори:<color=0xffffffff>\\nДля начала путешествия вам нужно отправиться на локацию соответствующего уровня и собрать магическую эссенцию при убийстве монстров.");
 	end
end

local function OnCompleteQuestTalk(id,step)
	if ( id == 52155 ) then
		Quest.CloseNPCTalk();
	    Quest.CompleteQuestTalk(52155,"<Font=arial,0,19,20><color=0xfffcf157>Рори:<color=0xffffffff>\\nОднажды парень обратился к колдуну, чтобы тот спас его возлюбленную. Девушка была больна неизвестной хворью. Колдун попросил принести парня эту самую магическую эссенцию для ритуала.");
	elseif ( id == 52156 ) then
		Quest.CloseNPCTalk();
	    Quest.CompleteQuestTalk(52156,"<Font=arial,0,19,20><color=0xfffcf157>Рори:<color=0xffffffff>\\nАлхимик сообщил девушке, что рецепт отвара очень сложный. Поэтому в состав почему-то должна была входить часть души редкого монстра, которые обычно водятся в подземельях.");
	elseif ( id == 52157 ) then
		Quest.CloseNPCTalk();
	    Quest.CompleteQuestTalk(52157,"<Font=arial,0,19,20><color=0xfffcf157>Рори:<color=0xffffffff>\\nКакая мерзость. Эти руны сделаны из сердец волков. На них выжжены какие-то символы. Я не могу это прочитать. Однако я догадываюсь, кто может нам помочь.");
	elseif ( id == 52160 ) then
		Quest.CloseNPCTalk();
	    Quest.CompleteQuestTalk(52160,"<Font=arial,0,19,20><color=0xfffcf157>Рори:<color=0xffffffff>\\nБыло очень трудно найти Часовщика, но девушка справилась. Когда молодой человек выпил волшебный отвар, то превратился в красивого голубого дракона. Никто не ожидал такого результата. Драконы бессмертны, поэтому проклятие Часовщика больше не могло навредить парню, однако теперь он был вынужден встретить вечность в облике мифического существа.");
	elseif ( id == 52159 ) then
		Quest.CloseNPCTalk();
	    Quest.CompleteQuestTalk(52159,"<Font=arial,0,19,20><color=0xfffcf157>Рори:<color=0xffffffff>\\nОбратись к Эмили (Тарио, 320 450 или 1032 830), чтобы отправиться в подземелье и лично столкнуться с Часовщиком. Уничтожь колдуна и возвращайся к Рори (Тарио, 354 164 или 730 770) за наградой.");
    end
end

Mayjrn = {}
Mayjrn["OnTalk"] = OnTalk
Mayjrn["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Mayjrn["OnCompleteQuestTalk"] = OnCompleteQuestTalk