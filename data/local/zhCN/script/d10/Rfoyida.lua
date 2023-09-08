
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010025);
	Quest.SetCompleteOptions(5010025);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Фрид:<color=0xffffffff><Font=arial,0,17,20>\\nНеобработанная руда необходима для любого производства. Её можно собирать в шахте с помощью кирки.");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 40011)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40011,"<Font=arial,0,19,20><color=0xfffcf157>Фрид:<color=0xffffffff><Font=arial,0,17,20>\\nВы можете собирать руду в <N>Шахте</N> только в <T>Районах добычи</T>.\\n<T>Достаньте из сумки кирку</T> и используйте её для добычи руды. Добывание руды будет приостановлено в следующих случаях: <T>Вы остановили добычу вручную</T> или <N>ваш инвентарь переполнен</N>.\\nВозьмите <I>кирку</I>, которую вы получили от меня, и соберите <C>6</C> кусков <I>необработанной руды</I>!");
        elseif( id == 40012)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40012,"<Font=arial,0,19,20><color=0xfffcf157>Фрид:<color=0xffffffff><Font=arial,0,17,20>\\nВы собрали немного <I>необработанной руды</I>. Теперь с помощью <T>навыка ремесла (найдите его в списке навыков) </T> сделайте из <I>необработанной руды</I> <C>2</C> слитка <I>чугуна [Ур. 1]</I> и передайте их <D>работодателю Роосу</D>.\\n\\n<T>Имейте в виду, что использование навыка ремесла отнимает у вас энергию. Посмотреть, сколько осталось энергии, можно в окне параметров. Энергия постепенно восстанавливается.</T>");
        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 40010)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40010,"<Font=arial,0,19,20><color=0xfffcf157>Фрид:<color=0xffffffff><Font=arial,0,17,20>\\nВы хотите изучить горное дело? Возьмите этот инструмент.");
        elseif( id == 40011)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40011,"<Font=arial,0,19,20><color=0xfffcf157>Фрид:<color=0xffffffff><Font=arial,0,17,20>\\nЕсли кирка от частого использования пришла в негодность, вы можете купить новую у <D>Коробейника</D>.");
        
       end


end

Rfoyida = {}
Rfoyida["OnTalk"] = OnTalk
Rfoyida["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rfoyida["OnCompleteQuestTalk"] = OnCompleteQuestTalk