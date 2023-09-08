
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010031);
	Quest.SetCompleteOptions(5010031);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Путник:<color=0xffffffff><Font=arial,0,17,20>\\nКогда-то Пандора была красивым и безопасным краем, но с приходом армии Абсолема всё изменилось. Теперь сама природа причиняет вред людям! Обычные животные и растения превратились в ужасных монстров. Наша задача - разобраться в произошедших изменениях!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
       if( id == 20106)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20106,"<Font=arial,0,19,20><color=0xfffcf157>Путник:<color=0xffffffff><Font=arial,0,17,20>\\nИдите прямо на восток, и увидите <N>Тасрайн</N>. <D>Фаланс</D>, мой лучший помощник, уже исследует там местность. Помогите ему, чем сможете, но для начала поднимите свой уровень до <C>14</C>.");
        elseif( id == 20109)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20109,"<Font=arial,0,19,20><color=0xfffcf157>Путник:<color=0xffffffff><Font=arial,0,17,20>\\nТеперь вам необходимо достичь <C>16-го</C> уровня, прежде чем думать о том, чтобы идти к предводителю варваров. Эти могучие воины произошли из коренного населения Пандоры. Варвары презирают слабых, поскольку всю свою жизнь посвящают подготовке к будущей войне с демонами.");
        elseif( id == 20114)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20114,"<Font=arial,0,19,20><color=0xfffcf157>Путник:<color=0xffffffff><Font=arial,0,17,20>\\nПандора уже в безопасности, но есть одна проблема. Я расскажу вам о ней, когда вы поднимете свой уровень до <C>18</C>.");
		elseif( id == 20119)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20119,"<Font=arial,0,19,20><color=0xfffcf157>Путник:<color=0xffffffff><Font=arial,0,17,20>\\n Расправьтесь с Пещерными духами.");
        elseif( id == 20116)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20116,"<Font=arial,0,19,20><color=0xfffcf157>Путник:<color=0xffffffff><Font=arial,0,17,20>\\nПришло собщение из столицы!\\nКогда Ваш уровень достигнет <C>20-го</C>, явитесь в Тарио.");
        elseif( id == 40001)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40001,"<Font=arial,0,19,20><color=0xfffcf157>Путник:<color=0xffffffff><Font=arial,0,17,20>\\nКогда силы Элизиума пришли в наш мир и помогли отбросить демонов, архангел воззвал к природе Теоса, и та ответила на этот зов! Из гнева и боли мира родились <T>эльфы</T> - могущественные духи природы, готовые сопровождать героя в его странствиях. Эти хрупкие с виду существа обладают огромной силой и помогут вам на пути от рыцаря света до военачальника! Если вы поможете мне ещё раз, то я совершу ритуал и призову для вас двух <T>эльфов</T>.\\nСоберите <C>2</C> <I>остатка крови пикси</I>, а из <A>колдовских пикси</A> - <C>8</C> мер <I>порошка иллюзий</I> - и принесите всё это мне.");
        elseif( id == 40002)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40002,"<Font=arial,0,19,20><color=0xfffcf157>Путник:<color=0xffffffff><Font=arial,0,17,20>\\nПозволь мне рассказать об основных способностях <T>эльфа</T>:\\n<N>I. Вы должны призвать эльфа, потому, что только призванный эльф получает опыт.</N>\\n<A>II. Вы можете одновременно призвать только 1 эльфа.</A>\\n<D>III. Параметры эльфа можно видеть на панели параметров персонажа.</D>\\n<T>IV. Эльфы могут быть разных типов и могут развивать различные способности.</T>\\n<M>V. Эльфы не могут иметь уровень выше, чем уровень их хозяина.</M>\\nПоговорите с <D>эльфом Гатеа</D>, если хотите узнать больше об эльфах.");
        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
       
	if( id == 20105)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20105,"<Font=arial,0,19,20><color=0xfffcf157>Путник:<color=0xffffffff><Font=arial,0,17,20>\\nВы говорите, что это образцы плоти огров?  Неужели... Но эта плоть имеет свойства тела не огров, а представителей племени Олокаи! Они произошли из этих мест... Они могут быть одержимы демонической энергией! Вам нужно отправиться в Тасрайн для дальнейшего исследования ситуации.");
        elseif( id == 20108)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20108,"<Font=arial,0,19,20><color=0xfffcf157>Путник:<color=0xffffffff><Font=arial,0,17,20>\\nПохоже, красные огры становятся все более сильными и агрессивными.  Какая-то неведомая энергия влияет на них...");
        elseif( id == 20113)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20113,"<Font=arial,0,19,20><color=0xfffcf157>Путник:<color=0xffffffff><Font=arial,0,17,20>\\nВы действительно сразили <A>Лэсса</A>? Поразительно! Говорят, что он трехметрового роста и когти его прочнее железа! В Тарио скоро узнают о вашем подвиге, я лично за этим прослежу!");  
        elseif( id == 20114)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20114,"<Font=arial,0,19,20><color=0xfffcf157>Путник:<color=0xffffffff><Font=arial,0,17,20>\\nВы подняли уровень до <C>18</C> за такое короткое время!");  
	elseif( id == 20119)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20119,"<Font=arial,0,19,20><color=0xfffcf157>Путник:<color=0xffffffff><Font=arial,0,17,20>\\nТеперь Пещерные духи мертвы, Пандора снова в безопасности. Моя благодарность не знает границ! Спасибо вам! Возьмите награду.");  
	elseif( id == 40001)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40001,"<Font=arial,0,19,20><color=0xfffcf157>Путник:<color=0xffffffff><Font=arial,0,17,20>\\nТак как вы выполнили мои задания, возьмите от меня двух <T>эльфов</T> разных типов. Оба становятся теперь вашими. <T>Нажмите правой кнопкой мыши в своем инвентаре, чтобы призвать их</T>. Затем откройте <N>меню эльфа в меню персонажа</N>, чтобы увидеть <T>параметры эльфа</T>. Поздравляю! Они станут вашими хорошими помощниками!"); 
	elseif( id == 20216)then
					if( step == QuestTalkBegin )then
						Quest.ClearNPCTalkOptions();
						Quest.SetNPCTalkOption( EOT_CompleteQuest,20216,QuestTalkBegin+1,"Вы не находили поблизости игрушку Рори?" );
						Quest.NPCTalk(0,0,"Привет. Чем я могу тебе помочь?");	        
					elseif( step == QuestTalkBegin+1 )then
						Quest.UpdateQuest(20216);
					end
       end


end

Railina = {}
Railina["OnTalk"] = OnTalk
Railina["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Railina["OnCompleteQuestTalk"] = OnCompleteQuestTalk