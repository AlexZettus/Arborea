local function OnTalk()
	Quest.ClearNPCTalkOptions();
	Quest.SetAcceptOptions(9010297);
	Quest.SetCompleteOptions(9010297);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Хайзенберг:<color=0xffffffff>\\nВарю гравировки.");
end

local function OnAcceptQuestTalk(id,step)
    if( id == 52092)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52092,"<Font=arial,0,19,20><color=0xfffcf157>Хайзенберг:<color=0xffffffff><Font=arial,0,17,20>\\nНа случай, если вы собрали 14 Печатей постоянства и желаете выполнить это задание дважды, оно является ежедневным. Если вы выполните это задание и отдадите 7 Печатей постоянства, то больше не сможете выполнить одно из других заданий по обмену Печатей постоянства. Если вы уверены в своём выборе, завершите задание и получите ценный приз.");
	elseif( id == 52093)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52093,"<Font=arial,0,19,20><color=0xfffcf157>Хайзенберг:<color=0xffffffff><Font=arial,0,17,20>\\nЗадание можно выполнить единожды. Если вы выполните это задание и отдадите 10 Печатей постоянства, то больше не сможете выполнить одно из других заданий по обмену Печатей постоянства. Если вы уверены в своём выборе, завершите задание и получите ценный приз.");	
	elseif( id == 52094)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52094,"<Font=arial,0,19,20><color=0xfffcf157>Хайзенберг:<color=0xffffffff><Font=arial,0,17,20>\\nЗадание можно выполнить единожды. Если вы выполните это задание и отдадите 14 Печатей постоянства, то больше не сможете выполнить одно из других заданий по обмену Печатей постоянства. Если вы уверены в своём выборе, завершите задание и получите ценный приз.");	
    end
end

local function OnCompleteQuestTalk(id,step)
    if (id == 52092) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52092,"<Font=arial,0,19,20><color=0xfffcf157>Хайзенберг:<color=0xffffffff><Font=arial,0,17,20>\\nВы великолепны!");
	elseif (id == 52093) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52093,"<Font=arial,0,19,20><color=0xfffcf157>Хайзенберг:<color=0xffffffff><Font=arial,0,17,20>\\nВы великолепны!");
	elseif (id == 52094) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52094,"<Font=arial,0,19,20><color=0xfffcf157>Хайзенберг:<color=0xffffffff><Font=arial,0,17,20>\\nВы великолепны!");
	end
end

c9010297 = {}
c9010297["OnTalk"] = OnTalk
c9010297["OnAcceptQuestTalk"] = OnAcceptQuestTalk
c9010297["OnCompleteQuestTalk"] = OnCompleteQuestTalk
