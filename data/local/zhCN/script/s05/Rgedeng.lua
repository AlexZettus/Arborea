
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010098);
	Quest.SetCompleteOptions(5010098);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель силы Гордон:<color=0xffffffff>\\nЗавидуете мне, что я такой сильный? Признайтесь!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 20337)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20337,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель силы Гордон:<color=0xffffffff>\\nНа этом пути слишком много демонических сирен.  Вы видели таких? Посмотрите, здесь их свежие следы. Давайте очистим дорогу от этих коварных тварей. ");
        elseif( id == 20338)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20338,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель силы Гордон:<color=0xffffffff>\\nУбейте несколько демонов в Этерхилле и затем поговорите с охотником Вильгельмом. Он расскажет вам, что делать дальше.");
     
        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 20336)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20336,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель силы Гордон:<color=0xffffffff>\\nВам нужно быть повнимательнее в этих местах!");
        elseif( id == 20337)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20337,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель силы Гордон:<color=0xffffffff>\\nВы все-таки сделали это!");

       

       end

end

Rgedeng = {}
Rgedeng["OnTalk"] = OnTalk
Rgedeng["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rgedeng["OnCompleteQuestTalk"] = OnCompleteQuestTalk