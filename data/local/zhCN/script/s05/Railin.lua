
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010087);
	Quest.SetCompleteOptions(5010087);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Снежная леди Элин:<color=0xffffffff>\\nПриветствую вас!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 20301)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20301,"<Font=arial,0,19,20><color=0xfffcf157>Снежная леди Элин:<color=0xffffffff>\\nПрошу, не забывай о своей силе, герой! Однако чем больше у нас сила, тем больше и ответственность. Пожалуйста, отправляйся в <N>Заснеженный Город</N>. Тебя уже ждут там. Я желаю тебе удачи в пути. Будь осторожнее.");

        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 20300)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20300,"<Font=arial,0,19,20><color=0xfffcf157>Снежная леди Элин:<color=0xffffffff>\\nО, вы тот новый небожитель, о котором  мне рассказывал король? Он собирался отправить вас на Землю к людям. Но вы должны быть готовы к тому, что люди живут совсем не так, как мы в Теосе, так что подготовьтесь получше!");

       end

end

Railin = {}
Railin["OnTalk"] = OnTalk
Railin["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Railin["OnCompleteQuestTalk"] = OnCompleteQuestTalk