local function OnTalk()
	Quest.ClearNPCTalkOptions();    
	Quest.SetAcceptOptions(5510994);
	Quest.SetCompleteOptions(5510994);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Вильгельм:<color=0xffffffff><Font=arial,0,17,20>\\nПриветствую тебя, гражданин Теоса. Нам нужна твоя помощь. Этот странный говорящий кот поведал мне страшную историю, а наш солдат смог её подтвердить. Кай, так зовут моего подчинённого, находится сейчас в другом измерении и сможет тебе помочь. Прими моё задание, его можно выполнять в группе из героев 80 уровня или выше раз в сутки.");
end


local function OnAcceptQuestTalk(id,step)
	if (id == 52140 or id == 52141) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Вильгельм:<color=0xffffffff><Font=arial,0,17,20>\\nОтправляйся в другое измерение, для этого обратись к Призмо (Тарио, 500 781). Он перенесёт тебя в страшную вселенную, где воины света не смогли одолеть тьму. Мы - их последняя надежда. Там тебя будет ждать наш солдат Кай. Он поможет тебе сориентироваться и найти цель основного задания.");
	end
end

local function OnCompleteQuestTalk(id,step)
	if (id == 52140 or id == 52141) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Вильгельм:<color=0xffffffff><Font=arial,0,17,20>\\nПрими мои поздравления! ПАМЯТКА: Ивент Кривые зеркала завершится в 8:00, 5 ноября. До момента завершения ивента ты можешь возвращаться ко мне 1 раз в сутки для выполнения задания ивента. За выполнение задания ты получишь купоны чести, их можно использовать для покупки предметов ивента у Лорики (381 306; 671 261; 891 821; 358 822).");
	end
end

c5510994 = {}
c5510994["OnTalk"] = OnTalk
c5510994["OnAcceptQuestTalk"] = OnAcceptQuestTalk
c5510994["OnCompleteQuestTalk"] = OnCompleteQuestTalk