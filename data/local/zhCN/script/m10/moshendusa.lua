
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
	Quest.SetAcceptOptions(5010020);
	Quest.SetCompleteOptions(5010020);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Военачальник Аррас:<color=0xffffffff>\\nГотов к последнему испытанию?");

end


local function OnAcceptQuestTalk(id,step)--Если удалить задание, то его можно будет заново выбрать вручную.
        if( id == 20014)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20014,"<Font=arial,0,19,20><color=0xfffcf157>Военачальник Аррас:<color=0xffffffff>\\nПриготовьтесь к серьёзному испытанию. Вам нужно расправиться с <I>Зоргом</I> и <I>Травянистытыми стражами</I>. Я помогу вам, наделив вас божественной формой на 2 минуты. Достигнув 20-го уровня, вы сможете самостоятельно использовать божественную форму и божественные навыки.");
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
	      Quest.CompleteQuestTalk(20014,"<Font=arial,0,19,20><color=0xfffcf157>Военачальник Аррас:<color=0xffffffff>\\nПоздравляю! Ты прошел самое последнее испытание! ");
	elseif( id == 30788)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30788,"<Font=arial,0,19,20><color=0xfffcf157>Военачальник Аррас:<color=0xffffffff>\\nМой сын действительно очень занят, спасибо за помощь. У меня тоже есть дела, поэтому возьмите угощение и ступайте. Ах да, ещё Джесс оставил для вас поручение, нажмите на него правой кнопкой мыши и отправляйтесь в путь. Удачи вам!");
       end

end

moshendusa = {}
moshendusa["OnTalk"] = OnTalk
moshendusa["OnAcceptQuestTalk"] = OnAcceptQuestTalk
moshendusa["OnCompleteQuestTalk"] = OnCompleteQuestTalk
