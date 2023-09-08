local function OnTalk()
		Quest.ClearNPCTalkOptions();                    --清除对话框选项
	  --Quest.SetNPCTalkOption(EOT_ScenarioTalk,0,0,"结婚说明");					--设置对话选项
		Quest.SetNPCTalkOption(EOT_ScenarioTalk,0,0,"Сыграть свадьбу");
		Quest.SetNPCTalkOption(EOT_ScenarioTalk,1,0,"Заявление на развод");
		--Quest.SetNPCTalkOption(EOT_ScenarioTalk,2,0,"举行婚礼(未开放)");
		--Quest.SetNPCTalkOption(EOT_ScenarioTalk,3,0,"申请强行离婚");

		Quest.NPCTalk(0,0,"Здравствуйте!\\nВы и ваш возлюбленный готовы в мире и согласии прожить до конца своих дней? Как чудесно. Но вам необходимо иметь стрелы Купидона. Я просто обязана помочь вам организовать свадьбу.\\nЕсли вы хотите поговорить с Купидоном, вы можете найти его в Тарио.");
end

local function OnScenarioTalk(id,step)

	--if( id == 0 )then --结婚说明
	--	Quest.MarriageNote();

	if( id == 0 )then --申请结婚
		Quest.MarriageApply();
		Quest.CloseNPCTalk();

	elseif( id == 1 )then --申请离婚
		Quest.ForceDivorceApply();
		Quest.CloseNPCTalk();

	--elseif( id == 2 )then --举行婚礼
	--	Quest.WeddingCeremony();

	--elseif( id == 3 )then --申请强行离婚
	--	Quest.ForceDivorceApply();

	end

end

Marriage = {}
Marriage["OnTalk"] = OnTalk
Marriage["OnScenarioTalk"] = OnScenarioTalk
