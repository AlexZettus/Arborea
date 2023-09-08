
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
	Quest.SetAcceptOptions(6040018);
	Quest.SetCompleteOptions(6040018);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Кипящая кострюля:<color=0xffffffff>\\nПраздник Весны начался! Специально для вас я подготовила пельменный банкет! Скорей собирайте пельмени и передавайте их мне!");

end


local function OnAcceptQuestTalk(id,step)--Если удалить задание, его снова можно будет получить вручную
        if( id == 30854)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30854,"<Font=arial,0,19,20><color=0xfffcf157>Кипящая кострюля:<color=0xffffffff>\\nПраздник Весны начался! Специально для вас я подготовила <I>Пельменный банкет</I>. Хотите принять участие? Соберите <C>5</C>个<I>супов с пельменями</I>. Я буду щедр! ха-ха!");
        elseif( id == 30855)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30855,"<Font=arial,0,19,20><color=0xfffcf157>Кипящая кострюля:<color=0xffffffff>\\nПраздник Весны начался! Специально для вас я подготовила <I>Пельменный банкет</I>. Хотите принять участие? Соберите <C>5</C>个<I>супов с пельменями</I>. Я буду щедр! ха-ха!");
        elseif( id == 30856)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30856,"<Font=arial,0,19,20><color=0xfffcf157>Кипящая кострюля:<color=0xffffffff>\\nПраздник Весны начался! Специально для вас я подготовила <I>Пельменный банкет</I>. Хотите принять участие? Соберите <C>5</C>个<I>супов с пельменями</I>. Я буду щедр! ха-ха!");
        elseif( id == 30857)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30857,"<Font=arial,0,19,20><color=0xfffcf157>Кипящая кострюля:<color=0xffffffff>\\nПраздник Весны начался! Специально для вас я подготовила <I>Пельменный банкет</I>. Хотите принять участие? Соберите <C>5</C>个<I>супов с пельменями</I>. Я буду щедр! ха-ха!");
        elseif( id == 30858)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30858,"<Font=arial,0,19,20><color=0xfffcf157>Кипящая кострюля:<color=0xffffffff>\\nПраздник Весны начался! Специально для вас я подготовила <I>Пельменный банкет</I>. Хотите принять участие? Соберите <C>5</C>个<I>пельменей</I>。Я буду щедр! ха-ха!");
        elseif( id == 30859)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30859,"<Font=arial,0,19,20><color=0xfffcf157>Кипящая кострюля:<color=0xffffffff>\\nПраздник Весны начался! Специально для вас я подготовила <I>Пельменный банкет</I>. Хотите принять участие? Соберите <C>5</C>个<I>пельменей</I>。Я буду щедр! ха-ха!");
        elseif( id == 30860)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30860,"<Font=arial,0,19,20><color=0xfffcf157>Кипящая кострюля:<color=0xffffffff>\\nПраздник Весны начался! Специально для вас я подготовила <I>Пельменный банкет</I>. Хотите принять участие? Соберите <C>5</C>个<I>пельменей</I>。Я буду щедр! ха-ха!");
        elseif( id == 30861)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30861,"<Font=arial,0,19,20><color=0xfffcf157>Кипящая кострюля:<color=0xffffffff>\\nПраздник Весны начался! Специально для вас я подготовила <I>Пельменный банкет</I>. Хотите принять участие? Соберите <C>5</C>个<I>пельменей</I>。Я буду щедр! ха-ха!");

	end
end


--Настройки завершения заданий
local function OnCompleteQuestTalk(id,step)
        if( id == 30854)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30854,"<Font=arial,0,19,20><color=0xfffcf157>Кипящая кострюля:<color=0xffffffff>\\nКакой приятный аромат, да? <I>Пельменный банкет</I>сейчас начнется!");
        elseif( id == 30855)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30855,"<Font=arial,0,19,20><color=0xfffcf157>Кипящая кострюля:<color=0xffffffff>\\nКакой приятный аромат, да? <I>Пельменный банкет</I>сейчас начнется!");
        elseif( id == 30856)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30856,"<Font=arial,0,19,20><color=0xfffcf157>Кипящая кострюля:<color=0xffffffff>\\nКакой приятный аромат, да? <I>Пельменный банкет</I>сейчас начнется!");
        elseif( id == 30857)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30857,"<Font=arial,0,19,20><color=0xfffcf157>Кипящая кострюля:<color=0xffffffff>\\nКакой приятный аромат, да? <I>Пельменный банкет</I>сейчас начнется!");
        elseif( id == 30858)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30858,"<Font=arial,0,19,20><color=0xfffcf157>Кипящая кострюля:<color=0xffffffff>\\nКак говорится - нет ничего удобнее кровати, нет ничего вкуснее пельменей! <I>Пельменный банкет</I> еще не начался! Приходите позже! А пока вот вам подарок Новой весны, забирайте! ха-ха!");
        elseif( id == 30859)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30859,"<Font=arial,0,19,20><color=0xfffcf157>Кипящая кострюля:<color=0xffffffff>\\nКак говорится - нет ничего удобнее кровати, нет ничего вкуснее пельменей! <I>Пельменный банкет</I> еще не начался! Приходите позже! А пока вот вам подарок Новой весны, забирайте! ха-ха!");
        elseif( id == 30860)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30860,"<Font=arial,0,19,20><color=0xfffcf157>Кипящая кострюля:<color=0xffffffff>\\nКак говорится - нет ничего удобнее кровати, нет ничего вкуснее пельменей! <I>Пельменный банкет</I> еще не начался! Приходите позже! А пока вот вам подарок Новой весны, забирайте! ха-ха!");
        elseif( id == 30861)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30861,"<Font=arial,0,19,20><color=0xfffcf157>Кипящая кострюля:<color=0xffffffff>\\nКак говорится - нет ничего удобнее кровати, нет ничего вкуснее пельменей! <I>Пельменный банкет</I> еще не начался! Приходите позже! А пока вот вам подарок Новой весны, забирайте! ха-ха!");

       end

end

HDfeitengdeshenguo = {}
HDfeitengdeshenguo["OnTalk"] = OnTalk
HDfeitengdeshenguo["OnAcceptQuestTalk"] = OnAcceptQuestTalk
HDfeitengdeshenguo["OnCompleteQuestTalk"] = OnCompleteQuestTalk
