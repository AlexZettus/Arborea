
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5510628);
	Quest.SetCompleteOptions(5510628);
	talk_ID=math.random(1,5)
	if talk_ID==1 then
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Мирный житель:<color=0xffffffff>\\nМы живем в постоянном страхе перед дьяволами из Логова Тьмы и Обители зла.");
	elseif talk_ID==2 then
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Мирный житель:<color=0xffffffff>\\nДобро пожаловать! Наш алькальд находится на возвышении в северной части города.");
	elseif talk_ID==3 then
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Мирный житель:<color=0xffffffff>\\nАллу очень знаменит здесь.");
	elseif talk_ID==4 then
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Мирный житель:<color=0xffffffff>\\nВ Сноулэнде есть две хорошенькие девушки. Они сестры. Ох, какие милашки!");
	else
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Мирный житель:<color=0xffffffff>\\nВы можете получить наградные задания, которые даются в Списке розыска. Частенько там есть весьма привлекательные предложения.");

	end
end






Rcunmin = {}
Rcunmin["OnTalk"] = OnTalk
