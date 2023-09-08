
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010092);
	Quest.SetCompleteOptions(5010092);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Саэш:<color=0xffffffff>\\nЯ не знаю, как долго мы сможем терпеть все это. Демонов здесь все больше и больше!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 20315)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20315,"<Font=arial,0,19,20><color=0xfffcf157>Саэш:<color=0xffffffff>\\nНесколько <I>хранителей неба</I> были завлечены в ловушку и превратились в одержимых! К сожалению, мы не можем им ничем помочь. Необходимо убить этих несчастных, пока они не начали нападать на людей. Помоги нам...");
        elseif( id == 20316)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20316,"<Font=arial,0,19,20><color=0xfffcf157>Саэш:<color=0xffffffff>\\nОборотни наводнили наши края! Они убивают людей и день ото дня их становится все больше! Они уже полностью захватили западную часть Долины Белого Дракона. Наше оружие практически не действует на их защищенную могущественной магией плоть! Нужна твоя помощь, <color=0xff05ff00>"..Quest.GetPlayerName().."<color=0xfffff7e0>.");
        elseif( id == 20317)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20317,"<Font=arial,0,19,20><color=0xfffcf157>Саэш:<color=0xffffffff>\\nДо нас дошли тревожные вести! О твоих действиях узнал вожак стаи оборотней. Он и его сородичи явились сюда, чтобы отомстить. Мы еще не готовы столкнуться с такой угрозой!");
        elseif( id == 20318)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20318,"<Font=arial,0,19,20><color=0xfffcf157>Саэш:<color=0xffffffff>\\nДурные вести, мой друг. Среди падших хранителей неба нашлись те, кто принял эту долю добровольно! Судя по всему, именно они заманили своих собратьев в западню. Мы не можем оставаться равнодушными. Необходимо их уничтожить!");	
        elseif( id == 20319)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20319,"<Font=arial,0,19,20><color=0xfffcf157>Саэш:<color=0xffffffff>\\nДолина белого Дракона в безопасности. Пожалуйста, иди в <N>Святой город</N>, если ты уже достиг <C>38</C> уровня.");
        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 20314)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20314,"<Font=arial,0,19,20><color=0xfffcf157>Саэш:<color=0xffffffff>\\nНам нужно выполнить несколько важных заданий, герой. Я очень расчитываю на твою помощь!");
        elseif( id == 20315)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20315,"<Font=arial,0,19,20><color=0xfffcf157>Саэш:<color=0xffffffff>\\nУ тебя получилось сделать это? Спасибо огромное! Если бы не ты, неизвестно, что бы могло произойти.");
        elseif( id == 20316)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20316,"<Font=arial,0,19,20><color=0xfffcf157>Саэш:<color=0xffffffff>\\nВы справились? Теперь мы можем вздохнуть спокойнее. Пока оборотни востановят силы, мы сможем подготовить достойный ответ. Серебра у нас хватит на всех!");
        elseif( id == 20317)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20317,"<Font=arial,0,19,20><color=0xfffcf157>Саэш:<color=0xffffffff>\\nТы поражаешь меня своим мужеством! Мы не останемся в долгу. О твоем подвиге узнают все!");
        elseif( id == 20318)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20318,"<Font=arial,0,19,20><color=0xfffcf157>Саэш:<color=0xffffffff>\\nСвершилось правосудие! Я верю, что боги Теоса будут благосклонны к нам с этих пор!");

		elseif( id == 30337)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30337,"<Font=arial,0,19,20><color=0xfffcf157>Саэш：<color=0xffffffff>\\nА ты намного проворнее, чем я предполагал!");

	end

end

Ryuanhan = {}
Ryuanhan["OnTalk"] = OnTalk
Ryuanhan["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Ryuanhan["OnCompleteQuestTalk"] = OnCompleteQuestTalk