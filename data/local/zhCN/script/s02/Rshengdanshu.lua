
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
	Quest.SetAcceptOptions(5600019);
	Quest.SetCompleteOptions(5600019);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Новогодняя елка:<color=0xffffffff>\\nМаленькой елочке холодно зимой...\\nМаленькой елочке хочется домой...\\nНо нельзя мне, дети, в лес бежать назад!\\nНужно с добрым праздником поздравлять ребят!\\nРебята, мне так одиноко и холодно здесь без моих сестричек-елочек. Согрейте меня своими улыбками, и получите от меня подарки");

end


local function OnAcceptQuestTalk(id,step)--Если удалить задание, его снова можно будет получить вручную
        if( id == 30711)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30711,"<Font=arial,0,19,20><color=0xfffcf157>Новогодняя елка:<color=0xffffffff>\\nВы можете получить от меня в подарок новогодний наряд.");
	elseif( id == 30712)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30712,"<Font=arial,0,19,20><color=0xfffcf157>Новогодняя елка:<color=0xffffffff>\\nВы можете получить подарок от меня.");
	elseif( id == 30713)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30713,"<Font=arial,0,19,20><color=0xfffcf157>Новогодняя елка:<color=0xffffffff>\\nВы можете получить от меня новогоднее благословение.");
		elseif( id == 30903)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30903,"<Font=arial,0,19,20><color=0xfffcf157>Новогодняя елка:<color=0xffffffff>\\nНе забудьте получить свой новогодний костюм! Каждый игрок может получить только один костюм.");
		elseif( id == 30904)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30904,"<Font=arial,0,19,20><color=0xfffcf157>Новогодняя елка:<color=0xffffffff>\\nДайте мне 50 золотых монет и я вручу вам 5 новогодних талонов усиления.");
        end
end


--Настройки завершения заданий
local function OnCompleteQuestTalk(id,step)
	if( id == 30711)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30711,"<Font=arial,0,19,20><color=0xfffcf157>Новогодняя елка:<color=0xffffffff>\\nВозьмите этот Новогодний наряд.  Надеюсь, он вам подойдет!");
	elseif( id == 30712)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30712,"<Font=arial,0,19,20><color=0xfffcf157>Новогодняя елка:<color=0xffffffff>\\nПожалуйста, возьмите этот подарок! Поздравляю с Новым годом!");
	elseif( id == 30713)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30713,"<Font=arial,0,19,20><color=0xfffcf157>Новогодняя елка:<color=0xffffffff>\\nВы прекрасно отметите светлый праздник Нового года с этим благословением!"); 
	      elseif( id == 30903)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30903,"<Font=arial,0,19,20><color=0xfffcf157>Новогодняя елка:<color=0xffffffff>\\n Ни в коем случае не теряйте новогодний костюм!");
	      elseif( id == 30904)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30904,"<Font=arial,0,19,20><color=0xfffcf157>Новогодняя елка:<color=0xffffffff>\\n Если вы хотите получить еще несколько новогодних талонов усиления, приходите ко мне завтра!");
	end

end

Rshengdanshu = {}
Rshengdanshu["OnTalk"] = OnTalk
Rshengdanshu["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rshengdanshu["OnCompleteQuestTalk"] = OnCompleteQuestTalk
