
local function OnTalk()
	Quest.ClearNPCTalkOptions();--清除对话框选项
	Quest.SetAcceptOptions(5010089);
	Quest.SetCompleteOptions(5010089);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Джастин:<color=0xffffffff><Font=arial,0,17,20>\\nПриветствую тебя, небожитель!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
	if( id == 20305)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20305,"<Font=arial,0,19,20><color=0xfffcf157>Джастин:<color=0xffffffff><Font=arial,0,17,20>\\nДолина Белого дракона кишит демонами!  Своей разрушительной энергией они влияют здесь на растения и животных!  Вы уже видели <D>снежных горных лис</D>?  Некогда это были милые, добрые, пушистые создания, но в одночасье превратились в опасных кровожадных зверей!  Нужно же делать что-то с ними!");

	elseif( id == 20306)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20306,"<Font=arial,0,19,20><color=0xfffcf157>Джастин:<color=0xffffffff><Font=arial,0,17,20>\\nНо больше всего мы боимся банду разбойников, которая разбила лагерь неподалеку. Эта банда наводит страх на всех местных жителей, а все из-за демонов! А когда-то это были просто обычные ребята - ну, почтовую повозку ограбят с пенсиями или с путника одежду снимут, а теперь превратились в настоящих монстров! Боевиков! Ох, чудовищно сильны уже сейчас, а что будет, когда они наполнятся демонической сущностью!  Да они разрушат весь город!  Нам нужно уничтожить их всех, пока не пришла настоящая беда!");
	elseif( id == 20307)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20307,"<Font=arial,0,19,20><color=0xfffcf157>Джастин:<color=0xffffffff><Font=arial,0,17,20>\\nЕсть лисы, которых мы называем двоюродными братьями снежных горных лис. Это <color=0xffff6000>песцы<color=0xffffffff>.  Самое интересное, что демоническая сущность, похоже, на них совсем не влияет. Мне интересно, в чем причина. Не могли бы вы принести несколько образцов их шерсти, которую еще в шутку называют <T>мехом песца</T>? Возможно, я смогу понять, почему они не подверглись влиянию демонов, когда исследую этот мех.");
	elseif( id == 20308)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20308,"<Font=arial,0,19,20><color=0xfffcf157>Джастин:<color=0xffffffff><Font=arial,0,17,20>\\nУ меня есть важное сообщение для тебя, <color=0xff05ff00>"..Quest.GetPlayerName().."<color=0xfffff7e0>! Вскоре тебе предстоит отправиться в <N>Логово Ящера</N>. Следует знать, что это очень опасное место и отправляться туда можно после <C>33-го</C> уровня, иначе есть все шансы погибнуть!");
	elseif( id == 20314)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20314,"<Font=arial,0,19,20><color=0xfffcf157>Джастин:<color=0xffffffff><Font=arial,0,17,20>\\n<N>Долина Белого дракона</N> кишит существами, попавшими под влияние демонической энергии! Мы посылали туда солдат, однако и эти бравые воины были порабощены силами зла! Прошу тебя, поговори с <D>Саэшем</D>, что стоит за мной. Ему очень нужна ваша помощь, <color=0xff05ff00>"..Quest.GetPlayerName().."<color=0xfffff7e0>.");
	elseif( id == 20350)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20350,"<Font=arial,0,19,20><color=0xfffcf157>Джастин:<color=0xffffffff><Font=arial,0,17,20>\\nУ меня есть разные сведения о силе существ, которые бродят в районе <P>Тропы к Заснеженной вершине</P>.  Мне важно знать, правдивые эти сведения или нет.  Не могли бы вы исследовать тот район и рассказать мне все, что увидели? ");
		end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
		if( id == 20304)then
			Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(20304,"<Font=arial,0,19,20><color=0xfffcf157>Джастин:<color=0xffffffff><Font=arial,0,17,20>\\nХвала небу! Кто-то осмелился помочь нам!");
		elseif( id == 20305)then
			  Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(20305,"<Font=arial,0,19,20><color=0xfffcf157>Джастин:<color=0xffffffff><Font=arial,0,17,20>\\nЯ всегда любил и изучал животных, поэтому, как специалист, могу с уверенностью сказать - этих лис мы не можем спасти. Демоническая энергия свела их с ума. Меня беспокоит тот факт, что подобное бешенство может оказаться заразным!");
		elseif( id == 20306)then
			Quest.CloseNPCTalk();
			  Quest.CompleteQuestTalk(20306,"<Font=arial,0,19,20><color=0xfffcf157>Джастин:<color=0xffffffff><Font=arial,0,17,20>\\nВеликолепно!  Вы справились со всеми этими бандитами!  Вы истинный житель небес!");
		elseif( id == 20307)then
			Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(20307,"<Font=arial,0,19,20><color=0xfffcf157>Джастин:<color=0xffffffff><Font=arial,0,17,20>\\nСпасибо вам!  Я отнесу образцы этого меха в город, и мы попытаемся выяснить, почему на <D>песцов</D> не действует демоническая энергия.");
		elseif( id == 20313)then
			Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(20313,"<Font=arial,0,19,20><color=0xfffcf157>Джастин:<color=0xffffffff><Font=arial,0,17,20>\\nНаконец-то ты здесь!");
		elseif( id == 20350)then
			Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(20350,"<Font=arial,0,19,20><color=0xfffcf157>Джастин:<color=0xffffffff><Font=arial,0,17,20>\\nСпасибо вам, посланник небес! Все узнают о ваших добрых делах. Мы всегда будем помнить, что вы для нас сделали.");

		   end

end

Ryuantian = {}
Ryuantian["OnTalk"] = OnTalk
Ryuantian["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Ryuantian["OnCompleteQuestTalk"] = OnCompleteQuestTalk