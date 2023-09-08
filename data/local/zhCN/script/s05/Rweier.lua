
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010095);
	Quest.SetCompleteOptions(5010095);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Гигантский медведь Уилл:<color=0xffffffff>\\nТот, кто вздумает охотиться на меня, сам станет добычей!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 20327)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20327,"<Font=arial,0,19,20><color=0xfffcf157>Гигантский медведь Уилл:<color=0xffffffff>\\nЗдесь много охотников, которые преследуют меня только ради забавы. Поможете мне наказать их?");
        elseif( id == 20328)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20328,"<Font=arial,0,19,20><color=0xfffcf157>Гигантский медведь Уилл:<color=0xffffffff>\\nСреди всех охотников меня интересуют самые искусные - они особенно опасны.");
        elseif( id == 20329)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20329,"<Font=arial,0,19,20><color=0xfffcf157>Гигантский медведь Уилл:<color=0xffffffff>\\nСреди этих охотников много демонов, а стражи Сноулэнда трусливы и слабы, так что вперед!");
        elseif( id == 20330)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20330,"<Font=arial,0,19,20><color=0xfffcf157>Гигантский медведь Уилл:<color=0xffffffff>\\nСпасибо вам за помощь! Идите к Нефритовому пруду, когда достигнете 44 уровня. Там вас будет ждать Богиня Теа.");
        elseif( id == 20346)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20346,"<Font=arial,0,19,20><color=0xfffcf157>Гигантский медведь Уилл:<color=0xffffffff>\\nВсе формы жизни в Сноулэнде сейчас под влиянием демонов, даже Король Сноулэнда. Тебе нужно уничтожить его, пока он не натворил делов. И обращайте внимание на подозрительные вещи в иных местах - изменилось ли что под влиянием демонических сил.");
	end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 20326)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20326,"<Font=arial,0,19,20><color=0xfffcf157>Гигантский медведь Уилл:<color=0xffffffff>\\nО вас мне говорила сама Фьюми! Я верю, вы поможете мне!");
        elseif( id == 20327)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20327,"<Font=arial,0,19,20><color=0xfffcf157>Гигантский медведь Уилл:<color=0xffffffff>\\nСпасибо вам огромное! Жму лапу!");
        elseif( id == 20328)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20328,"<Font=arial,0,19,20><color=0xfffcf157>Гигантский медведь Уилл:<color=0xffffffff>\\nОни заслужили это наказание! Р-р-р-р!");
        elseif( id == 20329)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20329,"<Font=arial,0,19,20><color=0xfffcf157>Гигантский медведь Уилл:<color=0xffffffff>\\nМожет быть, их зовут хранителями из-за их огромных размеров? Ну и хранители! Как смешно!");
       elseif( id == 20346)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20346,"<Font=arial,0,19,20><color=0xfffcf157>Гигантский медведь Уилл:<color=0xffffffff>\\nОтлично! Я доверяю вам! Дайте я вас обниму. Не надо? Ну, как хотите.");
       end

end

Rweier = {}
Rweier["OnTalk"] = OnTalk
Rweier["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rweier["OnCompleteQuestTalk"] = OnCompleteQuestTalk