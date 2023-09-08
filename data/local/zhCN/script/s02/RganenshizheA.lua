--Посланник Благодарности 1

local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить выбор в окне диалога
	Quest.SetAcceptOptions(5610082);
	Quest.SetCompleteOptions(5610082);
	Quest.NPCTalk(0,0,"<font=Dragon Font,0,19,20><color=0xfffcf157> Посланник Благодарности:<color=0xffffffff>\\n Во время ивента День благодарения каждый день с 20:30 до 22:10 игроки с уровнем 50 и выше могут получить у меня опыта, до 5 раз в день. Но в каждый период можно получить опыт только 1 раз. Не ошибитесь, а то придется ждать следующего дня!\\n Первый период получения опыта: с 20:30 до 20:50\\n Второй период получения опыта: с 20:50 до 21:10\\n Третий период получения опыта: с 21:10 до 21:30\\n Четвертый период получения опыта: с 21:30 до 21:50\\n Пятый период получения опыта: с 21:50 до 22:10");
end

local function OnAcceptQuestTalk(id,step)--Если отменить задание, можно принять его заново вручную.
	if( id == 30883)then
  	--  Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30883,"<font=Dragon Font,0,19,20><color=0xfffcf157>Посланник Благодарности:<color=0xffffffff>\\n Сейчас время, когда можно первый раз получить у меня опыт, поторопись. После 20:50 можно будет получить его еще раз!");
	end
end

--Нажать после выбора задания
local function OnCompleteQuestTalk(id,step)
	if( id == 30883)then
  	--  Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30885,"<font=Dragon Font,0,19,20><color=0xfffcf157> Посланник Благодарности:<color=0xffffffff>\\n Хорошо, вот тебе опыт. Не забудь поблагодарить меня! ");
	end
end

RganenshizheA = {}
RganenshizheA["OnTalk"] = OnTalk
RganenshizheA["OnAcceptQuestTalk"] = OnAcceptQuestTalk
RganenshizheA["OnCompleteQuestTalk"] = OnCompleteQuestTalk
