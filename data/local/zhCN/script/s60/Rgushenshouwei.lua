local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить выбор в окне диалога
	Quest.SetAcceptOptions(5600076);
	Quest.SetCompleteOptions(5600076);
	Quest.SetNPCTalkOption( EOT_GodEvilRepute,0,0, "Навыки и улучшение кристалла Элизиума" );-- Второй параметр устанавливает: 0:God;1: Evil
	Quest.NPCTalk(0,0,"<font=Dragon Font,0,19,20><color=0xfffcf157>Страж Кафедрала: <color=0xffffffff><font=Dragon Font,0,17,20>\\nОстановись, смертный. Перед тобой Страж Кафедрала. Внемли моим словам в преклони колени пред силой Света!");
end


local function OnAcceptQuestTalk(id,step)--Если отменить задание, можно принять его заново вручную.
	if( id == 30833)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30833,"<font=Dragon Font,0,19,20><color=0xfffcf157>Страж Кафедрала: <color=0xffffffff><font=Dragon Font,0,17,20>\\nВнемли мне, смертный! Столетия назад в этом месте свершилась великая битва! Авангард демонов Абсолема был разгромлен в тот самый момент, когда решалась судьба жителей Теоса. В разгар сражения здесь бушевали такие силы, что ткань мироздания не выдержала и разразился катаклизм в результате которого мы, вместе с остатками армии демонов, оказались заперты здесь. Теперь все мы обречены сражаться до конца времён! В знак признательности за прошлые победы, я прошу тебя оказать нам услугу и помочь в текущих сражениях! Ты готов встать плечом к плечу с жителями небес?");
	end
	if( id == 30835)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30835,"<font=Dragon Font,0,19,20><color=0xfffcf157>Страж Кафедрала: <color=0xffffffff><font=Dragon Font,0,17,20>\\nМы уничтожили большую часть демонов, однако, часть осталась бродить по руинам. Сразись с ними, лиши их последней надежды! ");
	end
	if( id == 30837)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30837,"<font=Dragon Font,0,19,20><color=0xfffcf157>Страж Кафедрала: <color=0xffffffff><font=Dragon Font,0,17,20>\\nМы больше не те, кем были раньше. Наша сила - тень нашей силы. Всё что осталось от прошлой жизни - воспоминания прикованные к физической оболочке. Впрочем, некоторые пожертвовали даже этим. По полям сражений бродят бестелесные духи моих родичей. Они ещё не оставили надежды о возвращении к прежней жизни. Сможешь ли ты им помочь, герой Теоса?");
	end
	if( id == 30839)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30839,"<font=Dragon Font,0,19,20><color=0xfffcf157>Страж Кафедрала: <color=0xffffffff><font=Dragon Font,0,17,20>\\nСмертный! Я могу предложить тебе способ обратить на себя внимание Элизиума. Уже десятки лет мы собираем осколки Постамента Судей. Эта статуя является могущественным артефактом и древней святыней Элизиума. Демоны смогли уничтожить её в последнем бою. Если мы сможем восстановить артефакт, наша месть расколет небеса! Согласен ли ты помочь нам найти необходимые материалы?");
	end
	if( id == 30841)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30841,"<font=Dragon Font,0,19,20><color=0xfffcf157>Страж Кафедрала: <color=0xffffffff><font=Dragon Font,0,17,20>\\nПрошло несколько тысяч лет, как мы заключены здесь. У нас есть всего два выхода - победить в бесконечной войне и построить выход своими руками. Мы приняли решение построить магический мост из кристаллов силы. Это тропа между мирами позволит нам вернуться домой. Помоги нам собрать эти кристаллы и награда будет щедрой!");
	end
end


--Нажать после выбора задания
local function OnCompleteQuestTalk(id,step)
	if( id == 30833)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30833,"<font=Dragon Font,0,19,20><color=0xfffcf157>Страж Кафедрала: <color=0xffffffff><font=Dragon Font,0,17,20>\\nПрими этот кристалл и пусть дух твой будет светел и чист, герой! Неси этот свет перед собой и не бойся Тьмы. Вся сила Света с тобой!");
	end
	if( id == 30835)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30835,"<font=Dragon Font,0,19,20><color=0xfffcf157>Страж Кафедрала: <color=0xffffffff><font=Dragon Font,0,17,20>\\nПусть Свет всегда озаряет ваш путь!");
	end
	if( id == 30837)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30837,"<font=Dragon Font,0,19,20><color=0xfffcf157>Страж Кафедрала: <color=0xffffffff><font=Dragon Font,0,17,20>\\nПусть Свет всегда озаряет ваш путь!");
	end
	if( id == 30839)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30839,"<font=Dragon Font,0,19,20><color=0xfffcf157>Страж Кафедрала: <color=0xffffffff><font=Dragon Font,0,17,20>\\nПусть Свет всегда озаряет ваш путь!");
	end
	if( id == 30841)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30841,"<font=Dragon Font,0,19,20><color=0xfffcf157>Страж Кафедрала: <color=0xffffffff><font=Dragon Font,0,17,20>\\nПусть Свет всегда озаряет ваш путь!");
	end
end

Rgushenshouwei = {}
Rgushenshouwei["OnTalk"] = OnTalk
Rgushenshouwei["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rgushenshouwei["OnCompleteQuestTalk"] = OnCompleteQuestTalk