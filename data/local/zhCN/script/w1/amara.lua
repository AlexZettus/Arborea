local function OnTalk()
	Quest.ClearNPCTalkOptions();
	Quest.SetAcceptOptions(9010336);
	Quest.SetCompleteOptions(9010336);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Амара<color=0xffffffff>\\nЯ буду благодарна вам за любую помощь. Пока нам удаётся уберечь энергию сосредоточенной в Древе жизни, Эльфийский лес будет жить.");
end

local function OnCompleteQuestTalk(id,step)
    if (id == 52098) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52098,"<Font=arial,0,19,20><color=0xfffcf157>Амара<color=0xffffffff><Font=arial,0,17,20>\\nСпасибо. Если бы я могла, то расцеловала бы тебя.");
	end
end

amara = {}
amara["OnTalk"] = OnTalk
amara["OnCompleteQuestTalk"] = OnCompleteQuestTalk
