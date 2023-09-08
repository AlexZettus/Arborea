
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010026);
	Quest.SetCompleteOptions(5010026);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Синида:<color=0xffffffff>\\nТарио - сердце Теоса. Сюда стекаются люди со всего мира для торговли,  обмена опытом и развития классовых навыков. Добро пожаловать в легенду нашего  мира - город, построенный объединёнными силами Теоса и Элизиума.");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 20019)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20019,"<Font=arial,0,19,20><color=0xfffcf157>Синида:<color=0xffffffff>\\nВ твоём дальнейшем пути тебе поможет оракул Киран.");

        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 20018)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20018,"<Font=arial,0,19,20><color=0xfffcf157>Синида:<color=0xffffffff>\\nРада видеть вас в Тарио! Здесь вы можете найти все, что вам нужно!");
		elseif( id == 20011)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20011,"<Font=arial,0,19,20><color=0xfffcf157>Синида:<color=0xffffffff>\\nДобро пожаловать в небесный город - Тарио!");
       end

end

Rfengyu = {}
Rfengyu["OnTalk"] = OnTalk
Rfengyu["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rfengyu["OnCompleteQuestTalk"] = OnCompleteQuestTalk