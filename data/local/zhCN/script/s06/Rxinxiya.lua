
local function OnTalk()
	Quest.ClearNPCTalkOptions();  --清除对话框选项
	Quest.SetAcceptOptions(5010162);
	Quest.SetCompleteOptions(5010162);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Синтия:<color=0xffffffff>\\nЗдесь так ужасно! ");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
	 if( id == 20420)then
	  Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(20420,"<Font=arial,0,19,20><color=0xfffcf157>Синтия:<color=0xffffffff>\\nНедавно что-то случилось с пикси. Прежде это были милые и нежные существа, но в последнее время они вдруг стали злее августовских мух. Я не знаю, что с ними. Поможете мне проверить, появились ли какие-то изменения на их теле или нет?");
	 elseif( id == 20421)then
			Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(20421,"<Font=arial,0,19,20><color=0xfffcf157>Синтия:<color=0xffffffff>\\nПояса призраков постепенно врастают в тела существ и со временем превращают их в монстров. Мы не видим пояса на кудесниках Леса Теней. Наверное, они уже полностью перешли под контроль демонов.");
	 elseif( id == 20422)then
			Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(20422,"<Font=arial,0,19,20><color=0xfffcf157>Синтия:<color=0xffffffff>\\nКак я и думала, эта секта призраков что-то замышляет. Что-то много там собралось всяких подозрительных личностей. Пожалуйста, пойдите и разберитесь с ними.");
	 elseif( id == 20419)then
			Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(20419,"<Font=arial,0,19,20><color=0xfffcf157>Синтия:<color=0xffffffff>\\nВам пока еще рановато тягаться силами с сектой призраков. Потренируйтесь, поднимите уровень, а затем приходите ко мне.");
	 elseif( id == 20423)then
			Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(20423,"<Font=arial,0,19,20><color=0xfffcf157>Синтия:<color=0xffffffff>\\nЭти провидцы пришли из Мирных холмов. Похоже, главари секты находятся где-то здесь. Конечно, это лишь мое предположение. Надо бы с ними разобраться, но перед тем как браться за дело, поднимите свой уровень до 64.");
	 elseif( id == 20424)then
			Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(20424,"<Font=arial,0,19,20><color=0xfffcf157>Синтия:<color=0xffffffff>\\nМоя коллега Анна проводит свое расследование в Мирных холмах. Пожалуйста, найдите ее и предложите помощь.");
	 end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
	 if( id == 20419)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(20419,"<Font=arial,0,19,20><color=0xfffcf157>Синтия:<color=0xffffffff>\\nРада видеть вас!");
	 elseif( id == 20420)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(20420,"<Font=arial,0,19,20><color=0xfffcf157>Синтия:<color=0xffffffff>\\nЯ слышала об этом приспособлении, которое придумали демоны. Оно превращает в монстров не только животных, но и людей...");
	 elseif( id == 20421)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(20421,"<Font=arial,0,19,20><color=0xfffcf157>Синтия:<color=0xffffffff>\\nИнтересно, что все-таки это все значит...");
	 elseif( id == 20422)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(20422,"<Font=arial,0,19,20><color=0xfffcf157>Синтия:<color=0xffffffff>\\nГде может быть главарь этих провидцев?");
	 elseif( id == 20423)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(20423,"<Font=arial,0,19,20><color=0xfffcf157>Синтия:<color=0xffffffff>\\nДавайте обсудим план наших действий.");
	end

end

Rxinxiya = {}
Rxinxiya["OnTalk"] = OnTalk
Rxinxiya["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rxinxiya["OnCompleteQuestTalk"] = OnCompleteQuestTalk