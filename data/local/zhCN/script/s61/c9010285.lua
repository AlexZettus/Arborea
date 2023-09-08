local function OnTalk()
	Quest.ClearNPCTalkOptions();
	Quest.SetAcceptOptions(9010285);
	Quest.SetCompleteOptions(9010285);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Грегориан<color=0xffffffff>\\nЕсли вы используете такого же питомца, как я, вы можете дополнительно использовать один из специальных талисманов. Без наличия активированного новогоднего питомца талисман использовать нельзя. Талисман сокровищ увеличивает шанс выпадения трофеев на 25%. Талисман богатства увеличивает количество золота, выпадающего при убийстве монстров, на 40%. Чтобы получить один из уникальных талисманов, обратитесь к Брадису.");
end

local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
    if( id == 52087)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52087,"<Font=arial,0,19,20><color=0xfffcf157>Грегориан<color=0xffffffff><Font=arial,0,17,20>\\nПринесите мне Заряд возможностей (8 шт.), его можно приобрести у Коробейника в Тарио (483 717). В благодарность за вашу помощь я позволю вам выбрать один из талисманов, увеличивающих дополнительные бонусы. Талисман можно использовать только в том случае, если у вас активирован один из новогодних питомцев из ассортимента премиум-магазина. Талисман сокровищ увеличивает шанс выпадения трофеев на 25%. Талисман богатства увеличивает количество золота, выпадающего при убийстве монстров, на 40%.");
    end
end

local function OnCompleteQuestTalk(id,step)
    if (id == 52087) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52087,"<Font=arial,0,19,20><color=0xfffcf157>Грегориан<color=0xffffffff><Font=arial,0,17,20>\\nХороших вам праздников!");
	end
end

c9010285 = {}
c9010285["OnTalk"] = OnTalk
c9010285["OnAcceptQuestTalk"] = OnAcceptQuestTalk
c9010285["OnCompleteQuestTalk"] = OnCompleteQuestTalk
