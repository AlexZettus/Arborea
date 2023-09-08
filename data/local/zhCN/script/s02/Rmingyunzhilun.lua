
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5511015);
	Quest.SetCompleteOptions(5511015);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Страж Колеса Судьбы:<color=0xffffffff>\\nЕсли найдете <I>Жемчужину</I> и <I>Свиток судьбы</I>, то можете обменять их у меня на <color=0xffff80ff>Колесо судьбы<color=0xffffffff>.");
end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 30113)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30113,"<Font=arial,0,19,20><color=0xfffcf157>Страж Колеса Судьбы:<color=0xffffffff>\\nХотите получить Колесо судьбы? Тогда принесите <I>20 Жемчужин</I> и <I>Свиток судьбы</I>, и я поменяю их вам на <C>1</C> <color=0xffff80ff>Колесо судьбы<color=0xffffffff>.");
        elseif( id == 30114)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30114,"<Font=arial,0,19,20><color=0xfffcf157>Страж Колеса Судьбы:<color=0xffffffff>\\nХотите получить колесо судьбы? Тогда принесите <I>90 Жемчужин</I> и <I>5 Свитоков судьбы</I>, и я поменяю их вам на <C>5</C> <color=0xffff80ff>Колес судьбы<color=0xffffffff>.");
        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 30113)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30113,"<Font=arial,0,19,20><color=0xfffcf157>Страж Колеса Судьбы:<color=0xffffffff>\\nДоброго пути!");
        elseif( id == 30114)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30114,"<Font=arial,0,19,20><color=0xfffcf157>Страж Колеса Судьбы:<color=0xffffffff>\\nДоброго пути!");
	
       end

end

Rmingyunzhilun = {}
Rmingyunzhilun["OnTalk"] = OnTalk
Rmingyunzhilun["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rmingyunzhilun["OnCompleteQuestTalk"] = OnCompleteQuestTalk