
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
	Quest.SetAcceptOptions(5010027);
	Quest.SetCompleteOptions(5010027);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Оракул Киран:<color=0xffffffff>\\nХм, мне нравится, что кандидатов в воины света становится все больше! ");

end


local function OnAcceptQuestTalk(id,step)--Если удалить задание, его снова можно будет получить вручную
    if( id == 20020)then
        Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20020,"<Font=arial,0,19,20><color=0xfffcf157>Оракул Киран:<color=0xffffffff>\\nНа просторах Теоса тебя может поджидать множество опасностей. Преодолеть их помогут верные боевые товарищи. Достигнув 20 уровня, ты можешь создать свою гильдию или вступить в уже существующую.");
	elseif( id == 20100)then
        Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20100,"Снаряжение в нашем опасном мире играет далеко не последнюю роль, а хорошие мастера кузнечного дела - на вес золота.");
	elseif( id == 20101)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20101,"Пришло время познакомиться с королем Марсом - правителем Тарио. Но перед этим мне бы хотелось сделать твой внешний вид чуть более презентабельным.");
	elseif( id == 20103)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20103,"Пришло время познакомить тебя с королем Марсом. Он поможет тебе выбрать класс.");
    end
end


--Настройки завершения заданий
local function OnCompleteQuestTalk(id,step)
        if( id == 20019)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20019,"<Font=arial,0,19,20><color=0xfffcf157>Оракул Киран:<color=0xffffffff>\\nПриветствую тебя. Я помогу тебе узнать больше о нашем мире, и совсем скоро он станет твоим домом.");
	elseif( id == 30867)then
		if( step == QuestTalkBegin )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30867,QuestTalkBegin+1,"ОК" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30867,QuestTalkBegin+2,"Вернуться" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Оракул Киран:<color=0xffffffff>\\n    Вы пришли поздравить меня? О, как приятно! Большое спасибо! Я тоже вас поздравляю! Желаю счастья!");	        
		elseif( step == QuestTalkBegin+1 )then
			Quest.UpdateQuest(30867);
		elseif( step == QuestTalkBegin+2 )then
			Quest.CloseNPCTalk();
		end
	elseif( id == 20024)then
	      Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20024,"Рад, что у тебя выдалась такая интересная прогулка по городу.");
	elseif( id == 20100)then
	      Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20100,"Мы чтим память о развитии ремесла нашего народа.");
	elseif( id == 20102)then
	      Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20102,"Я знал, что Грациана тебе это скажет. Она прекрасна в своих убеждениях.");
	end

end

Rjila = {}
Rjila["OnTalk"] = OnTalk
Rjila["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rjila["OnCompleteQuestTalk"] = OnCompleteQuestTalk