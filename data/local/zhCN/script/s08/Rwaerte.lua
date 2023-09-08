
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010210);
	Quest.SetCompleteOptions(5010210);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Уолтер:<color=0xffffffff>\\nКто виноват во всех наших бедах? Вот в чем вопрос...");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 20649)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20649,"<Font=arial,0,19,20><color=0xfffcf157>Уолтер:<color=0xffffffff>\\n<color=0xffff0000>Ядовитая кровь<color=0xffffffff> возомнил себя третьей силой после демонов и небожителей. Я хочу, чтобы вы разобрались с ним и его приспешниками!");
        elseif( id == 20650)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20650,"<Font=arial,0,19,20><color=0xfffcf157>Уолтер:<color=0xffffffff>\\nСмотрите, <A>штормовые рыцари</A> и <A>штормовые воины тени</A> обязательно захотят отомстить вам. Вы должны опередить их и нанести первый удар!");
        elseif( id == 20651)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20651,"<Font=arial,0,19,20><color=0xfffcf157>Уолтер:<color=0xffffffff>\\nХотя члены секты жрецов и сами были обмануты небожителями, но все же их поведение непростительно. Идите и покончите с ними!");
	elseif( id == 20652)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20652,"<Font=arial,0,19,20><color=0xfffcf157>Уолтер:<color=0xffffffff>\\n<color=0xffff0000>Небесный посредник<color=0xffffffff> и <color=0xffff0000>левый небесный глашатай<color=0xffffffff> - их главари. Убейте их вместе с их приспешниками.");	
	elseif( id == 20653)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20653,"<Font=arial,0,19,20><color=0xfffcf157>Уолтер:<color=0xffffffff>\\nТеперь нужно очистить <I>кристаллическую душу</I>. Вложите ее в <M>Джаггернаута</M> на Горе смерти, и она будет очищена его силой.");
        elseif( id == 20654)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20654,"<Font=arial,0,19,20><color=0xfffcf157>Уолтер:<color=0xffffffff>\\nПохоже, я больше не могу скрывать себя. Как человек, я одинаково ненавижу и небожителей, и демонов. Однако вы не похожи ни на тех, ни на других. Если вы покровительствуете этому миру, как можете спокойно смотреть на то, что тут творится? ");
	elseif( id == 20655)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20655,"<Font=arial,0,19,20><color=0xfffcf157>Уолтер:<color=0xffffffff>\\nОх, я забыл сказать! <color=0xffff0000>Левый небесный глашатай<color=0xffffffff> и <color=0xffff0000>правый небесный глашатай<color=0xffffffff> должны умереть в тот момент, когда возрождается кто-то новый из них.");
	elseif( id == 20656)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20656,"<Font=arial,0,19,20><color=0xfffcf157>Уолтер:<color=0xffffffff>\\nЕсли вы сделали свой выбор, скажите об этом прямо королю Марсу. Конечно, это довольно опасная затея, но я думаю, вы сможете убедить его.");
        elseif( id == 20658)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20658,"<Font=arial,0,19,20><color=0xfffcf157>Уолтер:<color=0xffffffff>\\nМы все в опасности! Небожители и демоны только делают вид, что сражаются друг с другом, а на самом деле хотят поделить между собой мир людей! Нам нужно остановить их!");
	elseif( id == 20659)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20659,"<Font=arial,0,19,20><color=0xfffcf157>Уолтер:<color=0xffffffff>\\nЕсли вы решили сражаться с Владыкой ада, то подумайте еще раз. Если не уверены в своих силах, я не буду отправлять вас на верную смерть!");	
	elseif( id == 20660)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20660,"<Font=arial,0,19,20><color=0xfffcf157>Уолтер:<color=0xffffffff>\\nПослушайте меня! Конечно, <color=0xffff0000>Владыка ада<color=0xffffffff> невероятно силен, но убить его самого мало. Опасность в другом! Если вы убьете его, все демоны будут считать вас своим жесточайшим врагом. Демоны и небожители могут объединиться, чтобы расправиться с вами. Представьте, что ждет вас впереди!");  
		
		
        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 20648)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20648,"<Font=arial,0,19,20><color=0xfffcf157>Уолтер:<color=0xffffffff>\\nМы должны бороться! Мы не можем умереть, как дикари.");
        elseif( id == 20649)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20649,"<Font=arial,0,19,20><color=0xfffcf157>Уолтер:<color=0xffffffff>\\nМ-да, такого сильного бойца, как вы, сегодня не найдешь...");
	elseif( id == 20650)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20650,"<Font=arial,0,19,20><color=0xfffcf157>Уолтер:<color=0xffffffff>\\nКак груз с плеч!");
	elseif( id == 20651)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20651,"<Font=arial,0,19,20><color=0xfffcf157>Уолтер:<color=0xffffffff>\\nОтлично, но этого мало. Нам нужно теперь убить их главаря.");
        elseif( id == 20652)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20652,"<Font=arial,0,19,20><color=0xfffcf157>Уолтер:<color=0xffffffff>\\nОтлично сработано!");
	elseif( id == 20653)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20653,"<Font=arial,0,19,20><color=0xfffcf157>Уолтер:<color=0xffffffff>\\nЯ смотрю, вы устали. Ничего, поспите в гробу после смерти.");
	elseif( id == 20654)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20654,"<Font=arial,0,19,20><color=0xfffcf157>Уолтер:<color=0xffffffff>\\nОн будет вашим, когда вы сотрете всех врагов на своем пути. Правда, это будет нелегко...");
	elseif( id == 20655)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20655,"<Font=arial,0,19,20><color=0xfffcf157>Уолтер:<color=0xffffffff>\\nВы - надежда всего человечества. Я хочу, чтобы вы уничтожили всех демонов и небожителей!");
	elseif( id == 20657)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20657,"<Font=arial,0,19,20><color=0xfffcf157>Уолтер:<color=0xffffffff>\\nВы в порядке? Вам пришлось сражаться против своих же ради нас, людей... И я толкнул вас на это...");
	elseif( id == 20658)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20658,"<Font=arial,0,19,20><color=0xfffcf157>Уолтер:<color=0xffffffff>\\nПосмотрите на Гору смерти. Именно там сейчас находятся Правый небесный глашатай и демон Владыка ада!");
	elseif( id == 20659)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20659,"<Font=arial,0,19,20><color=0xfffcf157>Уолтер:<color=0xffffffff>\\nЭто... Это... Это невероятно...");
	elseif( id == 20660)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20660,"<Font=arial,0,19,20><color=0xfffcf157>Уолтер:<color=0xffffffff>\\nОх, какой рев издал этот повелитель демонов! Этот день настал... Этот день настал...");
	elseif( id == 30348)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30348,"<Font=arial,0,19,20><color=0xfffcf157>Уолтер：<color=0xffffffff>\\nВы, оказывается, намного быстрее, чем я мог себе предполагал.");
  elseif( id == 30349)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30349,"<Font=arial,0,19,20><color=0xfffcf157>Уолтер：<color=0xffffffff>\\nВы, оказывается, намного быстрее, чем я мог себе предполагал.");

       	
       end

end

Rwaerte = {}
Rwaerte["OnTalk"] = OnTalk
Rwaerte["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rwaerte["OnCompleteQuestTalk"] = OnCompleteQuestTalk