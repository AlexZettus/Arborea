local function OnTalk()
	Quest.ClearNPCTalkOptions();
	Quest.SetAcceptOptions(9010572);
	Quest.SetCompleteOptions(9010572);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Николай<color=0xffffffff>\\nОтважный путник мира Теоса, ты-то мне и нужен! Ты ведь хорошо вел себя в этом году? Я приготовил подарки всем хорошим детям, но у меня возникли разногласия по этому поводу с моими дальними родственниками из клана Вечной мерзлоты. В итоге они украли мой драгоценный список хороших детей и подвергают срыву торжественную выдачу подарков. Моя репутация под угрозой!");
end

local function OnAcceptQuestTalk(id,step)
    if ( id == 52132) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52132,"<Font=arial,0,19,20><color=0xfffcf157>Николай<color=0xffffffff><Font=arial,0,17,20>\\nРассчитываю на тебя, мой юный друг! Мои коварные родственники заняли Библиотеку и скрываются там. Я уже отправил телеграмму своему лучшему другу Сновале, он ждет тебя у входа в Библиотеку.");
    end
end

local function OnCompleteQuestTalk(id,step)
    if (id == 52132) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52132,"<Font=arial,0,19,20><color=0xfffcf157>Николай<color=0xffffffff><Font=arial,0,17,20>\\nНевероятно, ты справился - праздник спасен, как и моя репутация! Спасибо тебе, держи и ты от меня подарок, заслужил.");
	end
end

ny2018 = {}
ny2018["OnTalk"] = OnTalk
ny2018["OnAcceptQuestTalk"] = OnAcceptQuestTalk
ny2018["OnCompleteQuestTalk"] = OnCompleteQuestTalk
