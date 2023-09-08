
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010206);
	Quest.SetCompleteOptions(5010206);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Дочь дьявола Йору: <color=0xffffffff>\\nДа, я всего лишь хрупкая девушка. Но я клянусь, что вы пожалеете, если посмеете смотреть на меня с презрением.");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 20612)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20612,"<Font=arial,0,19,20><color=0xfffcf157>Дочь дьявола Йору: <color=0xffffffff>\\nДля начала принесите мне 10 цветков покоя. Но помните, что придется еще и разобраться с цветочными демонами, которые будут атаковать вас, когда прикоснетесь к цветку. Они готовы будут убить вас за свои цветы!");
        elseif( id == 20613)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20613,"<Font=arial,0,19,20><color=0xfffcf157>Дочь дьявола Йору: <color=0xffffffff>\\nВы собрали для меня <I>цветы покоя</I>. Как я собираюсь использовать их? Принесите мне <C>3</C> <I>сердца убийц</I> от членов секты жрецов с <N>Обломков небесной террасы</N>. Потом я дам вам ощутить этот удивительный аромат!");
        elseif( id == 20614)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20614,"<Font=arial,0,19,20><color=0xfffcf157>Дочь дьявола Йору: <color=0xffffffff>\\nНужно наказать жрецов секты! Они заслуживают самой жестокой расправы!");
	elseif( id == 20615)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20615,"<Font=arial,0,19,20><color=0xfffcf157>Дочь дьявола Йору: <color=0xffffffff>\\nХотите знать, что это?");	
	elseif( id == 20616)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20616,"<Font=arial,0,19,20><color=0xfffcf157>Дочь дьявола Йору: <color=0xffffffff>\\nЖрецы собираются возродить Аида Властителя ада! Если Аид возродится, не только люди, но и демоны будут уничтожены вместе с этими глупыми небожителями и жалкими сектантами!");
        elseif( id == 20617)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20617,"<Font=arial,0,19,20><color=0xfffcf157>Дочь дьявола Йору: <color=0xffffffff>\\nТеперь нас ждет Гора Луны и Солнца! Она сейчас захвачена <A>штормовыми рубаками</A> и <A>штормовыми прислужниками</A>. Такой жестокости я не видала больше ни у кого и нигде. Подумайте, прежде чем идти.");
	elseif( id == 20618)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20618,"<Font=arial,0,19,20><color=0xfffcf157>Дочь дьявола Йору: <color=0xffffffff>\\nВы доказали, что способны на многое. Впереди ждет еще более страшный враг. <N>Вершину Тусклого холма</N> захватил <color=0xffff0000>Резчик ветра<color=0xffffffff> и делает там все, что хочет. Похоже, он еще и похитил священные сокровища.");
	elseif( id == 20619)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20619,"<Font=arial,0,19,20><color=0xfffcf157>Дочь дьявола Йору: <color=0xffffffff>\\nПоищите <I>дрова</I>, а я разожгу костер. Давайте отдохнем немного.");
        elseif( id == 20620)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20620,"<Font=arial,0,19,20><color=0xfffcf157>Дочь дьявола Йору: <color=0xffffffff>\\nТеперь давайте приготовим еду!");
	elseif( id == 20621)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20621,"<Font=arial,0,19,20><color=0xfffcf157>Дочь дьявола Йору: <color=0xffffffff>\\nОтправляйтесь на юг! Говорят, там живут <D>люди-воители</D>.");	
	       
        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 20611)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20611,"<Font=arial,0,19,20><color=0xfffcf157>Дочь дьявола Йору: <color=0xffffffff>\\nХм, не знаю, можно ли вам доверять. Мне как раз нужна помощь.");
        elseif( id == 20612)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20612,"<Font=arial,0,19,20><color=0xfffcf157>Дочь дьявола Йору: <color=0xffffffff>\\nТеперь давайте посмотрим, на что вы способны.");
	elseif( id == 20613)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20613,"<Font=arial,0,19,20><color=0xfffcf157>Дочь дьявола Йору: <color=0xffffffff>\\nНевероятно! Это сектанты захватили сокровища самих демонов!");
	elseif( id == 20614)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20614,"<Font=arial,0,19,20><color=0xfffcf157>Дочь дьявола Йору: <color=0xffffffff>\\nОх! Вы нашли сокровища демонов?");
        elseif( id == 20615)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20615,"<Font=arial,0,19,20><color=0xfffcf157>Дочь дьявола Йору: <color=0xffffffff>\\nЭто <I>сердце Аида</I>! Ох, это действительно оно!");
	elseif( id == 20616)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20616,"<Font=arial,0,19,20><color=0xfffcf157>Дочь дьявола Йору: <color=0xffffffff>\\nУспокойтесь! Зачем куда-то ходить, тут еще полно работы.");
	elseif( id == 20617)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20617,"<Font=arial,0,19,20><color=0xfffcf157>Дочь дьявола Йору: <color=0xffffffff>\\nХм... Значит, они не видели сокровища демонов...");
	elseif( id == 20618)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20618,"<Font=arial,0,19,20><color=0xfffcf157>Дочь дьявола Йору: <color=0xffffffff>\\nЗначит, оно действительно у него... Ох...");
	elseif( id == 20619)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20619,"<Font=arial,0,19,20><color=0xfffcf157>Дочь дьявола Йору: <color=0xffffffff>\\nСлавно!");
	elseif( id == 20620)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20620,"<Font=arial,0,19,20><color=0xfffcf157>Дочь дьявола Йору: <color=0xffffffff>\\nЧто ж, спасибо вам!");
	
       end

end

Rmoziyl = {}
Rmoziyl["OnTalk"] = OnTalk
Rmoziyl["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rmoziyl["OnCompleteQuestTalk"] = OnCompleteQuestTalk