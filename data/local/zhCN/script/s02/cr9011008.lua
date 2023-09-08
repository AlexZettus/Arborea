local function OnTalk()
	Quest.ClearNPCTalkOptions();    
	Quest.SetAcceptOptions(9011008);
	Quest.SetCompleteOptions(9011008);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20>Приветствую тебя. Кошачий альянс старается соблюдать нейтралитет, пока все остальные сражаются. Мы любим вкусности и хорошенько поспать. Можно сказать, это наше кредо. Здесь ты сможешь получить задания выбранного пути, а также задания, доступные для всех путешественников 80 уровня и выше.");
end

local function OnAcceptQuestTalk(id,step)
	if (id == 52164) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52164,"<Font=arial,0,19,20>За выполнение задания Призраки прошлого ты получишь Кошачью мяту. Принеси мне 1 штуку, чтобы получить награду.");
	elseif (id == 52165) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52165,"<Font=arial,0,19,20>Уничтожь 2021 монстра на локациях, чтобы выбрать и получить Юбилейные крылья.");
	elseif (id == 52166) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52166,"<Font=arial,0,19,20>Ежедневно ты можешь получать набор, из которого будут выпадать 2 случайных задания.");
	end
end

local function OnCompleteQuestTalk(id,step)
	if (id == 52164) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52164,"<Font=arial,0,19,20>Мяу!");
	elseif (id == 52165) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52165,"<Font=arial,0,19,20>Выбери награду - черные или голубые юбилейные крылья. Параметры крыльев одинаковые. Отличается только цвет.");
	elseif (id == 52166) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52166,"<Font=arial,0,19,20>Горячих тебе приключений! Приходи ещё.");
	elseif (id == 52173) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52173,"<Font=arial,0,19,20>Держи заслуженную награду.");
	elseif (id == 52174) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52174,"<Font=arial,0,19,20>Держи заслуженную награду.");
	end
end

cr9011008 = {}
cr9011008["OnTalk"] = OnTalk
cr9011008["OnAcceptQuestTalk"] = OnAcceptQuestTalk
cr9011008["OnCompleteQuestTalk"] = OnCompleteQuestTalk