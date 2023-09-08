
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
	Quest.SetAcceptOptions(6040024);	
	Quest.SetCompleteOptions(6040024);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Посланник Добра:<color=0xffffffff>\\nПраздник Весны наступил! Я принес вам много подарков! Желаю вам бесчисленного богатства!");

end


local function OnAcceptQuestTalk(id,step)--Если удалить задание, его снова можно будет получить вручную
        if( id == 30862)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30862,"<Font=arial,0,19,20><color=0xfffcf157>Посланник Добра:<color=0xffffffff>\\n По всем приметам год будет благодатным! Вы видели <I><I>Рог изобилия</I></I>? Сходите проверьте! Если у вас будет достаточно Форнуты, я помогу вам получить настоящие сокровища!");
        elseif( id == 30863)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30863,"<Font=arial,0,19,20><color=0xfffcf157>Посланник Добра:<color=0xffffffff>\\nА, <I>Рог изобилия</I> не так уж легко открыть. Я дам вам  ключ, но сначала вы должны мне помочь. Это <I>семена дерева богатства</I>. Помогите мне ухаживать за ними. А потом убейте духа богатства, хорошо?");
        elseif( id == 30864)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30864,"<Font=arial,0,19,20><color=0xfffcf157>Посланник Добра:<color=0xffffffff>\\nА, <I>Рог изобилия</I> не так уж легко открыть. Я дам вам  ключ, но сначала вы должны мне помочь. Это <I>семена дерева богатства</I>. Помогите мне ухаживать за ними. А потом убейте духа богатства, хорошо?");
        elseif( id == 30865)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30865,"<Font=arial,0,19,20><color=0xfffcf157>Посланник Добра:<color=0xffffffff>\\nА, <I>Рог изобилия</I> не так уж легко открыть. Я дам вам  ключ, но сначала вы должны мне помочь. Это <I>семена дерева богатства</I>. Помогите мне ухаживать за ними. А потом убейте духа богатства, хорошо?");
        elseif( id == 30866)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30866,"<Font=arial,0,19,20><color=0xfffcf157>Посланник Добра:<color=0xffffffff>\\nА, <I>Рог изобилия</I> не так уж легко открыть. Я дам вам  ключ, но сначала вы должны мне помочь. Это <I>семена дерева богатства</I>. Помогите мне ухаживать за ними. А потом убейте духа богатства, хорошо?");

	end
end


--Настройки завершения заданий
local function OnCompleteQuestTalk(id,step)
        if( id == 30862)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30862,"<Font=arial,0,19,20><color=0xfffcf157>Посланник Добра:<color=0xffffffff>\\nХа-ха, молодеж! Фортуны у вас более чем достаточно! Защита мира и спокойствия - большая ответственность. Дарю вам это сокровище! Что? Мало?");
        elseif( id == 30863)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30863,"<Font=arial,0,19,20><color=0xfffcf157>Посланник Добра:<color=0xffffffff>\\nХа-ха, молодеж! Действительно, сказано - сделано! Возьмите ключ и откройте <I>Рог изобилия</I>. Поздравляю!");
        elseif( id == 30864)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30864,"<Font=arial,0,19,20><color=0xfffcf157>Посланник Добра:<color=0xffffffff>\\nХа-ха, молодеж! Действительно, сказано - сделано! Возьмите ключ и откройте <I>Рог изобилия</I>. Поздравляю!");
        elseif( id == 30865)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30865,"<Font=arial,0,19,20><color=0xfffcf157>Посланник Добра:<color=0xffffffff>\\nХа-ха, молодеж! Действительно, сказано - сделано! Возьмите ключ и откройте <I>Рог изобилия</I>. Поздравляю!");
        elseif( id == 30866)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30866,"<Font=arial,0,19,20><color=0xfffcf157>Посланник Добра:<color=0xffffffff>\\nХа-ха, молодеж! Действительно, сказано - сделано! Возьмите ключ и откройте <I>Рог изобилия</I>. Поздравляю!");

       end

end

HDshancaishizhe = {}
HDshancaishizhe["OnTalk"] = OnTalk
HDshancaishizhe["OnAcceptQuestTalk"] = OnAcceptQuestTalk
HDshancaishizhe["OnCompleteQuestTalk"] = OnCompleteQuestTalk