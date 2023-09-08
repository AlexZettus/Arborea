
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010166);
	Quest.SetCompleteOptions(5010166);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Монар: <color=0xffffffff>\\nДемоны изголодались! Они хотят на ужин души людей! ");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 20509)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20509,"<Font=arial,0,19,20><color=0xfffcf157>Монар: <color=0xffffffff>\\nВы ищете ответы на свои вопросы? Я не скажу вам ничего, кроме того, что вы, гость в мире демонов, сначала должны заслужить репутацию у демонов. Вы знаете, кто наши враги, не так ли? Ассасины из мира богов должны быть изгнаны отсюда!");
        elseif( id == 20510)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20510,"<Font=arial,0,19,20><color=0xfffcf157>Монар: <color=0xffffffff>\\nВидите тех <A>змей</A>? Все они искажены и превращаются в ничто. Когда закончите свою работу, я расскажу, кто приложил к этому руку.");
        elseif( id == 20511)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20511,"<Font=arial,0,19,20><color=0xfffcf157>Монар: <color=0xffffffff>\\nТак, а теперь нужно разобраться с <A>крокодилами</A> на болотах.");
	elseif( id == 20512)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20512,"<Font=arial,0,19,20><color=0xfffcf157>Монар: <color=0xffffffff>\\n<N>Пещера Волка</N> набита сокровищами. Конечно, пещерные обитатели не будут в восторге, если мы захотим забрать эти сокровища себе. Когда ваш уровень поднимется до <C>72</C>, на входе в пещеру найдите <D>Моната</D> .");
	
        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 20508)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20508,"<Font=arial,0,19,20><color=0xfffcf157>Монар: <color=0xffffffff>\\nЧто?! Лазутчик из мира богов? Вам уже надоела жизнь?");
        elseif( id == 20509)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20509,"<Font=arial,0,19,20><color=0xfffcf157>Монар: <color=0xffffffff>\\nНе доверяю я вам...");
	elseif( id == 20510)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20510,"<Font=arial,0,19,20><color=0xfffcf157>Монар: <color=0xffffffff>\\nПохоже, вы действительно хотите что-то знать. Но это не принесет вам никакой пользы.");
	elseif( id == 20511)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20511,"<Font=arial,0,19,20><color=0xfffcf157>Монар: <color=0xffffffff>\\nНеплохо!");
       
       end

end

Rmonaer = {}
Rmonaer["OnTalk"] = OnTalk
Rmonaer["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rmonaer["OnCompleteQuestTalk"] = OnCompleteQuestTalk