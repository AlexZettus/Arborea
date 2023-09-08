
local function OnTalk()
	Quest.ClearNPCTalkOptions();
	Quest.SetAcceptOptions(9010862);
	Quest.SetCompleteOptions(9010862);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Авигор:<color=0xffffffff>\\nПриветствую тебя. Здесь ты можешь получить награды за участие в жизни Небесного острова.");

end

local function OnCompleteQuestTalk(id,step)
    if( id == 50050 or id == 50051 or id == 50052 or id == 50053 )then
        Quest.CloseNPCTalk();
	    Quest.CompleteQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Авигор:<color=0xffffffff>\\nУверен, это было легко.");
	elseif ( id == 50054 ) then
		Quest.CloseNPCTalk();
	    Quest.CompleteQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Авигор:<color=0xffffffff>\\nНебесный остров очень красив. Это неоспоримый факт.");
	elseif ( id == 50055 ) then
		Quest.CloseNPCTalk();
	    Quest.CompleteQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Авигор:<color=0xffffffff>\\nТвоё оружие пропитано кровью.");
	elseif ( id == 50056 ) then
		Quest.CloseNPCTalk();
	    Quest.CompleteQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Авигор:<color=0xffffffff>\\nОсталось ещё одно задание.");
	elseif ( id == 50057 ) then
		Quest.CloseNPCTalk();
	    Quest.CompleteQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Авигор:<color=0xffffffff>\\nБарды будут сочинять о тебе песни!");
    end
end

skyIslandTalk62 = {}
skyIslandTalk62["OnTalk"] = OnTalk
skyIslandTalk62["OnAcceptQuestTalk"] = OnAcceptQuestTalk
skyIslandTalk62["OnCompleteQuestTalk"] = OnCompleteQuestTalk