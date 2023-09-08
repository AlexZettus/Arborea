local function OnTalk()
	Quest.ClearNPCTalkOptions();    
	Quest.SetAcceptOptions(9010639);
	Quest.SetCompleteOptions(9010639);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20>Поздравляем всех с днём рождения Blood and Soul!\\nЗдесь можно получить небольшой подарок и первое задание из цепочки праздничных приключений. Собирай компанию друзей и отправляйся в путь.");
end

local function OnAcceptQuestTalk(id,step)
	if (id == 52138) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52138,"<Font=arial,0,19,20>Прими этот небольшой подарок в честь празднования годовщины Blood and Soul!");
	elseif (id == 40226) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40226,"<Font=arial,0,19,20>Тут начинается твой путь исследователя. Прими первое задание ивента и следуй его условиям, чтобы получить награду. Возможно, частично это задание покажется тебе знакомым. Всего будет 7 ежедневных заданий, которые можно выполнить исключительно последовательно.");
	elseif (id == 40227) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40227,"<Font=arial,0,19,20>Тут начинается твой путь исследователя. Прими первое задание ивента и следуй его условиям, чтобы получить награду. Возможно, частично это задание покажется тебе знакомым. Всего будет 7 ежедневных заданий, которые можно выполнить исключительно последовательно.");
	elseif (id == 40228) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40228,"<Font=arial,0,19,20>Тут начинается твой путь исследователя. Прими первое задание ивента и следуй его условиям, чтобы получить награду. Возможно, частично это задание покажется тебе знакомым. Всего будет 7 ежедневных заданий, которые можно выполнить исключительно последовательно.");
	elseif (id == 40229) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40229,"<Font=arial,0,19,20>Тут начинается твой путь исследователя. Прими первое задание ивента и следуй его условиям, чтобы получить награду. Возможно, частично это задание покажется тебе знакомым. Всего будет 7 ежедневных заданий, которые можно выполнить исключительно последовательно.");
	end
end

local function OnCompleteQuestTalk(id,step)
	if (id == 52138) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52138,"<Font=arial,0,19,20>Славься, Blood and Soul! Blood and Soul на веки вечные! Blood and Soul в каждый дом! Blood and Soul любит тебя!");
	end
end

birthday7 = {}
birthday7["OnTalk"] = OnTalk
birthday7["OnAcceptQuestTalk"] = OnAcceptQuestTalk
birthday7["OnCompleteQuestTalk"] = OnCompleteQuestTalk