
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
	Quest.SetAcceptOptions(5010014);
	Quest.SetCompleteOptions(5010014);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20>Сначала уровни достигаются быстро, и чем выше твой уровень, тем дольше достигается новый. Происходит так потому, что с каждым новым уровнем ты становишься сильнее. А на некоторых уровнях тебе будут открываться новые возможности, вроде эльфов-помощников и божественного превращения.");

end


local function OnAcceptQuestTalk(id,step)--Если удалить задание, то его можно будет заново выбрать вручную.
        if( id == 20005)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20005,"<Font=arial,0,19,20>Мы почти добрались до лагеря, как вдруг я заметила, что один из моих питомцев пропал. Эти зверята ручные и очень радуют глаз, но их любопытство иногда приводит к неприятностям. Я боюсь, что енот забрёл в деревню гоблинов.");
        elseif( id == 20006)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20006,"<Font=arial,0,19,20>Мой напарник Клайд ищет енота где-то у подножья горы. Пойди и сообщи ему, что всё уже в порядке. Пусть возвращается обратно.");
        end
end


--после выбора меню заданий
local function OnCompleteQuestTalk(id,step)
        if( id == 20004)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20004,"<Font=arial,0,19,20>Спасибо. Луна не говорила мне, что у неё появился новый друг. Мы как раз везём провизию в тренировочный лагерь, но возникли некоторые трудности.");
        elseif( id == 20005)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20005,"<Font=arial,0,19,20>О, этот малыш цел! Знаешь, я вижу, что ты нравишься этому еноту. Можешь оставить его себе. Енот будет помогать тебе собирать трофеи, добытые при убийстве монстров.");
       end

end

aisi = {}
aisi["OnTalk"] = OnTalk
aisi["OnAcceptQuestTalk"] = OnAcceptQuestTalk
aisi["OnCompleteQuestTalk"] = OnCompleteQuestTalk