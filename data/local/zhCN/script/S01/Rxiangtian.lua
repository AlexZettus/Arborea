
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010016);
	Quest.SetCompleteOptions(5010016);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Капитан Фритис:<color=0xffffffff><Font=arial,0,17,20>\\nПриветствую вас! На мне лежит ответственность за охрану Врат, ведущих в Тарио. Только те, кого я сочту достойными, смогут попасть в столицу Теоса.");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 20009)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20009,"<Font=arial,0,19,20><color=0xfffcf157>Капитан Фритис:<color=0xffffffff><Font=arial,0,17,20>\\nДавным давно Теос, Абсолем и Элизиум существовали в мире. Но однажды демоны Абсолема начали войну с Элизиумом. Проиграв там, они решили напасть на людей Теоса. Если бы не вмешательство сил Элизиума, люди были бы обречены на гибель! Главное сражение впереди, однако бои продолжаются и по сей день. Вы станете одним из героев, кто переломит ход битвы! Для этого предстоит многому научиться, а также получить хорошее снаряжение! Идите и поговорите с <color=0xff00ddbb>квартирмейстером Наланом<color=0xffffffff>.");
        elseif( id == 20011)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20011,"<Font=arial,0,19,20><color=0xfffcf157>Капитан Фритис:<color=0xffffffff><Font=arial,0,17,20>\\n<A>Призрачные пикси</A> ничуть не менее опасны, чем чарующие пикси. Они оскверняют это место  своим присутствием, их нужно убить! Я думаю, даже 6 штук сильно сократит их популяцию. Возвращайся, как закончишь.");
        elseif( id == 20012)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20012,"<Font=arial,0,19,20><color=0xfffcf157>Капитан Фритис:<color=0xffffffff><Font=arial,0,17,20>\\nТеперь вам следует идти на север от Стены Памяти и собрать <C>6</C> <I>частей надгробия</I>, вырвав из лап этих богомерзких существ - <A>черных призраков кельтиров</A>. Они выкапывают их из могил наших братьев и сестер. Можешь ли ты себе такое представить? Отнеси их <D>Григору</D>, он починит могилы наших предков.");
        elseif( id == 20018)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20018,"<Font=arial,0,19,20><color=0xfffcf157>Капитан Фритис:<color=0xffffffff><Font=arial,0,17,20>\\nТеперь отправляйтесь к <N>вратам на юго-восток</N>. Оттуда вы переместитесь в <N>Тарио</N>. Это наша последняя встреча, поэтому я хочу пожелать вам счастливого пути и удачи. Как только достигнете <color=0xffff0000>20<color=0xffffffff> уровня и выполните задание на подтверждение класса, вы станете истинным воином света!\\nВ Тарио сперва найдите <D>Синиду</D>. Она вам поможет освоиться.");
        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 20008)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20008,"<Font=arial,0,19,20><color=0xfffcf157>Капитан Фритис:<color=0xffffffff><Font=arial,0,17,20>\\nТяжёлые испытания ждут тех, кто выбрал своей судьбой защиту Теоса от грядущего вторжения. Здесь, возле Стены Памяти, раскрываются тайные силы, спящие в будущих героях нашего мира.");
        elseif( id == 20010)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20010,"<Font=arial,0,19,20><color=0xfffcf157>Капитан Фритис:<color=0xffffffff><Font=arial,0,17,20>\\nВы должны подготовиться к будущим  битвам. Поместите свои навыки в <S>панель навыков</S>, чтобы ими было легче пользоваться. Там же вы можете закрепить оздоравливающие зелья для восстановления ОЗ и ОМ.");	
        elseif( id == 20011)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20011,"<Font=arial,0,19,20><color=0xfffcf157>Капитан Фритис:<color=0xffffffff><Font=arial,0,17,20>\\nХорошо! Теперь мирные жители могут не бояться нападения призрачных пикси! С каждым шагом ваша сила растёт. И в этом нет ничего удивительного, ведь именно здесь получают новые силы будущие герои Теоса!");
        elseif( id == 20017)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20017,"<Font=arial,0,19,20><color=0xfffcf157>Капитан Фритис:<color=0xffffffff><Font=arial,0,17,20>\\nУ меня было предчувствие, что вы с легкостью завершите все задания. В таких, как вы, таится сила древних богов! В награду я дам вам полезные вещи, которые помогут вам в будущем  и сделают путь к получению звания воина света легче!");
       end

end

Rxiangtian = {}
Rxiangtian["OnTalk"] = OnTalk
Rxiangtian["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rxiangtian["OnCompleteQuestTalk"] = OnCompleteQuestTalk