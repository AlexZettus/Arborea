
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5600101);
	Quest.SetCompleteOptions(5600101);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Кашевар:<color=0xffffffff>\\nВы знаете, как готовить кашу с орехами и сушеными фруктами?");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 30738)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30738,"<Font=arial,0,19,20><color=0xfffcf157>Кашевар:<color=0xffffffff>\\nПомогите мне собрать ингредиенты для приготовления каши, а потом я вас ей накормлю.");
	elseif( id == 30739)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30739,"<Font=arial,0,19,20><color=0xfffcf157>Кашевар:<color=0xffffffff>\\nМне нужно больше ингредиентов. Здесь же так много людей, и все хотят есть!");
	elseif( id == 30740)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30740,"<Font=arial,0,19,20><color=0xfffcf157>Кашевар:<color=0xffffffff>\\nПожалуйста, соберите больше ингредиентов.");
	elseif( id == 30741)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30741,"<Font=arial,0,19,20><color=0xfffcf157>Кашевар:<color=0xffffffff>\\nНужно изменить способ приготовления каши.");
	elseif( id == 30742)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30742,"<Font=arial,0,19,20><color=0xfffcf157>Кашевар:<color=0xffffffff>\\nВечером деньги - утром каша.");
	elseif( id == 30743)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30743,"<Font=arial,0,19,20><color=0xfffcf157>Кашевар:<color=0xffffffff>\\nА теперь последнее задание!");
        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 30738)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30738,"<Font=arial,0,19,20><color=0xfffcf157>Кашевар:<color=0xffffffff>\\nТак, уже можно начать готовить кашу.");
	elseif( id == 30739)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30739,"<Font=arial,0,19,20><color=0xfffcf157>Кашевар:<color=0xffffffff>\\nХм... Чего-то не хватает...");
	elseif( id == 30740)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30740,"<Font=arial,0,19,20><color=0xfffcf157>Кашевар:<color=0xffffffff>\\nОх, вы собрали так много всего!");
	elseif( id == 30741)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30741,"<Font=arial,0,19,20><color=0xfffcf157>Кашевар:<color=0xffffffff>\\nКонечно, такая каша вкуснее, чем обычная!");
	elseif( id == 30742)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30742,"<Font=arial,0,19,20><color=0xfffcf157>Кашевар:<color=0xffffffff>\\nУ вас губа - не дура. Такая каша понравится многим.");
	elseif( id == 30743)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30743,"<Font=arial,0,19,20><color=0xfffcf157>Кашевар:<color=0xffffffff>\\nЭта каша станет очень популярной!");
       end

end

Rlabachushi = {}
Rlabachushi["OnTalk"] = OnTalk
Rlabachushi["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rlabachushi["OnCompleteQuestTalk"] = OnCompleteQuestTalk