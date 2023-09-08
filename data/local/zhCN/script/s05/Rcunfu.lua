
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5510634);
	Quest.SetCompleteOptions(5510634);
	talk_ID=math.random(1,5)
	if talk_ID==1 then
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Мирный житель:<color=0xffffffff>\\nВсех моих родственников схватили... Что я один могу сделать... Прошу, помогите мне.");
	elseif talk_ID==2 then
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Мирный житель:<color=0xffffffff>\\n Сейчас настоящий торговый бум! Множество магазинов открываются и преуспевают в Заснеженном Городе и Святом городе, на Северном посту и в других селениях. Вы можете купить все, что только пожелаете!");
	elseif talk_ID==3 then
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Мирный житель:<color=0xffffffff>\\nВы хотите купить что-то из лекарств? Пожалуйста, найдите продавца зелий. Он недалеко от меня.");
	elseif talk_ID==4 then
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Мирный житель:<color=0xffffffff>\\nМастер усиления снаряжения поможет вам усилить предметы снаряжения. Я слышал, в Заснеженном Городе есть один такой.");
	else
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Мирный житель:<color=0xffffffff>\\nВы можете пойти к доске объявлений и посмотреть, какие там сегодня есть для вас наградные задания, за выполнение которых можно получить дополнительный опыт.");

	end
end






Rcunfu = {}
Rcunfu["OnTalk"] = OnTalk
