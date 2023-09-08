
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
	Quest.SetAcceptOptions(5010016);
	Quest.SetCompleteOptions(5010016);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20>Застава лириков охраняет путь в Тарио - столицу Теоса. Мы знаем, что в вулкане на вершине этой горы расположен портал, через который демоны пробираются в наш мир. Мы должны любой ценой защитить жителей Тарио.");
end


local function OnAcceptQuestTalk(id,step)--Если удалить задание, то его можно будет заново выбрать вручную.
        if( id == 20009)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20009,"<Font=arial,0,19,20>Помоги нашим стражам отбить атаки демонов, чтобы выиграть немного времени до прибытия подмоги.");
        elseif( id == 20011)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20011,"<Font=arial,0,19,20>Кроме транспорта, в мире Теоса тебе будет помогать питомец, который будет собирать твои трофеи. Трофеями называют предметы, которые выпадают на землю при убийстве монстров. После принятия задания в твой инвентарь будет помещен питомец Енот Рико. Активируй его.");
        elseif( id == 20012)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20012,"<Font=arial,0,19,20>Отправляйся на север и убей <A>облачных странников</A>, чтобы получить частицу стихии. Получив <C>6</C> штук, отнеси их <D>Григору</D>.");
        elseif( id == 20018)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20018,"<Font=arial,0,19,20>Ты можешь отправиться<N>к северному телепорту</N>，войдя в телепорт,вы можете отправиться в великий <N>Тарио</N>. Надеюсь, ты добьешься еще больших успехов. Когда достигнешь<color=0xffff0000>20 уровня<color=0xffffffff>,если пройдешь задание на получение класса，то сможешь стать настоящим воином.\\nПосле того, как доберешься до Тарио,найди Синиду，она даст тебе дальнейшие указания.");
        end
end


--после выбора меню заданий
local function OnCompleteQuestTalk(id,step)
        if( id == 20008)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20008,"<Font=arial,0,19,20>Клайд был прав. Демоны напали на заставу лириков и отступать не собираются. Нам бы не помешала твоя помощь.");
        elseif( id == 20010)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20010,"<Font=arial,0,19,20>Вы должны подготовиться к будущим  битвам. Поместите свои навыки в <S>панель навыков</S>, чтобы ими было легче пользоваться. Там же вы можете закрепить зелья для восстановления очков здоровья и очков маны.");	
        elseif( id == 20011)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20011,"<Font=arial,0,19,20>Это было не сложно. Совсем скоро ты достигнешь 10 уровня и сможешь отправиться в Тарио. Продолжай в том же духе.");
        elseif( id == 20017)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20017,"<Font=arial,0,19,20>Я знаю, что ты в порядке, посмотри, я уже кое что приготовил для тебя. Эти вещи - мой подарок.");
	 elseif( id == 20026)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20026,"<Font=arial,0,19,20>Если у тебя есть лошадь, то ты сможешь стать еще сильнее!");
       end

end

tongshuaiyiwanfu = {}
tongshuaiyiwanfu["OnTalk"] = OnTalk
tongshuaiyiwanfu["OnAcceptQuestTalk"] = OnAcceptQuestTalk
tongshuaiyiwanfu["OnCompleteQuestTalk"] = OnCompleteQuestTalk