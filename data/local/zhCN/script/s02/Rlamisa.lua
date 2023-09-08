
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010086);
	Quest.SetCompleteOptions(5010086);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Мастер знаков Рамеса:<color=0xffffffff><Font=arial,0,17,20>\\nКогда руна уже прикреплена к предмету, ее сложно удалить. Это сделать можно только с помощью <I>нулевого камня</I>.");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 40037)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40037,"<Font=arial,0,19,20><color=0xfffcf157>Мастер знаков Рамеса:<color=0xffffffff><Font=arial,0,17,20>\\nКогда руна прикреплена к предмету, ее сложно удалить. Это сделать можно только с помощью <I>нулевого камня</I>.\\n<I>Нулевой камень</I> <T>удалит все руны из предмета</T>, поэтому будьте внимательны.\\nУбейте <A>Бестеневого</A>, и я дам вам <I>нулевой камень</I>.");
        elseif( id == 40038)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40038,"<Font=arial,0,19,20><color=0xfffcf157>Мастер знаков Рамеса:<color=0xffffffff><Font=arial,0,17,20>\\nПринесите мне <C>20</C> <I>камней усиления</I>, и я дам вам <I>руну 2  уровня</I>. Согласны?");
        elseif( id == 40039)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40039,"<Font=arial,0,19,20><color=0xfffcf157>Мастер знаков Рамеса:<color=0xffffffff><Font=arial,0,17,20>\\nНа этот раз будет тяжелее, но я надеюсь, что вы справитесь. Убейте <C>40</C> <A>элитных жрецов-адептов</A> и <C>40</C> </A>элитных жрецов-ассасинов</A>. Сможете сделать это?");
        elseif( id == 40040)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40040,"<Font=arial,0,19,20><color=0xfffcf157>Мастер знаков Рамеса:<color=0xffffffff><Font=arial,0,17,20>\\nКогда соберете <C>300</C> <I>тысячелетних первичных духов</I>, я дам вам <I>руну 4 уровня</I>.");
        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 40037)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40037,"<Font=arial,0,19,20><color=0xfffcf157>Мастер знаков Рамеса:<color=0xffffffff><Font=arial,0,17,20>\\nЗдорово! Вот ваш <I>нулевой камень</I>.");
        elseif( id == 40038)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40038,"<Font=arial,0,19,20><color=0xfffcf157>Мастер знаков Рамеса:<color=0xffffffff><Font=arial,0,17,20>\\nВаши усилия приносят результаты.");
        elseif( id == 40039)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40039,"<Font=arial,0,19,20><color=0xfffcf157>Мастер знаков Рамеса:<color=0xffffffff><Font=arial,0,17,20>\\nМы рады тому, что вы уже подобны небесным героям!");
        elseif( id == 40040)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40040,"<Font=arial,0,19,20><color=0xfffcf157>Мастер знаков Рамеса:<color=0xffffffff><Font=arial,0,17,20>\\nЭто должно быть сложно для вас.");
        elseif( id == 40036)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40036,"<Font=arial,0,19,20><color=0xfffcf157>Мастер знаков Рамеса:<color=0xffffffff><Font=arial,0,17,20>\\nПоявляется шанс неудачи при добавлении руны. Чем выше уровень усиления, тем ниже шанс успеха. \\nКогда улучшение проиводится с применением <T>рун,</T> в случае неудачи <T>руна будет разрушена</T>.");
       end

end

Rlamisa = {}
Rlamisa["OnTalk"] = OnTalk
Rlamisa["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rlamisa["OnCompleteQuestTalk"] = OnCompleteQuestTalk