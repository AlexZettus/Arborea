
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5610053);
	Quest.SetCompleteOptions(5610053);
	Quest.NPCTalk(0,0,"В этом году в моде черный шелк...");
end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 30793)then
			Quest.CloseNPCTalk();
		    Quest.AcceptQuestTalk(30793,"Тебя попросила прийти ко мне моя длинноногая младшая сестра? Я вспомнил, что скоро начнется праздник для холостяков и старых дев. В прошлом году я изготовил для сестренки бикини. Ей понравилось, а парням нет. Что ж, раз она и на этот раз туда идет, то помогу ей. Сестрица все-таки. Я попрошу тебя принести кой-какие материалы.");
        elseif( id == 30795)then
			Quest.CloseNPCTalk();
		    Quest.AcceptQuestTalk(30795,"Ага! Вижу по твоим глазам, что моя сестра тебе понравилась. Да, у нее прекрасная фигура! Она дала тебя свои мерки? О, тогда я начну шить, а ты мне расскажи что-нибудь интересное. Потом оценишь, хорошо получилось или нет.");
		elseif( id == 30816)then
			Quest.CloseNPCTalk();
		    Quest.AcceptQuestTalk(30816,"Я, конечно, должен помочь сделать одежду, но сейчас у меня нет настроения. Несколько дней назад я проезжал через Гору Смерти, и разбойники ограбили меня. Они забрали не так уж много денег, но все равно обидно. Помоги мне отомстить им, а потом и о деле поговорим.");
		elseif( id == 30817)then
			Quest.CloseNPCTalk();
		    Quest.AcceptQuestTalk(30817,"М-да, мне необходимы особые материал, чтобы я начал шить платье: клык великого зверя - 5 шт. [можно купить в магазине редкостей на Горе Смерти], мокрый болотный камень - 5 шт. [можно купить в магазине редкостей в Южных Топях], oгнекамень адской горы - 30 шт. [Добывается из монстров 80-84 уровня.]");
		elseif( id == 30818)then
			Quest.CloseNPCTalk();
		    Quest.AcceptQuestTalk(30818,"Вспомнил! Тебе еще необходимо принести мне улучшенное сверло, чтобы я мог подшлифовать материал в нескольких местах.");

	   end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 30793)then
              Quest.CloseNPCTalk();
	          Quest.CompleteQuestTalk(30793,"Неплохо, но нужно еще кое-что. Я брал мерки своей сестры год назад. Вдруг она с тех пор поправилась? Ну, или похудела, хотя вряд ли, конечно. В общем, сходи и измерь ее на всякий случай. А то сделаю платье, и оно ей придется не в пору.");
		elseif( id == 30795)then
		      if( not Quest.QuestCanComplete(30795) ) then
                    if( step == QuestTalkBegin )then
						Quest.ClearNPCTalkOptions();
						Quest.SetNPCTalkOption( EOT_CompleteQuest,30795,QuestTalkBegin+1,"Ну как, нравится?" );
			            Quest.NPCTalk(0,0,"Новая одежда хороша!");
					elseif( step == QuestTalkBegin + 1) then
					    Quest.UpdateQuest(30795);
					end
			  else
					Quest.CloseNPCTalk();
	                Quest.CompleteQuestTalk(30795,"А по-моему, это шедевр! Скорее отнеси сестричке померить!");
			  end

	   elseif( id == 30815)then
			Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(30815,"Что-то не так? Ты опять здесь. Надо переделать одежду? Ладно, иди-ка сними мерки с ее фигуры.");
       elseif( id == 30816)then
			Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(30816,"Спасибо! Руки сами сжимаются в кулаки, чтобы отомстить этим негодяям!");
       elseif( id == 30817)then
			Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(30817,"Отлично! Но нужно еще что-то...");
       elseif( id == 30818)then
			Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(30818,"Вот на этот раз действительно отлично! Готово, отнеси сестренке это платье!");

	   end
end

Rzhangsan = {}
Rzhangsan["OnTalk"] = OnTalk
Rzhangsan["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rzhangsan["OnCompleteQuestTalk"] = OnCompleteQuestTalk
