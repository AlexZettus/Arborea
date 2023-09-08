
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010197);
	Quest.SetCompleteOptions(5010197);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Сборщица грибов:<color=0xffffffff><Font=arial,0,17,20>\\nКогда вы убиваете монстров в Пандоре, то в числе трофеев можете найти самые разные грибы. Собирайте их и приносите мне, если вам нужно будет обменять их на грибы какого-то определенного типа.");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 50001)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(50001,"<Font=arial,0,19,20><color=0xfffcf157>Сборщица грибов:<color=0xffffffff><Font=arial,0,17,20>\\nМеняю <C>2</C> <I>гриба гномов</I> на <C>1</C> <I>гигантский гриб</I>. Согласны?");
        elseif( id == 50002)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(50002,"<Font=arial,0,19,20><color=0xfffcf157>Сборщица грибов:<color=0xffffffff><Font=arial,0,17,20>\\nМеняю <C>2</C> <I>гигантских гриба</I> на <C>1</C> <I>мрачный гриб</I>. Согласны?");
        elseif( id == 50003)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(50003,"<Font=arial,0,19,20><color=0xfffcf157>Сборщица грибов:<color=0xffffffff><Font=arial,0,17,20>\\nМеняю <C>2</C> <I>мрачных гриба</I> на <C>2</C> <I>гриба жизни</I>. Согласны?");
	elseif( id == 50004)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(50004,"<Font=arial,0,19,20><color=0xfffcf157>Сборщица грибов:<color=0xffffffff><Font=arial,0,17,20>\\nМеняю <C>2</C> <I>гриба жизни</I> на <C>1</C> <I>гриб уничтожения</I>. Согласны?");
	end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 50001)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(50001,"<Font=arial,0,19,20><color=0xfffcf157>Сборщица грибов:<color=0xffffffff><Font=arial,0,17,20>\\nГигантские грибы делают вас больше!");
        elseif( id == 50002)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(50002,"<Font=arial,0,19,20><color=0xfffcf157>Сборщица грибов:<color=0xffffffff><Font=arial,0,17,20>\\nМрачные грибы восстанавливают ваши ОМ.");
        elseif( id == 50003)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(50003,"<Font=arial,0,19,20><color=0xfffcf157>Сборщица грибов:<color=0xffffffff><Font=arial,0,17,20>\\nГрибы жизни восстанавливают ваши ОЗ.");
        elseif( id == 50004)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(50004,"<Font=arial,0,19,20><color=0xfffcf157>Сборщица грибов:<color=0xffffffff><Font=arial,0,17,20>\\nГрибы уничтожения... Вы узнаете их эффект после того, как попробуете их. Хотя нет, не надо пробовать. Когда соберете 3 гриба уничтожения, идите к <D>Зомби-доктору</D> вон туда. Он коллекционирует их.");
       end

end

Rmogushoujiren = {}
Rmogushoujiren["OnTalk"] = OnTalk
Rmogushoujiren["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rmogushoujiren["OnCompleteQuestTalk"] = OnCompleteQuestTalk