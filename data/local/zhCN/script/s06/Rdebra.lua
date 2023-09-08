
local function OnTalk()
	Quest.ClearNPCTalkOptions();  --清除对话框选项
	Quest.SetAcceptOptions(5511016);
	Quest.SetCompleteOptions(5511016);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Дебрас:<color=0xffffffff>\\nВам не найти более загадочного места, чем Лес Теней...");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
	if( id == 20430)then
			Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(20430,"<Font=arial,0,19,20><color=0xfffcf157>Дебрас:<color=0xffffffff>\\nОсобую опасность для окружающих представляют духи Леса Теней. Идите и уничтожьте их.");
	elseif( id == 20432)then
			Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(20432,"<Font=arial,0,19,20><color=0xfffcf157>Дебрас:<color=0xffffffff>\\nНи один из членов секты призраков не безгрешен. Мне нужно, чтобы вы собрали доказательство их вины. С ними на руках мы сможем прекратить существование этого сборища проклятых сектантов.");
	elseif( id == 20433)then
			Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(20433,"<Font=arial,0,19,20><color=0xfffcf157>Дебрас:<color=0xffffffff>\\nВ Лесу Теней кто-то посеял ядовитые цветы. Своим ароматом они отравляют людей и превращают их в одержимых демонической силой монстров. Идите и соберите несколько этих проклятых цветов. ");
	elseif( id == 20434)then
			Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(20434,"<Font=arial,0,19,20><color=0xfffcf157>Дебрас:<color=0xffffffff>\\nМало того что нужно думать, как избавиться от секты призраков, так еще и от медведей одни беды - озверели проклятые животные!");
	elseif( id == 20435)then
			Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(20435,"<Font=arial,0,19,20><color=0xfffcf157>Дебрас:<color=0xffffffff>\\nГде источник силы и отваги этих людей? Меня давно волнует этот вопрос... Надеюсь, вы поможете мне найти на него ответ.");
	elseif( id == 20436)then
			Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(20436,"<Font=arial,0,19,20><color=0xfffcf157>Дебрас:<color=0xffffffff>\\nНа счету мясника Леса Теней множество невинных жертв. Я надеюсь, вы поможете мне наказать его.");

	end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
	if( id == 20429)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(20429,"<Font=arial,0,19,20><color=0xfffcf157>Дебрас:<color=0xffffffff>\\nЧтобы остановить распространение влияния этой секты, нам нужно уничтожить ее миссионерские материалы.");
	elseif( id == 20431)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(20431,"<Font=arial,0,19,20><color=0xfffcf157>Дебрас:<color=0xffffffff>\\nОтличная работа! Теперь мы знаем, как бороться с сектой призраков!");
	elseif( id == 20432)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(20432,"<Font=arial,0,19,20><color=0xfffcf157>Дебрас:<color=0xffffffff>\\nЯ придумаю, как применить эти доказательства для борьбы с сектантами.");
	elseif( id == 20433)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(20433,"<Font=arial,0,19,20><color=0xfffcf157>Дебрас:<color=0xffffffff>\\nЭто невероятная стойкость! Вам нужно собрать товарищей, которые бы помогли разобраться с этой сектой раз и навсегда.");
	 elseif( id == 20434)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(20434,"<Font=arial,0,19,20><color=0xfffcf157>Дебрас:<color=0xffffffff>\\nДа, нелегко быть небожителем... Столько нужно решать проблем ради кого-то...");
	 elseif( id == 20435)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(20435,"<Font=arial,0,19,20><color=0xfffcf157>Дебрас:<color=0xffffffff>\\nЯ никогда не встречал такой жестокой группировки. Секта призраков - самое ужасное, что я когда-либо видел.");


	end
end

Rdebra = {}
Rdebra["OnTalk"] = OnTalk
Rdebra["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rdebra["OnCompleteQuestTalk"] = OnCompleteQuestTalk
