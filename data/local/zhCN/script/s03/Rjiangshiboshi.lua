
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010198);
	Quest.SetCompleteOptions(5010198);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Зомби-доктор:<color=0xffffffff><Font=arial,0,17,20>\\nНе бывать миру между зомби и растениями! Никогда!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 50005)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(50005,"<Font=arial,0,19,20><color=0xfffcf157>Зомби-доктор:<color=0xffffffff><Font=arial,0,17,20>\\nЯ ненавижу эти мерзкие грибы уничтожения! Они разрушают меня! Дайте мне <C>3</C> <I>гриба уничтожения</I>, и получите взамен малое зелье зомби. Но я могу менять зелье только <T>1 раз в день</T>.");
        elseif( id == 50006)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(50006,"<Font=arial,0,19,20><color=0xfffcf157>Зомби-доктор:<color=0xffffffff><Font=arial,0,17,20>\\nЧто? <I>Малое зелье зомби</I> не очень эффективно? Тогда давайте мне 5 грибов, и я обменяю их на <I>1 улучшенное зелье зомби</I>!");
	end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 50005)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(50005,"<Font=arial,0,19,20><color=0xfffcf157>Зомби-доктор:<color=0xffffffff><Font=arial,0,17,20>\\nТаааак... Приготовить? Ага, сейчас... Вот ваше <I>малое зелье зомби</I>. Готово. Возьмите!");
        elseif( id == 50006)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(50006,"<Font=arial,0,19,20><color=0xfffcf157>Зомби-доктор:<color=0xffffffff><Font=arial,0,17,20>\\nНадеюсь, вы скоро вступите в легион зомби! Да, пока я в нем один, но скоро нас будет много! Много! Очень много!");
       end

end

Rjiangshiboshi = {}
Rjiangshiboshi["OnTalk"] = OnTalk
Rjiangshiboshi["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rjiangshiboshi["OnCompleteQuestTalk"] = OnCompleteQuestTalk