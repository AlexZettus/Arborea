
--NPCid:5510603
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна

		r = Quest.GetRandom(7);
		if ( r==0 ) then
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Страж Теоса：<color=0xffffffff>\\nМы получили приказ охранять здесь <N>Стену памяти</N>，с этого места начинаются Небеса");
		elseif ( r==1 ) then
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Страж Теоса：<color=0xffffffff>\\nСтарайтесь как следует！Боритесь за честь пройти Небесне исптания");
		elseif ( r==2 ) then
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Страж Теоса：<color=0xffffffff>\\nЕсли поблизости нет задани，можно найти<D>список розыска</D>и получиь наградное задание чтобы перейти на следующий уровень");
		elseif ( r==3 ) then
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Страж Теоса：<color=0xffffffff>\\nВы можете нажать на клавиатуре клавиши<A>A</A>、<A>S</A>、<A>D</A>、<A>W</A>для передвижения，нажать<A>пробел</A>для прыжка");
		elseif ( r==4 ) then
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Страж Теоса：<color=0xffffffff>\\nНажмите<T>TAB</T>для автоматического выбора монстров，это упростит процесс боя.");
		elseif ( r==5 ) then
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Страж Теоса：<color=0xffffffff>\\nС помощью клавиши<T>“~”</T> можно подбирать вещи，нет необходимости постоянно щелкать мышкой, чтобы подбирать предметы.");
		elseif ( r==6 ) then
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Страж Теоса：<color=0xffffffff>\\nКогда вы выполняете задания основной линии，достигнув 10 уровня, можете покинуть Стену памяти и отправиться в Тарио. Телепорт можете найти на <T>юго-востоке</T>");
	end
end

Rtianshenshouwei1 = {}
Rtianshenshouwei1["OnTalk"] = OnTalk