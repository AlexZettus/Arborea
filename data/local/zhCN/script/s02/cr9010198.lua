local function OnTalk()
	Quest.ClearNPCTalkOptions();    
	Quest.SetAcceptOptions(9010198);
	Quest.SetCompleteOptions(9010198);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20>Чую запах тыкв. Неси всё сюда.");
end

local function OnAcceptQuestTalk(id,step)
	if (id == 52181) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52181,"<Font=arial,0,19,20>Чую запах тыкв. Неси всё сюда.");
	end
end

local function OnCompleteQuestTalk(id,step)
	if (id == 52181) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52181,"<Font=arial,0,19,20>Держи свою награду.");
	end
end

cr9010198 = {}
cr9010198["OnTalk"] = OnTalk
cr9010198["OnAcceptQuestTalk"] = OnAcceptQuestTalk
cr9010198["OnCompleteQuestTalk"] = OnCompleteQuestTalk