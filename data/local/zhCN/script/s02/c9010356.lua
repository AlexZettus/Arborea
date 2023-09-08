local function OnTalk()
	Quest.ClearNPCTalkOptions();    
	Quest.SetAcceptOptions(9010356);
	Quest.SetCompleteOptions(9010356);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Ривер:<color=0xffffffff><Font=arial,0,17,20>\\nПолучите задание и отправляйтесь к Храму прозрения. Сделать это можно через специальный портал (Тарио, 555 335). Поспешите, от скорости сдачи задания зависит размер вашей награды. Сдать задание можно в течение 30 минут после завершения ивента.");
end

local function OnAcceptQuestTalk(id,step)
	if (id == 53001) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(53001,"<Font=arial,0,19,20><color=0xfffcf157>Ривер:<color=0xffffffff><Font=arial,0,17,20>\\nПриветствую вас! Поспешите, вход на ивент доступен всего 30 минут.");
	end
end

local function OnCompleteQuestTalk(id,step)
	if (id == 53001) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(53001,"<Font=arial,0,19,20><color=0xfffcf157>Ривер:<color=0xffffffff><Font=arial,0,17,20>\\nЯ бы похлопала в ладоши, но мне религия не позволяет. Получите заслуженную награду.");
	end
end

c9010356 = {}
c9010356["OnTalk"] = OnTalk
c9010356["OnAcceptQuestTalk"] = OnAcceptQuestTalk
c9010356["OnCompleteQuestTalk"] = OnCompleteQuestTalk