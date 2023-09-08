local function OnTalk()
	Quest.ClearNPCTalkOptions();    
	Quest.SetAcceptOptions(9010094);
	Quest.SetCompleteOptions(9010094);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Ученый кот:<color=0xffffffff><Font=arial,0,17,20>\\nУченый кот Тифлет приветствует тебя путник.\\nОткуда и куда держишь ты свой путь и сумеешь ли оказать ученому коту услугу?");
end


local function OnAcceptQuestTalk(id,step)
	if( id == 59006)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(59006,"<Font=arial,0,19,20><color=0xfffcf157>Ученый кот:<color=0xffffffff><Font=arial,0,17,20>\\nПрибыл в край я столь далекий\\nВ поисках цепи златой,\\nМилка цепь мою украла,\\nСказки песню оборвала!\\nГоворят, в библиотеке\\nВидят Милку на рассвете.\\nПомоги мне цепь добыть,\\nМилку всадницу убить.");
	elseif( id == 59007)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(59007,"<Font=arial,0,19,20><color=0xfffcf157>Ученый кот:<color=0xffffffff><Font=arial,0,17,20>\\nДобрый молодец, привет!\\nЯ ученый кот Тифлет.\\nВ этом стольном древнем граде\\nЖдет тебя, мой друг, награда.\\nПринеси мне фолианты,\\nИ когда пробьют куранты,\\nПро тебя я песнь сложу\\nИ наградой награжу.");
	elseif( id == 59008)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(59008,"<Font=arial,0,19,20><color=0xfffcf157>Ученый кот:<color=0xffffffff><Font=arial,0,17,20>\\nСнова, молодец, беда!\\nДа страшна как никогда:\\nВстретил лешего в лесу,\\nЛеший там искал лису,\\nВсех зверей он перебил,\\nСотни душ он загубил.\\nУ него иллюзий сила,\\nЧто зверей всех погубила.\\nУничтожь его фантомы,\\nЛеший явится тогда\\nИ замолкнет навсегда.");
	elseif( id == 59009)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(59009,"<Font=arial,0,19,20><color=0xfffcf157>Ученый кот:<color=0xffffffff><Font=arial,0,17,20>\\nГоворят, что чудо есть -\\nВойско, что глазам не счесть,\\nВо главе там Беловод,\\nАдмирал озерных вод.\\nВ море битва все бушует -\\nБеловод с врагом воюет.\\nПрохудились все доспехи,\\nДело срочное и к спеху.\\nПомоги мне все собрать\\nДа одеть морскую рать.");
	end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
	if( id == 59006)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(59006,"<Font=arial,0,19,20><color=0xfffcf157>Ученый кот:<color=0xffffffff><Font=arial,0,17,20>\\nДоказал ты мне сполна -\\nО тебе молва верна!\\nЦепь златую ты вернул,\\nВ сказку жизнь опять вдохнул.");
	elseif( id == 59007)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(59007,"<Font=arial,0,19,20><color=0xfffcf157>Ученый кот:<color=0xffffffff><Font=arial,0,17,20>\\nТы принес мне фолианты,\\nПроявив свои таланты,\\nТы на деле доказал,\\nКак ты  смел, могуч, удал!\\nБлагодарен век я буду,\\nГде бы ни был, я повсюду\\nБуду подвиг воспевать и героя восхвалять.");
	elseif( id == 59008)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(59008,"<Font=arial,0,19,20><color=0xfffcf157>Ученый кот:<color=0xffffffff><Font=arial,0,17,20>\\nСнова сказке ты помог,\\nОдержав победу в срок.\\nТы награду заслужил,\\nЧтобы жил и не тужил!");
	end
end

Catquest = {}
Catquest["OnTalk"] = OnTalk
Catquest["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Catquest["OnCompleteQuestTalk"] = OnCompleteQuestTalk