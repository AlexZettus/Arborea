
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010167);
	Quest.SetCompleteOptions(5010167);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Монат: <color=0xffffffff>\\nЭтим миром правят демоны! Демоны!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 20513)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20513,"<Font=arial,0,19,20><color=0xfffcf157>Монат: <color=0xffffffff>\\n<I>Грубые камни мага</I> - это настоящее сокровище. Их можно найти у камнестражей. Соберите мне как можно больше, но будьте готовы к встрече с <color=0xffff6000>элитными дикарями-воинами<color=0xffffffff>!");
        elseif( id == 20514)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20514,"<Font=arial,0,19,20><color=0xfffcf157>Монат: <color=0xffffffff>\\nО, да вы отлично держитесь! <A>Оборотни</A> и <A>духи волков</A> в <N>Пещере Волка</N> тоже носят с собой сокровища. Почему бы не отобрать их? Если вы думаете, что не справитесь с <color=0xffff6000>джунглевыми яростными волками<color=0xffffffff> и <color=0xffff6000>гигантскими болотными медведями<color=0xffffffff>, забудьте о сокровищах.");
        elseif( id == 20515)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20515,"<Font=arial,0,19,20><color=0xfffcf157>Монат: <color=0xffffffff>\\nНаши поселения подверглись нападениями чужаков! Кто посмел бросить вызов самим демонам? Хорошенький вопрос. Три непрошеных гостя посетили наши селения. Это <color=0xffff0000>воин Скайсикл<color=0xffffffff>， <color=0xffff0000>Небесный камнестраж<color=0xffffffff> и <color=0xffff0000>Тень ветра<color=0xffffffff>. Я не знаю, что их побудило напасть на нас, но мне это не нравится. Они должны почувствовать на своей шкуре, что такое ярость демонов!");
	elseif( id == 20516)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20516,"<Font=arial,0,19,20><color=0xfffcf157>Монат: <color=0xffffffff>\\n<D>Дочь дьявола Зефф</D> изучает сочетания камней и предметов. Она расскажет вам, как можно использовать <I>грубые камни магов</I> и <I>сути монстров</I>. Правда, она может решить, что вы недостаточно образованы. Советую вам поднять уровень до <C>76</C>, а потом она устроит вам маленький экзамен. ");
	
        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 20512)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20512,"<Font=arial,0,19,20><color=0xfffcf157>Монат: <color=0xffffffff>\\nЧто?! Я не верю своим глазам, что Монар прислал вас сюда.");
        elseif( id == 20513)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20513,"<Font=arial,0,19,20><color=0xfffcf157>Монат: <color=0xffffffff>\\nЖаль, что вы небожитель. У вас неплохо работают мозги. Не хотите присоединиться к нам?");
	elseif( id == 20514)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20514,"<Font=arial,0,19,20><color=0xfffcf157>Монат: <color=0xffffffff>\\nЕсли вы хотите узнать, как использовать два сокровища, нужно идти в пещеру снова.");
	elseif( id == 20515)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20515,"<Font=arial,0,19,20><color=0xfffcf157>Монат: <color=0xffffffff>\\nЭтот знак я уже где-то видел... Хм... Ах, знак жреца!");
       
   elseif( id == 30344)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30344,"<Font=arial,0,19,20><color=0xfffcf157>Монат：<color=0xffffffff>\\nВы оказались намного быстрее, чем я предполагал!");
   
	   end

end

RmonaTe = {}
RmonaTe["OnTalk"] = OnTalk
RmonaTe["OnAcceptQuestTalk"] = OnAcceptQuestTalk
RmonaTe["OnCompleteQuestTalk"] = OnCompleteQuestTalk