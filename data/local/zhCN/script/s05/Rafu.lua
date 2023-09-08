
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010093);
	Quest.SetCompleteOptions(5010093);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Аллу:<color=0xffffffff>\\n<P>Святой город</P> находится в таком месте, что даже демоны не знают о его существовании.");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 20320)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20320,"<Font=arial,0,19,20><color=0xfffcf157>Аллу:<color=0xffffffff>\\nЕсть дело для умелого воина. <T>Дикие волки</T> в округе поддались влиянию демонов, и я боюсь, что мы не можем помешать развитию их одержимости... Я прошу тебя взять миссию уничтожения этих животных на себя.");
        elseif( id == 20321)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20321,"<Font=arial,0,19,20><color=0xfffcf157>Аллу:<color=0xffffffff>\\nЭти монстры не просто так получили свое имя. С давних пор територию Южного предела населяли волки. Эти могучие создания долго сопротивлялись влиянию тьмы. Однако сейчас многие из них начали мутировать и превращаться в оборотней... К сожалению, мы не можем им помочь, поэтому кто-то должен положить конец их бренному существованию. <color=0xff05ff00>"..Quest.GetPlayerName().."<color=0xfffff7e0>, прошу тебя вновь продемонстрировать свое умение нести смерть.");
        elseif( id == 20322)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20322,"<Font=arial,0,19,20><color=0xfffcf157>Аллу:<color=0xffffffff>\\n<P>Святой город</P> надежно спрятан, так что демоны вряд ли доберутся сюда. Не беспокойтесь за нас. Когда вы достигнете <C>40</C> уровня, возвращайтесь в Тарио и поговорите с <T>Шерой</T>.");
 
        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 20319)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20319,"<Font=arial,0,19,20><color=0xfffcf157>Аллу:<color=0xffffffff>\\nМы рады видеть героя в наших краях! Этот город защищен силами света, его трудно найти, однако в последнее время до нас доносятся тревожные вести...");
        elseif( id == 20320)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20320,"<Font=arial,0,19,20><color=0xfffcf157>Аллу:<color=0xffffffff>\\nЯ благодарен тебе за то, что ты сделал. Жаль признавать, но пока мы вынуждены идти путем убийства для сохранения мира... Спасибо тебе!");
        elseif( id == 20321)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20321,"<Font=arial,0,19,20><color=0xfffcf157>Аллу:<color=0xffffffff>\\nСпасибо, герой! И прости меня за то, что я не смог предложить тебе миссии, более достойной благородного жителя Теоса. В столице узнают о твоих подвигах.");


       end

end

Rafu = {}
Rafu["OnTalk"] = OnTalk
Rafu["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rafu["OnCompleteQuestTalk"] = OnCompleteQuestTalk