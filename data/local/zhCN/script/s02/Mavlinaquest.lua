local function OnTalk()
	Quest.ClearNPCTalkOptions();    
	Quest.SetAcceptOptions(9010098);
	Quest.SetCompleteOptions(9010098);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Мавлина:<color=0xffffffff><Font=arial,0,17,20>\\nДобрый день, милейший.\\nВы пришли учить грамматику или арифметику?");
end


local function OnAcceptQuestTalk(id,step)
	if( id == 59010)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(59010,"<Font=arial,0,19,20><color=0xfffcf157>Мавлина:<color=0xffffffff><Font=arial,0,17,20>\\nЯ вижу, Вы уже вымыли руки и справились с грамматикой.\\nЯ готовлю своему старинному другу подарок, но бывает так, что даже я ошибаюсь в расчетах.\\nОкажите мне, пожалуйста,  услугу, милейший, принесите мне недостающие для подарка части, а взамен я открою вам тайну.");
	end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
	if( id == 59010)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(59010,"<Font=arial,0,19,20><color=0xfffcf157>Мавлина:<color=0xffffffff><Font=arial,0,17,20>\\nВы справились, теперь у меня есть все для того, чтобы создать подарок для моего друга Партамона.\\nКак я и обещала, милейший, я открою вам тайну:\\nВозможно Вы слышали историю о золотом ключе? Так вот, многие сейчас сбились с ног, разыскивая золотой ключик.\\nКлючик все это время находился у меня, но за то, что вы помогли мне, я с радостью отдам его вам.\\nЗачем он вам, я думаю, вы и сами без труда догадаетесь.\\nДо скорых встреч и не забывайте учить грамматику!");
	end
end

Mavlinaquest = {}
Mavlinaquest["OnTalk"] = OnTalk
Mavlinaquest["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Mavlinaquest["OnCompleteQuestTalk"] = OnCompleteQuestTalk