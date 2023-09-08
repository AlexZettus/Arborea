local function OnTalk()
	Quest.ClearNPCTalkOptions();    
	Quest.SetAcceptOptions(9010056);
	Quest.SetCompleteOptions(9010056);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Люси:<color=0xffffffff><Font=arial,0,17,20>\\nТолько 17 июня, с 00:05 до 23:55, Люси может единожды выдать вам подарочный набор Всеобщее ликование в честь дня рождения Blood and Soul. Подробнее о наборе можно узнать в новостной ленте gamenet.ru");
end


local function OnAcceptQuestTalk(id,step)
	if (id == 59043) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(59043,"<Font=arial,0,19,20><color=0xfffcf157>Люси:<color=0xffffffff><Font=arial,0,17,20>\\nДень рождения Blood and Soul - это праздник для всех жителей Теоса, не стесняйтесь поздравлять близких и боевых товарищей. Желаем вам отличного настроения и больше интересных приключений!");
	end
end

local function OnCompleteQuestTalk(id,step)
	if (id == 59043) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(59043,"<Font=arial,0,19,20><color=0xfffcf157>Люси:<color=0xffffffff><Font=arial,0,17,20>\\nПоздравляем вас с замечательным праздником - день рождения Blood and Soul. Желаем вам хорошего настроения и интересных приключений на просторах Теоса.");
	end
end

c9010056 = {}
c9010056["OnTalk"] = OnTalk
c9010056["OnAcceptQuestTalk"] = OnAcceptQuestTalk
c9010056["OnCompleteQuestTalk"] = OnCompleteQuestTalk