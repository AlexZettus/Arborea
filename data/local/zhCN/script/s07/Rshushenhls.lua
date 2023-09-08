
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010164);
	Quest.SetCompleteOptions(5010164);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель деревьев Харланс: <color=0xffffffff>\\nМои леса - мое богатство!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 20501)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20501,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель деревьев Харланс: <color=0xffffffff>\\nДемоны посеяли здесь семена своих демонических цветов. Вид каждого <A>цветка</A> наполняет мое сердце скорбью. Вы хотите заслужить мое благоволение? Пожалуйста, избавьтесь от этих ужасных цветов!");
        elseif( id == 20502)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20502,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель деревьев Харланс: <color=0xffffffff>\\nДемоны добрались и сюда! Эти <A>джунглевые нападающие</A> принесли раздор в наш мирный уголок. Пожалуйста, отправьте их назад - прямо в ад!");
        elseif( id == 20503)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20503,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель деревьев Харланс: <color=0xffffffff>\\nТеперь мы должны бросить вызов еще более могучим порождениям ада!");
	elseif( id == 20504)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20504,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель деревьев Харланс: <color=0xffffffff>\\nЕсть место под названием <N>Древняя гора</N>. Если вам случится отправиться туда, найдите моего друга <D>Иросая</D>. Это очень умный человек. Может быть, он вам чем-нибудь пригодится.");
	
        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 20500)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20500,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель деревьев Харланс: <color=0xffffffff>\\nЯ догадываюсь, кто вас послал сюда. Король Марс.");
        elseif( id == 20501)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20501,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель деревьев Харланс: <color=0xffffffff>\\nЗдесь росли прекрасные, удивительные цветы. Когда-то росли...");
	elseif( id == 20502)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20502,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель деревьев Харланс: <color=0xffffffff>\\nТеперь перейдем к более важным вещам.");
	elseif( id == 20503)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20503,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель деревьев Харланс: <color=0xffffffff>\\nЯ чувствую спокойствие, когда вы здесь.");
       
	     elseif( id == 30343)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30343,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель деревьев Харланс:<color=0xffffffff>\\nВы оказались намного быстрее, чем я предполагал!");

       end

end

Rshushenhls = {}
Rshushenhls["OnTalk"] = OnTalk
Rshushenhls["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rshushenhls["OnCompleteQuestTalk"] = OnCompleteQuestTalk