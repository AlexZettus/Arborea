local function OnTalk()
	Quest.ClearNPCTalkOptions();
	Quest.SetAcceptOptions(9010335);
	Quest.SetCompleteOptions(9010335);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Маули<color=0xffffffff>\\nЗдесь так интересно! Лесник часто рассказывает мне всякие истории, а эльфы поют какие-то очень древние песни. Только энты почему-то не особо разговорчивы. Они лишь постоянно повторяют себе под нос какие-то вопросы - Кто я? Для чего я здесь? Что я чувствую?");
end

local function OnCompleteQuestTalk(id,step)
    if (id == 52097) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52097,"<Font=arial,0,19,20><color=0xfffcf157>Маули<color=0xffffffff><Font=arial,0,17,20>\\nСпасибо, что помог. Сразу видно, что есть голова на плечах и смелость в душе. Я вот хочу вырасти и быть очень умной. Ведь когда ты умный, достижение других целей будет видеться гораздо проще.");
	end
end

mauli = {}
mauli["OnTalk"] = OnTalk
mauli["OnCompleteQuestTalk"] = OnCompleteQuestTalk
