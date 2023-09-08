local function OnTalk()
	Quest.ClearNPCTalkOptions();    
	Quest.SetAcceptOptions(9011007);
	Quest.SetCompleteOptions(9011007);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20>С днём рождения Blood and Soul!");
end

local function OnAcceptQuestTalk(id,step)
	if (id == 52187) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52187,"<Font=arial,0,19,20>В честь дня рождения Blood and Soul вы получите праздничный титул.");
	end
end

local function OnCompleteQuestTalk(id,step)
	if (id == 52187) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52187,"<Font=arial,0,19,20>С днём рождения Blood and Soul!");
	end
end

cr9011007 = {}
cr9011007["OnTalk"] = OnTalk
cr9011007["OnAcceptQuestTalk"] = OnAcceptQuestTalk
cr9011007["OnCompleteQuestTalk"] = OnCompleteQuestTalk