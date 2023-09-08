
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010019);
	Quest.SetCompleteOptions(5010019);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Эстер：<color=0xffffffff>\\nПрежде, чем врата Тарио откроются перед вами, вы должны доказать, что достойны звания воина света!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 20013)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20013,"<Font=arial,0,19,20><color=0xfffcf157>Эстер：<color=0xffffffff>\\nВ этих местах <A>древние призраки</A> наводят ужас на мирных жителей. Мне кажется, сражение с этими существами станет хорошим испытанием для будущего героя  и принесёт немало пользы живущим здесь людям! <D>Военачальник Аррас</D>, наделённый силой небес, ждёт тебя с вестью о победе в этом бою. Впереди же тебя ждёт испытание, которого достойны только лучшие из лучших!");
        elseif( id == 20016)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20016,"<Font=arial,0,19,20><color=0xfffcf157>Эстер：<color=0xffffffff>\\n<D>Квартирмейстер Розали</D> искал вас. Пожалуйста, отправляйтесь к нему.");
        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 20012)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20012,"<Font=arial,0,19,20><color=0xfffcf157>Эстер：<color=0xffffffff>\\nСлавно! Вы справились! Я верил в вас!");
        elseif( id == 20015)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20015,"<Font=arial,0,19,20><color=0xfffcf157>Эстер:<color=0xffffffff>\\nОтлично! Вы показали себя искусным бойцом и доказали, что достойны быть воином света!\\nПомните, что навыки нужно улучшать и изучать новые, когда поднимаете уровень!");
		elseif( id == 20027)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20027,"<Font=arial,0,19,20><color=0xfffcf157>Эстер：<color=0xffffffff>\\nМне говорили, что ты придёшь. Я могу помочь тебе добраться в Тарио. Нажми кнопку Завершить.");
       end

end

Rguyisa = {}
Rguyisa["OnTalk"] = OnTalk
Rguyisa["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rguyisa["OnCompleteQuestTalk"] = OnCompleteQuestTalk