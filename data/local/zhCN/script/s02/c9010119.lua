local function OnTalk()
	Quest.ClearNPCTalkOptions();    
	Quest.SetAcceptOptions(9010119);
	Quest.SetCompleteOptions(9010119);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Торт:<color=0xffffffff><Font=arial,0,17,20>\\nЗдесь вы можете получить подарочный титул ко дню рождения Blood and Soul. Также вы можете поговорить с Мастером Енотом...");
end


local function OnAcceptQuestTalk(id,step)
	if (id == 59041) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(59041,"<Font=arial,0,19,20><color=0xfffcf157>Торт:<color=0xffffffff><Font=arial,0,17,20>\\nДень рождения Blood and Soul - это праздник для всех жителей Теоса, не стесняйтесь поздравлять близких и боевых товарищей. Желаем вам отличного настроения и больше интересных приключений!");
	end
end

local function OnCompleteQuestTalk(id,step)
	if (id == 59041) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(59041,"<Font=arial,0,19,20><color=0xfffcf157>Торт:<color=0xffffffff><Font=arial,0,17,20>\\nДень рождения Blood and Soul - это праздник для всех жителей Теоса, не стесняйтесь поздравлять близких и боевых товарищей. Желаем вам отличного настроения и больше интересных приключений!");
	end
end

c9010119 = {}
c9010119["OnTalk"] = OnTalk
c9010119["OnAcceptQuestTalk"] = OnAcceptQuestTalk
c9010119["OnCompleteQuestTalk"] = OnCompleteQuestTalk