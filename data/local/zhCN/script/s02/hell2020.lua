
local function OnTalk()
	Quest.ClearNPCTalkOptions();
	Quest.SetAcceptOptions(9010869);
	Quest.SetCompleteOptions(9010869);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Тобиас:<color=0xffffffff>\\nПриветствую тебя. Астрологи объявили неделю ужасов. Получи 80 уровень и прими участие в событии Легенды хаоса.\\nЕжедневно ты можешь выполнить 5 заданий и получить за это Зерно правды х70 (суммарно за все задания). Чтобы обменять зерно правды обратись к торговцу хаоса.");
end

local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
    if id == 50059 then
        Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(50059,"<Font=arial,0,19,20><color=0xfffcf157>Тобиас:<color=0xffffffff>\\nПредлагаю тебе принять участие в очень интригующем расследовании.");
 	end
end

local function OnCompleteQuestTalk(id,step)
	if ( id == 50059 ) then
		Quest.CloseNPCTalk();
	    Quest.CompleteQuestTalk(50059,"<Font=arial,0,19,20><color=0xfffcf157>Тобиас:<color=0xffffffff>\\nЗначит девушка незадолго до своей гибели слышала какие-то голоса. Звучит очень зловеще. Нужно обязательно узнать больше о её муже.");
	elseif ( id == 50060 ) then
		Quest.CloseNPCTalk();
	    Quest.CompleteQuestTalk(50060,"<Font=arial,0,19,20><color=0xfffcf157>Тобиас:<color=0xffffffff>\\nВот значит как. Инженер пропал и работа в шахте остановилась. Довольно подозрительно, что финансирование велось из Мистерии. Зачем вообще эльфам шахта? Что-то здесь не чисто.");
	elseif ( id == 50061 ) then
		Quest.CloseNPCTalk();
	    Quest.CompleteQuestTalk(50061,"<Font=arial,0,19,20><color=0xfffcf157>Тобиас:<color=0xffffffff>\\nКто бы мог подумать. Всё это мракобесие устроили демоны. Вот уроды. Но мы всё ещё не знаем, для чего им нужна шахта.");
	elseif ( id == 50062 ) then
		Quest.CloseNPCTalk();
	    Quest.CompleteQuestTalk(50062,"<Font=arial,0,19,20><color=0xfffcf157>Тобиас:<color=0xffffffff>\\nОтлично! Теперь жрец сможет собрать из деталей рабочий прототип.");
	elseif ( id == 50063 ) then
		Quest.CloseNPCTalk();
	    Quest.CompleteQuestTalk(50063,"<Font=arial,0,19,20><color=0xfffcf157>Тобиас:<color=0xffffffff>\\nБлагодаря твоим заслугам сегодня Теос может спать спокойно.");
    end
end

hell2020 = {}
hell2020["OnTalk"] = OnTalk
hell2020["OnAcceptQuestTalk"] = OnAcceptQuestTalk
hell2020["OnCompleteQuestTalk"] = OnCompleteQuestTalk