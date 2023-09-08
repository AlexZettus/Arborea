
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5600063);
	Quest.SetCompleteOptions(5600063);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель свадебных заданий<color=0xffffffff><Font=arial,0,17,20>\\nПрошу принять мои наилучшие пожелания! Я искренне верю в то, что вы будете жить в мире и согласии до конца своих дней и никогда не будете предавать друг друга!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 30377)then
                Quest.CloseNPCTalk();
								Quest.AcceptQuestTalk(30377,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель свадебных заданий:<color=0xffffffff><Font=arial,0,17,20>\\nВы чувствуете себя счастливым? Если да，крепко обнимите свою вторую половину! Только не смущайтесь! Мы все будем молиться за вас!");
        elseif( id == 30378)then
                Quest.CloseNPCTalk();
								Quest.AcceptQuestTalk(30378,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель свадебных заданий:<color=0xffffffff><Font=arial,0,17,20>\\nВы всегда должны доверять друг другу, всегда поддерживать друг друга. Желаю вам, в мире и согласии дожить до седых волос. Пусть ваша жизнь будет по-настоящему счатливой! Эх, как бы я хотел оказаться на месте одного из вас!");

        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 30377)then
				      Quest.CloseNPCTalk();
				      Quest.CompleteQuestTalk(30377,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель свадебных заданий:<color=0xffffffff><Font=arial,0,17,20>\\nРаздайте эти вещи вашим самым близким друзьям.");
       elseif( id == 30378)then
				      Quest.CloseNPCTalk();
				      Quest.CompleteQuestTalk(30378,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель свадебных заданий:<color=0xffffffff><Font=arial,0,17,20>\\nБлагодаря этим вещам мы сможем предсказать ваше будущее.");

       end


end

Rjhrwfbr = {}
Rjhrwfbr["OnTalk"] = OnTalk
Rjhrwfbr["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rjhrwfbr["OnCompleteQuestTalk"] = OnCompleteQuestTalk
