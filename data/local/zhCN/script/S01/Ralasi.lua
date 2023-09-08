
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
	Quest.SetAcceptOptions(5010020);
	Quest.SetCompleteOptions(5010020);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Военачальник Аррас:<color=0xffffffff>\\nЯ помню времена, когда все три мира жили в согласии, но этим временам не суждено вернуться. Война стала нашей судьбой. Готов ли ты, воин, к самой главной битве за Теос?");

end


local function OnAcceptQuestTalk(id,step)--Если удалить задание, то его можно будет заново выбрать вручную.
        if( id == 20014)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20014,"<Font=arial,0,19,20><color=0xfffcf157>Военачальник Аррас:<color=0xffffffff>\\nКак один из 72 небесных повелителей битв, я обязан сдерживать натиск  <A>демонов колдовства</A>. Ярость этих демонов не знает границ, но мы должны успокоить ее. Ваше последнее испытание состоит в том, чтобы уничтожить <A>демонов колдовства.</A> Это нелегко сделать в одиночку, поэтому собирайте своих друзей и идите сражаться вместе!");
        elseif( id == 20015)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20015,"<Font=arial,0,19,20><color=0xfffcf157>Военачальник Аррас:<color=0xffffffff>\\nТеперь вы можете доложить о сражении <D>инструктору Григору</D>. Мои поздравления, воин света!");
        end
end


--после выбора меню заданий
local function OnCompleteQuestTalk(id,step)
        if( id == 20013)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20013,"<Font=arial,0,19,20><color=0xfffcf157>Военачальник Аррас:<color=0xffffffff>\\nТеперь вы встретитесь с тяжелыми заданиями. Будьте готовы! Если вас убили во время боя, вы можете воспользоваться <I>свитком воскрешения</I>, чтобы <color=0xffff00ff>воскреснуть на месте<color=0xffffffff>.");
        elseif( id == 20014)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20014,"<Font=arial,0,19,20><color=0xfffcf157>Военачальник Аррас:<color=0xffffffff>\\nВоин, твой путь был предопределён. Теперь твоя сила раскрывается в полной мере, и я дарую тебе шанс применить эту силу во благо всего Теоса!");
	elseif( id == 30788)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30788,"<Font=arial,0,19,20><color=0xfffcf157>Аррас:<color=0xffffffff>\\nМой сын действительно очень занят, спасибо тебе за помощь.");
	end

end

Ralasi = {}
Ralasi["OnTalk"] = OnTalk
Ralasi["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Ralasi["OnCompleteQuestTalk"] = OnCompleteQuestTalk