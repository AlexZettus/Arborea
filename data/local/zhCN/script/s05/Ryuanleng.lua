
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010088);
	Quest.SetCompleteOptions(5010088);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Аарон:<color=0xffffffff>\\nДобро пожаловать в наши края, герой. О твоих подвигах, <color=0xff05ff00>"..Quest.GetPlayerName().."<color=0xfffff7e0>, знают даже здесь. И нам тоже нужна твоя помощь!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 20302)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20302,"<Font=arial,0,19,20><color=0xfffcf157>Аарон:<color=0xffffffff>\\nРаз вы здесь, можете распросить местных жителей о том, что здесь творится.");
        elseif( id == 20303)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20303,"<Font=arial,0,19,20><color=0xfffcf157>Аарон:<color=0xffffffff>\\nУ нас в селении бытует мнение, что быть героем недостаточно для того, чтобы сражаться с демонами. Мы хотим увидеть проявление твоей доблести своими глазами, <color=0xff05ff00>"..Quest.GetPlayerName().."<color=0xfffff7e0>. На входе в город вы найдете <M>плавильную печь</M>. В ней закован один из демонов древности. Срази его, тогда жители нашего города будут уверены, что тебе можно доверить наши жизни!");
        elseif( id == 20304)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20304,"<Font=arial,0,19,20><color=0xfffcf157>Аарон:<color=0xffffffff>\\n<N>Застава Сноулэнда</N> находится в <N>южной части Заснеженного Города</N>. Она объединяет город с <N>Долиной Белого дракона</N>. Те места сейчас наводнены демонами! Прошу вас, избавьте нас от них! Мы так устали от страха, в котором живем...");
        elseif( id == 20340)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20340,"<Font=arial,0,19,20><color=0xfffcf157>Аарон:<color=0xffffffff>\\nИдите на восток и найдите небесного хранителя Лана. Ему очень нужна ваша помощь.");
	elseif( id == 40042)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40042,"<Font=arial,0,19,20><color=0xfffcf157>Аарон:<color=0xffffffff>\\n<T>Эльфам</T> требуется большое количество духовности. Если вы сможете передать им духовную силу, в которой они нуждаются, вы свяжете себя с ними и они станут вашими друзьями и помощниками. Если вы сможете найти мне несколько редких предметов, я расскажу вам, как пользоваться навыком Оковы.");
	elseif( id == 40043)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40043,"<Font=arial,0,19,20><color=0xfffcf157>Аарон:<color=0xffffffff>\\nТак как вы выполнили мои задания, возьмите от меня двух <T>эльфов</T> разных типов. Оба становятся теперь вашими. <T>Нажмите правой кнопкой мыши в своем инвентаре, чтобы призвать их</T>. Затем откройте <N>меню эльфа в меню персонажа</N>, чтобы увидеть <T>параметры эльфа</T>. Поздравляю! Они станут вашими хорошими помощниками!");
        elseif( id == 20345)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20345,"<Font=arial,0,19,20><color=0xfffcf157>Аарон:<color=0xffffffff>\\nУ нас совсем не осталось еды. Мы пытались выйти за пределы города, чтобы поохотиться, но монстры перебили всех охотников! Боги, там было столько крови... Прошу тебя, добудь нам немного мяса <I>ледяных вепрей</I>.");
	elseif( id == 40067)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40067,"<Font=arial,0,19,20><color=0xfffcf157>Аарон：<color=0xffffffff>\\nВы не так давно прибыли в Заснеженный город. Вы в курсе местных дел? Могу ли я попросить вас помочь моему внуку? Нужно собрать кое-какие предметы. Боюсь, эти вещи действительно не так уж легко раздобыть...");

	end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 20301)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20301,"<Font=arial,0,19,20><color=0xfffcf157>Аарон:<color=0xffffffff>\\nЯ возношу хвалу Небу за то, что оно услышало наш призыв. Мы не можем справиться с демонами, герой!");
        elseif( id == 20302)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20302,"<Font=arial,0,19,20><color=0xfffcf157>Аарон:<color=0xffffffff>\\nЭти отвратительные демоны!");
        elseif( id == 20303)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20303,"<Font=arial,0,19,20><color=0xfffcf157>Аарон:<color=0xffffffff>\\nТеперь я с уверенностью могу сказать, что видел настоящего героя в бою! Спасибо тебе, <color=0xff05ff00>"..Quest.GetPlayerName().."<color=0xfffff7e0>. Теперь у нас есть надежда.");
        elseif( id == 20339)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20339,"<Font=arial,0,19,20><color=0xfffcf157>Аарон:<color=0xffffffff>\\nВы истинный небожитель! Легенда не лжет - вы пришли и освободили Этерхилл от демонов!");
	elseif( id == 40042)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40042,"<Font=arial,0,19,20><color=0xfffcf157>Аарон:<color=0xffffffff>\\nВот  навык Оковы. Пожалуйста, возьмите его.");
        elseif( id == 40043)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40043,"<Font=arial,0,19,20><color=0xfffcf157>Аарон:<color=0xffffffff>\\nПикси из другого места имеет очень сильную духовность, с которой нелегко получить связь. Вам нужно собрать несколько связывающих предметов, чтобы не упустить эту пикси, когда встретите ее.");
	elseif( id == 20345)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20345,"<Font=arial,0,19,20><color=0xfffcf157>Аарон:<color=0xffffffff>\\nСколько мяса! Мы будем молиться за тебя, <color=0xff05ff00>"..Quest.GetPlayerName().."<color=0xfffff7e0>!");
       
   elseif( id == 30336)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30336,"<Font=arial,0,19,20><color=0xfffcf157>Аарон：<color=0xffffffff>\\nВы, оказывается, намного быстрее, чем я предполагал.");
   elseif( id == 40067)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40067,"<Font=arial,0,19,20><color=0xfffcf157>Аарон：<color=0xffffffff>\\nЭто ваша награда, спасибо большое!");
   
   end
   
end

Ryuanleng = {}
Ryuanleng["OnTalk"] = OnTalk
Ryuanleng["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Ryuanleng["OnCompleteQuestTalk"] = OnCompleteQuestTalk
