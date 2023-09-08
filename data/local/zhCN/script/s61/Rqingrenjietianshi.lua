local function OnTalk()
	Quest.ClearNPCTalkOptions();
	Quest.SetAcceptOptions(5610095);
	Quest.SetCompleteOptions(5610095);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Грегориан<color=0xffffffff>\\nПриветствую в этом райском уголке, Герой! Остров Мечты прекрасное место для отдыха и вечеринок!");
end

local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
    if( id == 59027)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(59027,"<Font=arial,0,19,20><color=0xfffcf157>Грегориан<color=0xffffffff><Font=arial,0,17,20>\\nМесто было бы совсем идеальным, если бы не Хранитель глубин, который иногда выбирается на берег. Честное слово, такое впечатление что он специально портит всем отдых. Знаешь что, помоги какое-то время защищать отдыхающих от него, а я поделюсь с тобой магическим навыком, специально для влюбленных парочек.");
	elseif( id == 59028)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(59028,"<Font=arial,0,19,20><color=0xfffcf157>Грегориан<color=0xffffffff><Font=arial,0,17,20>\\nЯ здесь на заслуженном отдыхе и уже давно. Многие парочки могли бы мне нынче сказать спасибо. Но хоть отдых дело хорошее, иногда хочется и пострелять, вспомнить прошлое. Принеси мне, пожалуйста, плавник Хранителя темных глубин. Из них выходит хорошее оперение для стрел.\\nХранителя глубин ты можешь найти прямо на этом острове. Он иногда выбирается на сушу, чтобы испортить всем отдых");
	elseif( id == 52095)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52095,"<Font=arial,0,19,20><color=0xfffcf157>Грегориан<color=0xffffffff><Font=arial,0,17,20>\\nМне скучно...Знаю, я хочу организовать жучьи бега. Принесите мне одного жука, вы можете найти его на пляже. А за вашу помощь я дам вам предмет, который поможет вам укрепить песочный замок. Как только справитесь, возвращайтесь ко мне (Остров мечты, 454 242).");
    end
end

local function OnCompleteQuestTalk(id,step)
    if (id == 59027) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(59027,"<Font=arial,0,19,20><color=0xfffcf157>Грегориан<color=0xffffffff><Font=arial,0,17,20>\\nСпасибо, ты нам очень помог! Хранитель морей порядочно портит тут отдых, если его вовремя не спровадить.");
	elseif (id == 59028) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(59028,"<Font=arial,0,19,20><color=0xfffcf157>Грегориан<color=0xffffffff><Font=arial,0,17,20>\\nСпасибо, ты мне очень помог! Пойду заготавливать стрелы. Здесь, на острове, всегда есть на ком попрактиковаться...");
	elseif (id == 52095) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52095,"<Font=arial,0,19,20><color=0xfffcf157>Грегориан<color=0xffffffff><Font=arial,0,17,20>\\nЖук какой-то не особо поворотливый. Ну, ладно, не всем же обязательно быть победителями. Не забудьте свою награду. Камень любви - это не простая безделушка. Разбить его сможет только тот, кто познал настоящую любовь.");
	end
end

Rqingrenjietianshi = {}
Rqingrenjietianshi["OnTalk"] = OnTalk
Rqingrenjietianshi["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rqingrenjietianshi["OnCompleteQuestTalk"] = OnCompleteQuestTalk
