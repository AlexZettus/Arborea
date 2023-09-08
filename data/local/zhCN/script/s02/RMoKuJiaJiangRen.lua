
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetCompleteOptions(5510503);
	Quest.SetAcceptOptions(5510503);
	Quest.NPCTalk(0,0,"Проводник Логова зверя: Каждый день в 14:00, 18:00, 22:00 открываются Врата Логова зверя. Каждый может в течение ивента попасть в Логово зверя, уничтожить босса и получить у меня награду.");

end

local function OnAcceptQuestTalk(id,step)
    if ( id == 52121) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52121,"Начиная с 60 уровня, за убийство Демонического вождя в Логове Зверя, вы будете получать Неопознанные плоды. Принесите мне 10 таких плодов, чтобы обменять их на Корзину с розовыми плодами. Внимание: вы будете получать плоды только с принятым заданием. Максимальное кол-во неопознанных плодов в инвентаре - 10 шт.");
    end
end

--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
    if( id == 30301)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30301,"Проводник Логова зверя: Вот ваша награда!");
	elseif (id == 52121) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52121,"Проводник Логова зверя: Вот ваша награда!");
    end

end

RMoKuJiaJiangRen = {}
RMoKuJiaJiangRen["OnTalk"] = OnTalk
RMoKuJiaJiangRen["OnAcceptQuestTalk"] = OnAcceptQuestTalk
RMoKuJiaJiangRen["OnCompleteQuestTalk"] = OnCompleteQuestTalk
