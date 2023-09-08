
--NPCid:5510608
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна

		r = Quest.GetRandom(7);
		if ( r==0 ) then
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Райский кадет：<color=0xffffffff>\\nСкоро начнется испытание，я очень волнуюсь！");
		elseif ( r==1 ) then
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Райский кадет：<color=0xffffffff>\\nЯ слышал, что <A>Демон колдовства</A> со Стены памяти очень силен. Я очень волнуюсь, не знаю смогу ли справиться.");
		elseif ( r==2 ) then
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Райский кадет：<color=0xffffffff>\\nОбязательно не забудь разыскать <D>Квартирмейстера Айлу</D>, что бы получить оружие！Без оружия мы не сможем противостоять монстрам！");
		elseif ( r==3 ) then
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Райский кадет：<color=0xffffffff>\\nВы можете нажать на клавиатуре клавиши<A>A</A>、<A>S</A>、<A>D</A>、<A>W</A>для передвижения，нажать<A>пробел</A>для прыжка");
		elseif ( r==4 ) then
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Райский кадет：<color=0xffffffff>\\nНажмите<T>TAB</T>для автоматического выбора монстров，это упростит процесс боя.");
		elseif ( r==5 ) then
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Райский кадет：<color=0xffffffff>\\nС помощью клавиши<T>“~”</T> можно подбирать вещи，нет необходимости постоянно щелкать мышкой, чтобы подбирать предметы.");
		elseif ( r==6 ) then
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Райский кадет：<color=0xffffffff>\\nКогда вы выполняете задания основной линии，достигнув 10 уровня, можете покинуть Стену памяти и отправиться в Тарио. Телепорт можете найти на <T>юго-востоке</T>");
	end
end

Rhoubusheng1 = {}
Rhoubusheng1["OnTalk"] = OnTalk