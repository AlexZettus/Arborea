local function OnTalk()
	Quest.ClearNPCTalkOptions();    
	Quest.SetAcceptOptions(9010989);
	Quest.SetCompleteOptions(9010989);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20>Приветствую тебя. В нашей гильдии лучшие охотники на монстров. Ради добычи мы готовы на всё. Если зов охоты у тебя в крови, то мои поручения не составят для тебя труда.");
end

local function OnAcceptQuestTalk(id,step)
	if (id == 52162) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52162,"<Font=arial,0,19,20>Отправляйся в Лагерь испытаний. Уничтожь монстров и одолей финального босса.");
	end
end

local function OnCompleteQuestTalk(id,step)
	if (id == 52162) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52162,"<Font=arial,0,19,20>Отличный был бой. Возвращайся завтра.");
	elseif (id == 52167) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52167,"<Font=arial,0,19,20>Хорошая добыча!");
	elseif (id == 52168) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52168,"<Font=arial,0,19,20>Отличная работа");
	elseif (id == 52169) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52169,"<Font=arial,0,19,20>Хорошая добыча!");
	end
end

cr9010989 = {}
cr9010989["OnTalk"] = OnTalk
cr9010989["OnAcceptQuestTalk"] = OnAcceptQuestTalk
cr9010989["OnCompleteQuestTalk"] = OnCompleteQuestTalk