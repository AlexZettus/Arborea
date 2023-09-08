
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
	Quest.SetAcceptOptions(5010014);
	Quest.SetCompleteOptions(5010014);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Наставник Лурата:<color=0xffffffff>\\nНовичок! Когда в верхнем правом углу экрана закончится отсчет времени и начнет мигать слово Получить, нажми на него, чтобы получить подарок.");

end


local function OnAcceptQuestTalk(id,step)--Если удалить задание, то его можно будет заново выбрать вручную.
        if( id == 20005)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20005,"<Font=arial,0,19,20><color=0xfffcf157>Наставник Лурата:<color=0xffffffff>\\nЯ приготовил для тебя <I>набор новичка</I>. Нажми на нём <N>правую кнопку</N> мыши, чтобы открыть его и взять подарки.");
        elseif( id == 20006)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20006,"<Font=arial,0,19,20><color=0xfffcf157>Наставник Лурата:<color=0xffffffff>\\nСейчас тебе предстоит сразить более сильного противника! Символом доблести воина света считается магическая жемчужина мира призраков. Чтобы добыть её, нужно убить 4 <color=0xffffe289>больших призрака<color=0xffffffff>. Их тела хранят <color=0xff00a2ff>осколки жемчужины<color=0xffffffff>. Собери их и отнеси <color=0xff00ddbb>наставнику Теду<color=0xffffffff>.");
        end
end


--после выбора меню заданий
local function OnCompleteQuestTalk(id,step)
        if( id == 20004)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20004,"<Font=arial,0,19,20><color=0xfffcf157>Наставник Лурата:<color=0xffffffff>\\nСледующее испытание будет еще  сложнее, поэтому возьми <I>малое зелье исцеления</I> и <I>малое зелье маны</I>. Их нужно будет выпить перед тем, как иссякнут твои ОЗ и ОМ.");
        elseif( id == 20005)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20005,"<Font=arial,0,19,20><color=0xfffcf157>Наставник Лурата:<color=0xffffffff>\\nНе бойся расходовать содержимое набора новичка. На уровнях <A>6</A>, <A>11</A>, <A>16</A>... <A>56</A> и <A>60</A> ты будешь получать новый. Прими эти дары от меня и от жителей благодатного Теоса! Удачи, и пусть небеса благословят твой путь!");
       end

end

Rluola = {}
Rluola["OnTalk"] = OnTalk
Rluola["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rluola["OnCompleteQuestTalk"] = OnCompleteQuestTalk