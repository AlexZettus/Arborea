
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
	Quest.SetAcceptOptions(5010017);
	Quest.SetCompleteOptions(5010017);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157> Офицер Налан:<color=0xffffffff><Font=arial,0,19,20>\\nДо получения класса вы можете использовать оружие любого типа. Получить класс можно будет на 20-ом уровне.");

end


local function OnAcceptQuestTalk(id,step)--Если удалить задание, то его можно будет заново взять вручную.
        if( id == 20010)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20010,"<Font=arial,0,19,20><color=0xfffcf157> Офицер Налан:<color=0xffffffff><Font=arial,0,17,20>\\nПожалуйста, вернись к <color=0xff00ddbb>капитану Фритису<color=0xffffffff>. Он знает, как отличить настоящего воина от  простого человека, в котором нет ни капли божественной силы. Ничего не бойся, доверься ему.");
        elseif( id == 20017)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20017,"<Font=arial,0,19,20><color=0xfffcf157> Офицер Налан:<color=0xffffffff><Font=arial,0,19,20>\\nКогда ты достигнешь <A>10</A> уровня, найди <D>капитана Фритиса</D>, он пошлет тебя в наш главный город - <N>Тарио</N>，там ты сможешь по-настоящем начать свой путь война.");
        end
end


--после выбора меню заданий
local function OnCompleteQuestTalk(id,step)
        if( id == 20009)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20009,"<Font=arial,0,19,20><color=0xfffcf157> Офицер Налан:<color=0xffffffff><Font=arial,0,19,20>\\nОружие, доспехи и аксессуары классифицируются по цветам: белые, <color=0xffffff00>желтые<color=0xffffffff>, <color=0xff05ff00>зеленые<color=0xffffffff>, <color=0xff00a2ff>синие<color=0xffffffff>, <color=0xffffae00>оранжевые<color=0xffffffff>, <color=0xff9933ff>фиолетовые<color=0xffffffff> и <color=0xffff69b4>розовые<color=0xffffffff>. Белым цветом окрашены обычные предметы, а розовым - самые редкие.  Чем лучше снаряжение, тем выше твои способности.");
       end

end

fasilante = {}
fasilante["OnTalk"] = OnTalk
fasilante["OnAcceptQuestTalk"] = OnAcceptQuestTalk
fasilante["OnCompleteQuestTalk"] = OnCompleteQuestTalk