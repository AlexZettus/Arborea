--预言者盖拉

local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5610001);
	Quest.SetCompleteOptions(5610001);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Гейл Провидец:<color=0xffffffff>\\nВы уже знаете про Святилище? В Лесу Теней, в Южных Топях и на Горе Смерти иногда можно найти вход в Святилище. Ворота эти - древний телепорт. От древности он стал плохо работать. Все, кто входит в Святилище должны помнить - через 40 минут они должны покинуть это место, иначе рискуют остаться там навсегда.\\nВ Святилище могут войти только игроки, достигшие 50 уровня.")
end

local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
--信仰之石
	if( id == 30308)then
	    Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30308,"<Font=arial,0,19,20><color=0xfffcf157>Гейл Провидец:<color=0xffffffff>\\nКамень веры необходим мне для трансформации силы веры, которую можно использовать. Соберите несколько камней веры, и я щедро вознагражу вас. \\n<T>Камень веры можно получить, убивая монстров и выполняя задания Списка розыска.</T>")
	end
	if( id == 30309)then
	    Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30309,"<Font=arial,0,19,20><color=0xfffcf157>Гейл Провидец:<color=0xffffffff>\\nКамень веры необходим мне для трансформации силы веры, которую можно использовать. Соберите несколько камней веры, и я щедро вознагражу вас. \\n<T>Камень веры можно получить, убивая монстров и выполняя задания Списка розыска.</T>")
	end
	if( id == 30310)then
	    Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30310,"<Font=arial,0,19,20><color=0xfffcf157>Гейл Провидец:<color=0xffffffff>\\nКамень веры необходим мне для трансформации силы веры, которую можно использовать. Соберите несколько камней веры, и я щедро вознагражу вас. \\n<T>Камень веры можно получить, убивая монстров и выполняя задания Списка розыска.</T>")
	end
	if( id == 30311)then
	    Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30311,"<Font=arial,0,19,20><color=0xfffcf157>Гейл Провидец:<color=0xffffffff>\\nКамень веры необходим мне для трансформации силы веры, которую можно использовать. Соберите несколько камней веры, и я щедро вознагражу вас. \\n<T>Камень веры можно получить, убивая монстров и выполняя задания Списка розыска.</T>")
	end
	if( id == 30312)then
	    Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30312,"<Font=arial,0,19,20><color=0xfffcf157>Гейл Провидец:<color=0xffffffff>\\nКамень веры необходим мне для трансформации силы веры, которую можно использовать. Соберите несколько камней веры, и я щедро вознагражу вас. \\n<T>Камень веры можно получить, убивая монстров и выполняя задания Списка розыска.</T>")
	end
	if( id == 30313)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30313,"<Font=arial,0,19,20><color=0xfffcf157>Гейл Провидец:<color=0xffffffff>\\nКамень веры необходим мне для трансформации силы веры, которую можно использовать. Соберите несколько камней веры, и я щедро вознагражу вас. \\n<T>Камень веры можно получить, убивая монстров и выполняя задания Списка розыска.</T>")
	end
	if( id == 30314)then
	    Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30314,"<Font=arial,0,19,20><color=0xfffcf157>Гейл Провидец:<color=0xffffffff>\\nКамень веры необходим мне для трансформации силы веры, которую можно использовать. Соберите несколько камней веры, и я щедро вознагражу вас. \\n<T>Камень веры можно получить, убивая монстров и выполняя задания Списка розыска.</T>")
	end
	if( id == 30315)then
	    Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30315,"<Font=arial,0,19,20><color=0xfffcf157>Гейл Провидец:<color=0xffffffff>\\nКамень веры необходим мне для трансформации силы веры, которую можно использовать. Соберите несколько камней веры, и я щедро вознагражу вас. \\n<T>Камень веры можно получить, убивая монстров и выполняя задания Списка розыска.</T>")
	end
--Очищенный камень

	if( id == 30316)then
	    Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30316,"<Font=arial,0,19,20><color=0xfffcf157>Гейл Провидец:<color=0xffffffff>\\nОчищенный камень - очень важный материал при работе с магией. Говорят, для его получения необходимо очистить камень проклятья с помощью зелья очищения.\\n<T>Камень проклятья может выпасть при убийстве любого монстра выше 40 уровня.</T>")
	end
	if( id == 30317)then
	    Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30317,"<Font=arial,0,19,20><color=0xfffcf157>Гейл Провидец:<color=0xffffffff>\\nОчищенный камень - очень важный материал при работе с магией. Говорят, для его получения необходимо очистить камень проклятья с помощью зелья очищения.\\n<T>Камень проклятья может выпасть при убийстве любого монстра выше 40 уровня.</T>")
	end
	if( id == 30318)then
	    Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30318,"<Font=arial,0,19,20><color=0xfffcf157>Гейл Провидец:<color=0xffffffff>\\nОчищенный камень - очень важный материал при работе с магией. Говорят, для его получения необходимо очистить камень проклятья с помощью зелья очищения.\\n<T>Камень проклятья может выпасть при убийстве любого монстра выше 40 уровня.</T>")
	end
	if( id == 30319)then
	    Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30319,"<Font=arial,0,19,20><color=0xfffcf157>Гейл Провидец:<color=0xffffffff>\\nОчищенный камень - очень важный материал при работе с магией. Говорят, для его получения необходимо очистить камень проклятья с помощью зелья очищения.\\n<T>Камень проклятья может выпасть при убийстве любого монстра выше 40 уровня.</T>")
	end
	if( id == 30320)then
	    Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30320,"<Font=arial,0,19,20><color=0xfffcf157>Гейл Провидец:<color=0xffffffff>\\nОчищенный камень - очень важный материал при работе с магией. Говорят, для его получения необходимо очистить камень проклятья с помощью зелья очищения.\\n<T>Камень проклятья может выпасть при убийстве любого монстра выше 40 уровня.</T>")
	end
	if( id == 30321)then
	    Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30321,"<Font=arial,0,19,20><color=0xfffcf157>Гейл Провидец:<color=0xffffffff>\\nОчищенный камень - очень важный материал при работе с магией. Говорят, для его получения необходимо очистить камень проклятья с помощью зелья очищения.\\n<T>Камень проклятья может выпасть при убийстве любого монстра выше 40 уровня.</T>")
	end
end

--После завершения задания
local function OnCompleteQuestTalk(id,step)
	if( id == 30308)then
	    Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30308,"<Font=arial,0,19,20><color=0xfffcf157>Гейл Провидец:<color=0xffffffff>\\nВпечатляет! Ты неплохо справился!")
	end
	if( id == 30309)then
	    Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30309,"<Font=arial,0,19,20><color=0xfffcf157>Гейл Провидец:<color=0xffffffff>\\nВпечатляет! Ты неплохо справился!")
	end
	if( id == 30310)then
	    Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30310,"<Font=arial,0,19,20><color=0xfffcf157>Гейл Провидец:<color=0xffffffff>\\nВпечатляет! Ты неплохо справился!")
	end
	if( id == 30311)then
	    Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30311,"<Font=arial,0,19,20><color=0xfffcf157>Гейл Провидец:<color=0xffffffff>\\nВпечатляет! Ты неплохо справился!")
	end
	if( id == 30312)then
	    Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30312,"<Font=arial,0,19,20><color=0xfffcf157>Гейл Провидец:<color=0xffffffff>\\nВпечатляет! Ты неплохо справился!")
	end
	if( id == 30313)then
	    Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30313,"<Font=arial,0,19,20><color=0xfffcf157>Гейл Провидец:<color=0xffffffff>\\nВпечатляет! Ты неплохо справился!")
	end
	if( id == 30314)then
	    Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30314,"<Font=arial,0,19,20><color=0xfffcf157>Гейл Провидец:<color=0xffffffff>\\nВпечатляет! Ты неплохо справился!")
	end
	if( id == 30315)then
	    Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30315,"<Font=arial,0,19,20><color=0xfffcf157>Гейл Провидец:<color=0xffffffff>\\nВпечатляет! Ты неплохо справился!")
	end
	if( id == 30316)then
	    Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30316,"<Font=arial,0,19,20><color=0xfffcf157>Гейл Провидец:<color=0xffffffff>\\nТы прекрасно справился, юноша!")
	end
	if( id == 30317)then
	    Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30317,"<Font=arial,0,19,20><color=0xfffcf157>Гейл Провидец:<color=0xffffffff>\\nТы прекрасно справился, юноша!")
	end
	if( id == 30318)then
	    Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30318,"<Font=arial,0,19,20><color=0xfffcf157>Гейл Провидец:<color=0xffffffff>\\nТы прекрасно справился, юноша!")
	end
	if( id == 30319)then
	    Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30319,"<Font=arial,0,19,20><color=0xfffcf157>Гейл Провидец:<color=0xffffffff>\\nТы прекрасно справился, юноша!")
	end
	if( id == 30320)then
	    Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30320,"<Font=arial,0,19,20><color=0xfffcf157>Гейл Провидец:<color=0xffffffff>\\nТы прекрасно справился, юноша!")
	end
	if( id == 30321)then
	    Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30321,"<Font=arial,0,19,20><color=0xfffcf157>Гейл Провидец:<color=0xffffffff>\\nТы прекрасно справился, юноша!")
	elseif( id == 40066)then
	    Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(40066,"<Font=arial,0,19,20><color=0xfffcf157>Гейл Провидец:<color=0xffffffff>\\nВы хотите получить еще больше очков веры? Я думаю, я смогу вам помочь.")
	end

end

Ryuyanzhegaila = {}
Ryuyanzhegaila["OnTalk"] = OnTalk
Ryuyanzhegaila["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Ryuyanzhegaila["OnCompleteQuestTalk"] = OnCompleteQuestTalk
