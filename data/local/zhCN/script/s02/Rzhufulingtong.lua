local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить выбор в окне диалога
	Quest.SetAcceptOptions(5610063);
	Quest.SetCompleteOptions(5610063);
	Quest.NPCTalk(0,0,"<font=Dragon Font,0,19,20><color=0xfffcf157>Чудо-ребенок:<color=0xffffffff><font=Dragon Font,0,17,20>\\n Стяг со звездами реет по ветру, песня победы так хороша...");

end


local function OnAcceptQuestTalk(id,step)--Если отменить задание, можно принять его заново вручную.
        if( id == 30831)then
			Quest.CloseNPCTalk();
		 Quest.AcceptQuestTalk(30831,"<font=Dragon Font,0,19,20><color=0xfffcf157> Чудо-ребенок:<color=0xffffffff><font=Dragon Font,0,17,20>\\n Я потерял праздничный фейерверк, пока гулял. Что мне делать? Учитель рассердится и накажет меня. У тебя доброе лицо, может, ты мне поможешь отыскать фейерверк? Я от души отблагодарю тебя!");
        elseif( id == 30832)then
			Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(30832,"<font=Dragon Font,0,19,20><color=0xfffcf157> Чудо-ребенок:<color=0xffffffff><font=Dragon Font,0,17,20>\\n Во время праздника Независимости игроки с ур. 30 и выше могут получить у меня подарки. Только во время праздника!");
		end
end


--Нажать после выбора задания
local function OnCompleteQuestTalk(id,step)
        if( id == 30831)then
			Quest.CloseNPCTalk();
	 Quest.CompleteQuestTalk(30831,"<font=Dragon Font,0,19,20><color=0xfffcf157> Чудо-ребенок:<color=0xffffffff><font=Dragon Font,0,17,20>\\n Так мало? Ладно, вижу, тебе тоже нелегко, дам тебе немного наград. Завтра принеси побольше.");
        elseif( id == 30832)then
			Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(30832,"<font=Dragon Font,0,19,20><color=0xfffcf157> Чудо-ребенок:<color=0xffffffff><font=Dragon Font,0,17,20>\\n Я уже дал тебе подарок сегодня, хочешь еще? Приходи завтра!");
        end
end

Rzhufulingtong = {}
Rzhufulingtong["OnTalk"] = OnTalk
Rzhufulingtong["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rzhufulingtong["OnCompleteQuestTalk"] = OnCompleteQuestTalk