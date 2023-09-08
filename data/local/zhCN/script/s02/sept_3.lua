local function OnTalk()
	Quest.ClearNPCTalkOptions();
	Quest.SetAcceptOptions(9010251);
	Quest.SetCompleteOptions(9010251);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Стиллс<color=0xffffffff>\\n Сегодня мы будем изучать взаимодействие веществ органической химии между собой для научно-исследовательского... Ах, а где же подевались все мои препараты? Все пропало, без них я не смогу провести лабораторную! Это все проделки монстров из подземелий, наверняка, убивая их, ты сможешь найти все мои дорогие реактивы!");
end

local function OnAcceptQuestTalk(id,step)
    if ( id == 52057) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52057,"<Font=arial,0,19,20><color=0xfffcf157>Стиллс<color=0xffffffff><Font=arial,0,17,20>\\nУничтожьте монстров в подземельях Замок ада, Забытый Храм и Лабиринт Морока и соберите химические реактивы. Предмет можно получить при убийстве боссов исключительно при наличии задания и только в количестве, не превышающем требования задания.");
    end
end

local function OnCompleteQuestTalk(id,step)
    if (id == 52057) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52057,"<Font=arial,0,19,20><color=0xfffcf157>Стиллс<color=0xffffffff><Font=arial,0,17,20>\\nПрогресс не смогут остановить даже сильнейшие монстры из подземелий! Герой, спасибо тебе, твой вклад в развитие науки останется в моем сердце!");
	end
end

sept_3 = {}
sept_3["OnTalk"] = OnTalk
sept_3["OnAcceptQuestTalk"] = OnAcceptQuestTalk
sept_3["OnCompleteQuestTalk"] = OnCompleteQuestTalk
