
local function OnTalk()
	Quest.ClearNPCTalkOptions();
	Quest.SetAcceptOptions(9010860);
	Quest.SetCompleteOptions(9010860);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Тэлур:<color=0xffffffff>\\nПриветствую тебя. Если ты достиг 80 уровня, то сможешь отправиться на Небесный остров. Ежедневно я буду давать тебе задание, с которым ты можешь начать своё приключение на Небесном острове.");

end

local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
    if id == 50050 then
        Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(50050,"<Font=arial,0,19,20><color=0xfffcf157>Тэлур:<color=0xffffffff>\\nПришло время отправиться в путь.");
	elseif id == 50051 then
        Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(50051,"<Font=arial,0,19,20><color=0xfffcf157>Тэлур:<color=0xffffffff>\\nПришло время отправиться в путь.");
	elseif id == 50052 then
        Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(50052,"<Font=arial,0,19,20><color=0xfffcf157>Тэлур:<color=0xffffffff>\\nПришло время отправиться в путь.");
	elseif id == 50053 then
        Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(50053,"<Font=arial,0,19,20><color=0xfffcf157>Тэлур:<color=0xffffffff>\\nПришло время отправиться в путь.");
	elseif ( id == 52158 ) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52158,"<Font=arial,0,19,20><color=0xfffcf157>Тэлур:<color=0xffffffff>\\nПриветствую тебя! Если желаешь принять участие в летнем соревновании, скорее поговори с Руфусом (Тарио, 542 936, 697 940) , он расскажет тебе все детали. Удачи, герой!");
 	end
end

local function OnCompleteQuestTalk(id,step)
	if ( id == 52158 ) then
		Quest.CloseNPCTalk();
	    Quest.CompleteQuestTalk(52158,"<Font=arial,0,19,20><color=0xfffcf157>Авигор:<color=0xffffffff>\\nБарды будут сочинять о тебе песни!");
    end
end

skyIslandTalk = {}
skyIslandTalk["OnTalk"] = OnTalk
skyIslandTalk["OnAcceptQuestTalk"] = OnAcceptQuestTalk
skyIslandTalk["OnCompleteQuestTalk"] = OnCompleteQuestTalk