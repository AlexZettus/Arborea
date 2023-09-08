
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010074);
	Quest.SetCompleteOptions(5010074);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Страж Теоса:<color=0xffffffff>\\nНастали тяжелые времена, и самое страшное еще впереди!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 20107)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20107,"<Font=arial,0,19,20><color=0xfffcf157>Страж Теоса:<color=0xffffffff>\\nНаконец-то хоть кто-то пришел на помощь! Благодарю тебя! Я пытался разгадать причину изменений в растениях, когда обнаружил, что драконы-людоеды на <N>Грибном холме</N> стали вдруг одержимы какой-то непонятной яростной силой. Нам нужно уничтожить их, иначе быть беде!");
        elseif( id == 20108)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20108,"<Font=arial,0,19,20><color=0xfffcf157>Страж Теоса:<color=0xffffffff>\\nВокруг много злобных варваров. Нам нужно собрать несколько образцов их плоти для мастера иллюзий Карины. Это жуткие чудовища? Будь осторожнее!");
        elseif( id == 20118)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20118,"<Font=arial,0,19,20><color=0xfffcf157>Страж Теоса:<color=0xffffffff>\\nОтправляйся на Грибной холм. Там произошло что-то очень серьезное. Мне нужно знать, что именно. Поднимайся как можно выше и обследуй ту местность.");
        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 20106)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20106,"<Font=arial,0,19,20><color=0xfffcf157>Страж Теоса:<color=0xffffffff>\\nТебя прислала повелитель иллюзий Карина? Отлично!");
        elseif( id == 20107)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20107,"<Font=arial,0,19,20><color=0xfffcf157>Страж Теоса:<color=0xffffffff>\\nСпасибо! Увы, мы пока не можем точно сказать, когда сотрем их полностью с лица земли.");
        elseif( id == 20118)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20118,"<Font=arial,0,19,20><color=0xfffcf157>Страж Теоса:<color=0xffffffff>\\nЭта информация чрезвычайно важна!");
       end

end

Rfalansi = {}
Rfalansi["OnTalk"] = OnTalk
Rfalansi["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rfalansi["OnCompleteQuestTalk"] = OnCompleteQuestTalk