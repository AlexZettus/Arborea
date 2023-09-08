local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
	Quest.SetAcceptOptions(6040023);
	Quest.SetCompleteOptions(6040023);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Панда-патриарх:<color=0xffffffff>\\n Наступил Праздник Весны! От лица всех моих сородичей поздравляю вас и желаю вам счастья!");

end


local function OnAcceptQuestTalk(id,step)--Если удалить задание, его снова можно будет получить вручную
        if( id == 30850)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30850,"<Font=arial,0,19,20><color=0xfffcf157>Панда-патриарх:<color=0xffffffff>\\nЗдравствуйте! Я старейшина <N>Деревни Панд</N>. Мои родичи очень мирные и не любят конфликтов. Однако, кто-то распространяет неизвестную заразу вокруг нашей деревни. Прошу вас помочь мне найти виновников!");
        elseif( id == 30851)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30851,"<Font=arial,0,19,20><color=0xfffcf157>Панда-патриарх:<color=0xffffffff>\\nЗдравствуйте! Я старейшина <N>Деревни Панд</N>. Мои родичи очень мирные и не любят конфликтов. Однако, кто-то распространяет неизвестную заразу вокруг нашей деревни. Прошу вас помочь мне найти виновников!");
        elseif( id == 30852)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30852,"<Font=arial,0,19,20><color=0xfffcf157>Панда-патриарх:<color=0xffffffff>\\nЗдравствуйте! Я старейшина <N>Деревни Панд</N>. Мои родичи очень мирные и не любят конфликтов. Однако, кто-то распространяет неизвестную заразу вокруг нашей деревни. Прошу вас помочь мне найти виновников!");
        elseif( id == 30853)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30853,"<Font=arial,0,19,20><color=0xfffcf157>Панда-патриарх:<color=0xffffffff>\\nЗдравствуйте! Я старейшина <N>Деревни Панд</N>. Мои родичи очень мирные и не любят конфликтов. Однако, кто-то распространяет неизвестную заразу вокруг нашей деревни. Прошу вас помочь мне найти виновников!");

	end
end


--Настройки завершения заданий
local function OnCompleteQuestTalk(id,step)
        if( id == 30850)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30850,"<Font=arial,0,19,20><color=0xfffcf157>Панда-патриарх:<color=0xffffffff>\\nА, спасибо тебе, молодой человек! Наступил праздник, столько хлопот! Ох, так неудобно. Надеюсь, эти вещи порадуют вас.");
        elseif( id == 30851)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30851,"<Font=arial,0,19,20><color=0xfffcf157>Панда-патриарх:<color=0xffffffff>\\nА, спасибо тебе, молодой человек! Наступил праздник, столько хлопот! Ох, так неудобно. Надеюсь, эти вещи порадуют вас.");
        elseif( id == 30852)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30852,"<Font=arial,0,19,20><color=0xfffcf157>Панда-патриарх:<color=0xffffffff>\\nА, спасибо тебе, молодой человек! Наступил праздник, столько хлопот! Ох, так неудобно. Надеюсь, эти вещи порадуют вас.");
        elseif( id == 30853)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30853,"<Font=arial,0,19,20><color=0xfffcf157>Панда-патриарх:<color=0xffffffff>\\nА, спасибо тебе, молодой человек! Наступил праздник, столько хлопот! Ох, так неудобно. Надеюсь, эти вещи порадуют вас.");

       end

end

HDxiongmaozhanglao = {}
HDxiongmaozhanglao["OnTalk"] = OnTalk
HDxiongmaozhanglao["OnAcceptQuestTalk"] = OnAcceptQuestTalk
HDxiongmaozhanglao["OnCompleteQuestTalk"] = OnCompleteQuestTalk
