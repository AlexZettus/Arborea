local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5600018);
	Quest.SetCompleteOptions(5600018);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Индюшиный повелитель:<color=0xffffffff><Font=arial,0,17,20>\\nЯ повелитель всея индюшиного царства!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 30685)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30685,"<Font=arial,0,19,20><color=0xfffcf157>Индюшиный повелитель:<color=0xffffffff><Font=arial,0,17,20>\\nНет ничего лучше для новогоднего стола, чем запеченная индейка! Эти отвратительные высохшие куски ветчины постоянно убеждают всех, что они лучше, чем мы, для новогоднего ужина. Какой вздор! Пожалуйста, помогите мне избавиться от этой проклятой ветчины!");
        elseif( id == 30686)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30686,"<Font=arial,0,19,20><color=0xfffcf157>Индюшиный повелитель:<color=0xffffffff><Font=arial,0,17,20>\\nНет ничего лучше для новогоднего стола, чем запеченная индейка! Эти отвратительные высохшие куски ветчины постоянно убеждают всех, что они лучше, чем мы для новогоднего ужина. Какой вздор! Пожалуйста, помогите мне избавиться от этой проклятой ветчины!");
        elseif( id == 30687)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30687,"<Font=arial,0,19,20><color=0xfffcf157>Индюшиный повелитель:<color=0xffffffff><Font=arial,0,17,20>\\nНет ничего лучше для новогоднего стола, чем запеченная индейка! Эти отвратительные высохшие куски ветчины постоянно убеждают всех, что они лучше, чем мы, для новогоднего ужина. Какой вздор! Пожалуйста, помогите мне избавиться от этой проклятой ветчины!");
	elseif( id == 30688)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30688,"<Font=arial,0,19,20><color=0xfffcf157>Индюшиный повелитель:<color=0xffffffff><Font=arial,0,17,20>\\nНет ничего лучше для новогоднего стола, чем запеченная индейка! Эти отвратительные высохшие куски ветчины постоянно убеждают всех, что они лучше, чем мы, для новогоднего ужина. Какой вздор! Пожалуйста, помогите мне избавиться от этой проклятой ветчины!");

        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 30685)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30685,"<Font=arial,0,19,20><color=0xfffcf157>Индюшиный повелитель:<color=0xffffffff><Font=arial,0,17,20>\\nИндейка - самое настоящее украшение новогоднего стола, а ветчине место в мусорном ведре! Разве не так?");
        elseif( id == 30686)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30686,"<Font=arial,0,19,20><color=0xfffcf157>Индюшиный повелитель:<color=0xffffffff><Font=arial,0,17,20>\\nИндейка - самое настоящее украшение новогоднего стола, а ветчине место в мусорном ведре! Разве не так?");
	elseif( id == 30687)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30687,"<Font=arial,0,19,20><color=0xfffcf157>Индюшиный повелитель:<color=0xffffffff><Font=arial,0,17,20>\\nИндейка - самое настоящее украшение новогоднего стола, а ветчине место в мусорном ведре! Разве не так?");
	 elseif( id == 30688)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30688,"<Font=arial,0,19,20><color=0xfffcf157>Индюшиный повелитель:<color=0xffffffff><Font=arial,0,17,20>\\nИндейка - самое настоящее украшение новогоднего стола, а ветчине место в мусорном ведре! Разве не так?");
      
       end

end

Rhuoji = {}
Rhuoji["OnTalk"] = OnTalk
Rhuoji["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rhuoji["OnCompleteQuestTalk"] = OnCompleteQuestTalk