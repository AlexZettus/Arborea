local function OnTalk()
	Quest.ClearNPCTalkOptions();    
	Quest.SetAcceptOptions(9010988);
	Quest.SetCompleteOptions(9010988);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20>Приветствую тебя. Пусть судьба вершится в бою! Таков девиз Ордена дракона. Если тебе близка эта мысль, то тебе придутся по нраву мои приказы. Принимая задания, вступай в сражение с честью и достоинством. Доказывай свою силу и мудрость не словом, а делом. Именно так поступают рыцари нашего ордена.");
end

local function OnAcceptQuestTalk(id,step)
	if (id == 52161) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52161,"<Font=arial,0,19,20>Отправляйся на Арену дракона. После перемещения на арену ты найдешь в своем инвентаре комплект эпического снаряжения арены и мощного духа. Используй их, чтобы сразиться со случайным соперником и одержать победу.");
	end
end

local function OnCompleteQuestTalk(id,step)
	if (id == 52161) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52161,"<Font=arial,0,19,20>Отличный был бой. Возвращайся завтра.");
	elseif (id == 52170) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52170,"<Font=arial,0,19,20>Хорошая команда увеличивает шансы на победу.");
	elseif (id == 52171) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52171,"<Font=arial,0,19,20>Боги Абсолема гордятся тобой.");
	elseif (id == 52172) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52172,"<Font=arial,0,19,20>Ты истинный рыцарь Ордена дракона!");
	end
end

birthday10 = {}
birthday10["OnTalk"] = OnTalk
birthday10["OnAcceptQuestTalk"] = OnAcceptQuestTalk
birthday10["OnCompleteQuestTalk"] = OnCompleteQuestTalk