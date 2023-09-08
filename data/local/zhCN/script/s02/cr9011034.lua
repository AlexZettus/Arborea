local function OnTalk()
	Quest.ClearNPCTalkOptions();    
	Quest.SetAcceptOptions(9011034);
	Quest.SetCompleteOptions(9011034);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20>Приветствую тебя. Наши агенты сообщают, что на северо-востоке Теоса в наши земли вошла вражеская армия. Нам нужна твоя помощь. Получи 80 уровень и прими участие в событии Нежданные гости. \n Ежедневно ты можешь выполнить 1 задание, за которое ты будешь получать 4 заколдованные печати. Печати можно расколдовать после получения, прочитав описание каждой из них.");
end

local function OnAcceptQuestTalk(id,step)
	if (id == 52180) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52180,"<Font=arial,0,19,20>Враг надвигается. Нужно спешить.");
	end
end

local function OnCompleteQuestTalk(id,step)
	if (id == 52180) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52180,"<Font=arial,0,19,20>Спасибо за службу. Возвращайся завтра, а сейчас отдохни.");
	end
end

cr9011034 = {}
cr9011034["OnTalk"] = OnTalk
cr9011034["OnAcceptQuestTalk"] = OnAcceptQuestTalk
cr9011034["OnCompleteQuestTalk"] = OnCompleteQuestTalk