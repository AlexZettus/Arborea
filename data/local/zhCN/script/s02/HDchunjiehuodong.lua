
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
	Quest.SetAcceptOptions(6040022);
	Quest.SetCompleteOptions(6040022);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Посланник Весны: <color=0xffffffff>\\nЯ счастлив приветствовать вас на празднике Новой Весны!");

end


local function OnAcceptQuestTalk(id,step)--Если удалить задание, его снова можно будет получить вручную
        if( id == 30867)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30867,"<Font=arial,0,19,20><color=0xfffcf157>Посланник Весны: <color=0xffffffff>\\n В этом году на Праздник Новой Весны пришло много народу! Что же делать? В <N> Деревне Панд </N> не хватает рабочих рук. Я очень занят, столько хлопот. Не могли бы вы поздравить от меня моих знакомых?");
        elseif( id == 30868)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30868,"<Font=arial,0,19,20><color=0xfffcf157>Посланник Весны: <color=0xffffffff>\\n В <N> Деревне Панд </N> не все товары к празднику были куплены. Помогите мне связаться с <D>Ромадаем</D> и сделать закупки в соответствии с прошлогодними списками товаров.");
        elseif( id == 30869)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30869,"<Font=arial,0,19,20><color=0xfffcf157>Посланник Весны: <color=0xffffffff>\\n Мне необходимо быстро изготовить несколько <I>Костюмов Праздника Весны</I>. Однако, у меня слишком мало материалов. Не могли бы вы убить для меня несколько <A>лис</A> и принести мне <I>лисьи шкурки</I>?");
        elseif( id == 30870)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30870,"<Font=arial,0,19,20><color=0xfffcf157>Посланник Весны: <color=0xffffffff>\\n У меня есть еще одна просьба! Несколько дней назад <D>Хозяин лавки питомцев</D> подарил мне зверька. Но <A>пикси</A> украли его у меня. Помогите мне его вернуть!");
        elseif( id == 30871)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30871,"<Font=arial,0,19,20><color=0xfffcf157>Посланник Весны: <color=0xffffffff>\\n Несколько дней назад <D>Хозяин лавки питомцев</D> пожаловался мне, что потерял <I>обручальное кольцо</I>. Не могли бы вы найти его? За это я дам вам дополнительную награду!");

	end
end


--Настройки завершения заданий
local function OnCompleteQuestTalk(id,step)
        if( id == 30867)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30867,"<Font=arial,0,19,20><color=0xfffcf157>Посланник Весны: <color=0xffffffff>\\n О, как быстро вы справились! Теперь и я должен поздравить вас!");
        elseif( id == 30868)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30868,"<Font=arial,0,19,20><color=0xfffcf157>Посланник Весны: <color=0xffffffff>\\n Вы уже разобрались с <D>Рамадаем</D>? Как хорошо! Теперь мы сможем организовать настоящий праздник!");
        elseif( id == 30869)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30869,"<Font=arial,0,19,20><color=0xfffcf157>Посланник Весны: <color=0xffffffff>\\n Какие чудесные костюмы, все по достоинству оценять их весеннее изящество! Только благодаря тебе я смог изготовить эти прекрасные <I>Костюмы Новой Весны</I>! Мне больше не придется беспокоиться о <I>Костюмах Новой Весны</I>!");
        elseif( id == 30870)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30870,"<Font=arial,0,19,20><color=0xfffcf157>Посланник Весны: <color=0xffffffff>\\n О, спасибо вас, что помогли мне вернуть моего звертка! Теперь надо вернуть его <D>Хозяину лавки питомцев</D>.");
        elseif( id == 30871)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30871,"<Font=arial,0,19,20><color=0xfffcf157>Посланник Весны: <color=0xffffffff>\\n Поздравляю вас! Вы настоящий счастливчик! Теперь вы можете войти на <N>Ковчег</N> и начать новое приключение!");

       end

end

HDchunjiehuodong = {}
HDchunjiehuodong["OnTalk"] = OnTalk
HDchunjiehuodong["OnAcceptQuestTalk"] = OnAcceptQuestTalk
HDchunjiehuodong["OnCompleteQuestTalk"] = OnCompleteQuestTalk