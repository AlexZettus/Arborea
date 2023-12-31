﻿
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
	Quest.SetAcceptOptions(5010015);
	Quest.SetCompleteOptions(5010015);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20>Некоторые монстры накладывают на персонажа различные эффекты, которые могут поджечь, отравить или оглушить его.");

end


local function OnAcceptQuestTalk(id,step)--Если удалить задание, то его можно будет заново выбрать вручную.
        if( id == 20007)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20007,"<Font=arial,0,19,20>Похоже это случилось... Ты ведь тоже видишь этих огненных големов. Совсем недавно их здесь не было. Уничтожь одного из них, чтобы мы могли изучить его силу.");
        elseif( id == 20008)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20008,"<Font=arial,0,19,20>Жители заставы в опасности. В любую минуту на них могут напасть демоны. Я-то не умею драться, но может ты сможешь им помочь. Отправляйся туда поскорее.");
        elseif( id == 20025)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20025,"<Font=arial,0,19,20>Под водопадом магическими цепями скована Царица цветочных сирен. В таком состоянии она не может вырастить свою армию и атаковать наши земли, однако когда-то здесь велись ожесточённые бои. Даже в заточении Царица цветочных сирен всё ещё распространяет свою пыльцу, благодаря чему Стена памяти всегда зелёная и цветущая. Подойди к статуе и добудь мне немного той самой волшебной пыльцы.");
	  elseif( id == 20026)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20026,"<Font=arial,0,19,20>При завершении задания Груда камней тобой был получен транспорт Жар-птица. Чтобы изучить транспорт, открой инвентарь нажатием кнопки [ B ] на клавиатуре и нажми на иконке жар-птицы правой кнопкой мыши. В открывшемся окне введи имя для транспорта и подтверди свой выбор. После этого ты сможешь оседлать жар-птицу, использовав навык Верховая езда на панели навыков.");
        end
end


--после выбора меню заданий
local function OnCompleteQuestTalk(id,step)
        if( id == 20006)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20006,"<Font=arial,0,19,20>Я рад, что с енотом всё в порядке. Теперь мы наконец сможем добраться до лагеря, а то со всеми этими поисками я уже успел проголодаться. Да и тут как-то не спокойно.");
        elseif( id == 20007)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20007,"<Font=arial,0,19,20>А голем-то не простой. Спрятанная внутри камней энергия превратилась в чудесную огненную птицу. Она по праву принадлежит тебе. После завершения этого задания открой инвентарь, нажми на жар-птицу правой кнопкой мыши, придумай ей имя, после чего ты сможешь использовать её в качестве транспорта.");
        elseif( id == 20025)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20025,"<Font=arial,0,19,20>Да, это было простое поручение. Признаюсь, мне самому как-то боязно к ней подходить, так как мне иногда кажется, что я слышу её голос. В общем, всё это не важно. После завершения этого задания у меня есть к тебе ещё одно дело.");

       end

end

damon = {}
damon["OnTalk"] = OnTalk
damon["OnAcceptQuestTalk"] = OnAcceptQuestTalk
damon["OnCompleteQuestTalk"] = OnCompleteQuestTalk