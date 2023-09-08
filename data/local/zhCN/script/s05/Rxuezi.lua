local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010226);
	Quest.SetCompleteOptions(5010226);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Снежное Дитя Цинцин:<color=0xffffffff><Font=arial,0,17,20>\\nТолько у нас вы можете увидеть настоящих снежных людей, о которых сложено столько легенд!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 50028)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(50028,"<Font=arial,0,19,20><color=0xfffcf157>Снежное Дитя Цинцин:<color=0xffffffff><Font=arial,0,17,20>\\nКого можно найти в снежных краях? Снежного человека, конечно! Да-да, здесь есть такие. Их называют <A>Супер Сновала</A>. Ох, они наводят такой страх на всю округу. Если встретите <A>Супер Сновал</A>, сделайте им вскрытие.");
        elseif( id == 50029)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(50029,"<Font=arial,0,19,20><color=0xfffcf157>Снежное Дитя Цинцин:<color=0xffffffff><Font=arial,0,17,20>\\nКого можно найти в снежных краях? Снежного человека, конечно! Да-да, здесь есть такие. Их называют <A>Супер Сновала</A>. Ох, они наводят страх на всю округу. Если встретите <A>Супер Сновал</A>, сделайте им вскрытие.");
        elseif( id == 50030)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(50030,"<Font=arial,0,19,20><color=0xfffcf157>Снежное Дитя Цинцин:<color=0xffffffff><Font=arial,0,17,20>\\nКого можно найти в снежных краях? Снежного человека, конечно! Да-да, здесь есть такие. Их называют <A>Супер Сновала</A>. Ох, они наводят такой страх на всю округу. Если встретите <A>Супер Сновал</A>, сделайте им вскрытие.");
        elseif( id == 50031)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(50031,"<Font=arial,0,19,20><color=0xfffcf157>Снежное Дитя Цинцин:<color=0xffffffff><Font=arial,0,17,20>\\nКого можно найти в снежных краях? Снежного человека, конечно! Да-да, здесь есть такие. Их называют <A>Супер Сновала</A>. Ох, они наводят такой страх на всю округу. Если встретите <A>Супер Сновал</A>, сделайте им вскрытие.");

        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 50028)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(50028,"<Font=arial,0,19,20><color=0xfffcf157>Снежное Дитя Цинцин:<color=0xffffffff><Font=arial,0,17,20>\\nО, да в вас погибает талант паталагоанатома! Отличная работа!");
       elseif( id == 50029)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(50029,"<Font=arial,0,19,20><color=0xfffcf157>Снежное Дитя Цинцин:<color=0xffffffff><Font=arial,0,17,20>\\nО, да в вас погибает талант паталагоанатома! Отличная работа!");
        elseif( id == 50030)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(50030,"<Font=arial,0,19,20><color=0xfffcf157>Снежное Дитя Цинцин:<color=0xffffffff><Font=arial,0,17,20>\\nО, да в вас погибает талант паталагоанатома! Отличная работа!");
        elseif( id == 50031)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(50031,"<Font=arial,0,19,20><color=0xfffcf157>Снежное Дитя Цинцин:<color=0xffffffff><Font=arial,0,17,20>\\nО, да в вас погибает талант паталагоанатома! Отличная работа!");
      end

end

Rxuezi = {}
Rxuezi["OnTalk"] = OnTalk
Rxuezi["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rxuezi["OnCompleteQuestTalk"] = OnCompleteQuestTalk