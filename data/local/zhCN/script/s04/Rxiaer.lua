
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010079);
	Quest.SetCompleteOptions(5010079);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Рори:<color=0xffffffff>\\nМой оазис... Он умирает...");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取 
        if( id == 20212)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20212,"<Font=arial,0,19,20><color=0xfffcf157>Рори:<color=0xffffffff>\\nЭто зелье для отслеживания <D>красноспинных драконов</D>. Они мутируют,  как и все в этих краях.  Демоны понимают, что это очень сильные мифические существа. Прежде у драконов были рога света, но теперь не осталось ничего, кроме тьмы.  Пожалуйста, уничтожьте этих мутировавших драконов и принесите мне <T>рог тьмы</T>.");
		elseif( id == 20221)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20221,"<Font=arial,0,19,20><color=0xfffcf157>Рори:<color=0xffffffff>\\nДжонас беспокоится о том, что происходит в этих местах. Идите и расскажите ему о том, что здесь творится. Обнадежьте его. Не надо, чтоб он сильно уж волновался.");
		elseif( id == 20215)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20215,"<Font=arial,0,19,20><color=0xfffcf157>Рори:<color=0xffffffff>\\nМне часто приходится отбиваться от Проклятых цветков. В последнее время они ведут себя очень агрессивно. Надеюсь, ты сможешь мне помочь.");
		elseif( id == 20216)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20216,"<Font=arial,0,19,20><color=0xfffcf157>Рори:<color=0xffffffff>\\nЯ потерял свою игрушку. Мне её так не хватает. Возможно, её видел кто-то из местных жителей.");
		elseif( id == 20217)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20217,"<Font=arial,0,19,20><color=0xfffcf157>Рори:<color=0xffffffff>\\nВозвращайся к Хранителю эльфов. Она по достоинству оценит твои заслуги перед жителями Пандоры.");
		end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 20212)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20212,"<Font=arial,0,19,20><color=0xfffcf157>Рори:<color=0xffffffff>\\nНа вас ни царапины! Удивительно! Как вам это удалось, ведь <D>красноспинных драконов</D> просто так не возьмешь!  Похоже, вам не составило труда достать этот рог.  Спасибо!");
		elseif( id == 20222)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20222,"<Font=arial,0,19,20><color=0xfffcf157>Рори:<color=0xffffffff>\\nСпасибо! Мне нужны сердца драконов, чтобы сделать из них удобрения, которые помогут возродить жизнь в этих местах.");
		elseif( id == 20214)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20214,"<Font=arial,0,19,20><color=0xfffcf157>Рори:<color=0xffffffff>\\nПривет. Давно ко мне не приходили люди. Тебя направила Даэва? Она очень добра ко мне. Когда-нибудь я вырасту и отправлюсь в собственное приключение, чтобы жители Пандоры могли гордиться мной.");
		elseif( id == 20215)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20215,"<Font=arial,0,19,20><color=0xfffcf157>Рори:<color=0xffffffff>\\nМне бы твою смелость. Спасибо, я в долгу не останусь.");
		elseif( id == 20216)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20216,"<Font=arial,0,19,20><color=0xfffcf157>Рори:<color=0xffffffff>\\nУра! А я уж думал, что больше её не увижу.");
       end

end

Rxiaer = {}
Rxiaer["OnTalk"] = OnTalk
Rxiaer["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rxiaer["OnCompleteQuestTalk"] = OnCompleteQuestTalk