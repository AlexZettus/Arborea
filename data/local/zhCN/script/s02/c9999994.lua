local function OnTalk()
	Quest.ClearNPCTalkOptions();    
	Quest.SetAcceptOptions(9999994);
	Quest.SetCompleteOptions(9999994);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Обмен плодов:<color=0xffffffff><Font=arial,0,17,20>\\nЗдесь вы можете обменять плоды на ценные награды.");
end


local function OnAcceptQuestTalk(id,step)
	if (id == 59035) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(59035,"<Font=arial,0,19,20><color=0xfffcf157>Обмен плодов:<color=0xffffffff><Font=arial,0,17,20>\\nВозложите на алтарь богини плодородия 40 плодов снежного лотоса и в благодарность получите 1 морозный камень. Ритуал можно провести не более одного раза в день.");
	elseif (id == 59036) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(59036,"<Font=arial,0,19,20><color=0xfffcf157>Обмен плодов:<color=0xffffffff><Font=arial,0,17,20>\\nВозложите на алтарь богини плодородия 40 сердец снежного лотоса и в благодарность получите 3 морозных камень. Ритуал можно провести не более одного раза в день.");
	elseif (id == 59037) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(59037,"<Font=arial,0,19,20><color=0xfffcf157>Обмен плодов:<color=0xffffffff><Font=arial,0,17,20>\\nВозложите на алтарь богини плодородия 35 плодов Азалеа и в благодарность получите 20 думонов. Ритуал можно провести не более одного раза в день.");
	elseif (id == 59038) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(59038,"<Font=arial,0,19,20><color=0xfffcf157>Обмен плодов:<color=0xffffffff><Font=arial,0,17,20>\\nВозложите на алтарь богини плодородия 35 плодов шепота и в благодарность получите 40 думонов. Ритуал можно провести не более одного раза в день.");
	elseif (id == 59039) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(59039,"<Font=arial,0,19,20><color=0xfffcf157>Обмен плодов:<color=0xffffffff><Font=arial,0,17,20>\\nВозложите на алтарь богини плодородия 30 плодов мурчания и в благодарность получите 1 плейону. Ритуал можно провести не более одного раза в день.");
	end
end

local function OnCompleteQuestTalk(id,step)
	if (id == 59035) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(59035,"<Font=arial,0,19,20><color=0xfffcf157>Обмен плодов:<color=0xffffffff><Font=arial,0,17,20>\\nПолучите свою награду!");
	elseif (id == 59036) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(59036,"<Font=arial,0,19,20><color=0xfffcf157>Обмен плодов:<color=0xffffffff><Font=arial,0,17,20>\\nПолучите свою награду!");
	elseif (id == 59037) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(59037,"<Font=arial,0,19,20><color=0xfffcf157>Обмен плодов:<color=0xffffffff><Font=arial,0,17,20>\\nПолучите свою награду!");
	elseif (id == 59038) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(59038,"<Font=arial,0,19,20><color=0xfffcf157>Обмен плодов:<color=0xffffffff><Font=arial,0,17,20>\\nПолучите свою награду!");
	elseif (id == 59039) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(59039,"<Font=arial,0,19,20><color=0xfffcf157>Обмен плодов:<color=0xffffffff><Font=arial,0,17,20>\\nПолучите свою награду!");
	end
end

c9999994 = {}
c9999994["OnTalk"] = OnTalk
c9999994["OnAcceptQuestTalk"] = OnAcceptQuestTalk
c9999994["OnCompleteQuestTalk"] = OnCompleteQuestTalk