
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
	Quest.SetAcceptOptions(5010015);
	Quest.SetCompleteOptions(5010015);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Наставник Тед:<color=0xffffffff>\\nПред вами Стена Памяти. Здесь похоронены герои, павшие в битве  времен первого вторжения демонов. Жители Теоса возвели эту стену в память о жертве, принесенной в борьбе с захватчиками, а пришедший из Элизиума архангел наложил на нее чары, позволяющие душам павших героев незримо присутствовать здесь.");

end


local function OnAcceptQuestTalk(id,step)--Если удалить задание, то его можно будет заново выбрать вручную.
        if( id == 20007)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20007,"<Font=arial,0,19,20><color=0xfffcf157>Наставник Тед:<color=0xffffffff>\\nНемного южнее живут <A>чарующие пикси</A>. Питаясь, они вытягивают частички души из скрижалей падших! Убей четырех из них и возвращайся ко мне.");
        elseif( id == 20008)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20008,"<Font=arial,0,19,20><color=0xfffcf157>Наставник Тед:<color=0xffffffff>\\nСтупайте на восток и найдите пост охраны. Обратитесь к <color=0xff00ddbb>капитану Фритису<color=0xffffffff>, который охраняет небесные врата, что ведут в Тарио. Все кандидаты в воины света проходят испытания у капитана, однако пропуск в город получают только самые успешные. Удачи!");
        elseif( id == 20025)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20025,"<Font=arial,0,19,20><color=0xfffcf157>Наставник Тед:<color=0xffffffff>\\nВоинов света, которые пали в сражениях, хоронят здесь, а их имена в память о подвигах записывают на мемориальные таблички, и кристально чистые прохладные воды Вечного Источника Теоса омывают  их. Конечно, однажды и ваше имя будет написано на одной из таких табличек.  Идите вперед и отдайте дань памяти подвигам героев Теоса. Соберите частички души и возвращайтесь ко мне.");
        end
end


--после выбора меню заданий
local function OnCompleteQuestTalk(id,step)
        if( id == 20006)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20006,"<Font=arial,0,19,20><color=0xfffcf157>Наставник Тед:<color=0xffffffff>\\nЯ страж Стены Памяти. Помощь мне - одно из ваших испытательных заданий перед тем, как стать воином света.");
        elseif( id == 20007)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20007,"<Font=arial,0,19,20><color=0xfffcf157>Наставник Тед:<color=0xffffffff>\\nСлавно! Вы справились, кандидат. Теперь идите к Святой Могиле, чтобы получить новое задание! Удачи!");
        elseif( id == 20025)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20025,"<Font=arial,0,19,20><color=0xfffcf157>Наставник Тед:<color=0xffffffff>\\nХорошо. Теперь и вы отдали дань  памяти и уважения тем, кто пожертвовал своими жизнями во имя Теоса. Подойдите ко мне, и я совершу ритуал, позволяющий вам обрести силу и мудрость предков!");

       end

end

Rtaida = {}
Rtaida["OnTalk"] = OnTalk
Rtaida["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rtaida["OnCompleteQuestTalk"] = OnCompleteQuestTalk