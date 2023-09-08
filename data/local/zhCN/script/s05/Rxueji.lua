
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010090);
	Quest.SetCompleteOptions(5010090);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Алекс:<color=0xffffffff><Font=arial,0,17,20>\\nКак радостно видеть здесь героя!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 20309)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20309,"<Font=arial,0,19,20><color=0xfffcf157>Алекс:<color=0xffffffff><Font=arial,0,17,20>\\nМой брат Нил - исследователь этих земель. День назад он отправился в эту пещеру и не вернулся! Я боюсь, что он столкнулся там с чем-то ужасным! Прошу тебя, найди моего брата! О небо, надеюсь, что он ещё жив!");
        elseif( id == 20313)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20313,"<Font=arial,0,19,20><color=0xfffcf157>Алекс:<color=0xffffffff><Font=arial,0,17,20>\\nЯ только что получил сообщение от <D>Тилаа</D>. Он ждёт встречи с тобой в <N>Заснеженном Городе</N>, после того как ты достигнешь <C>36</C> уровня.");
	

        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 20308)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20308,"<Font=arial,0,19,20><color=0xfffcf157>Алекс:<color=0xffffffff><Font=arial,0,17,20>\\nЗдесь невероятно опасные места, герой. Нам всем нужна твоя помощь, и я надеюсь, что ты не боишься столкнуться с обитающим здесь злом!");
        elseif( id == 20312)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20312,"<Font=arial,0,19,20><color=0xfffcf157>Алекс:<color=0xffffffff><Font=arial,0,17,20>\\nСпасибо! Спасибо тебе огромное! Мой брат спасен! Что? Артефакт холода? Это отличная новость! Многие годы мы не могли добыть эту вещь. Твоя помощь неоценима! Я сделаю так, чтобы об этом подвиге узнали при дворе!");
	
       end

end

Rxueji = {}
Rxueji["OnTalk"] = OnTalk
Rxueji["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rxueji["OnCompleteQuestTalk"] = OnCompleteQuestTalk