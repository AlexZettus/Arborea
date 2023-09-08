local function OnTalk()
		Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
		Quest.SetNPCTalkOption(EOT_ScenarioTalk,0,0,"Получить");
		Quest.SetNPCTalkOption(EOT_ScenarioTalk,1,0,"Уйти");

		Quest.NPCTalk(0,0,"Посланец богов：Друг, ты пришел получить свиток обмена священной монеты? Только те, у кого достаточно мастерства, могут получить его！");
end

local function OnScenarioTalk(id,step)

	if( id == 0 )then --Получить，послать сообщение
		Quest.ReveiveYuanBao();
		Quest.CloseNPCTalk();

	elseif( id == 1 )then --Уйти
		Quest.CloseNPCTalk();

	Quest.ForceDivorceApply();

	end

end

YuanBaoDaiBi = {}
YuanBaoDaiBi["OnTalk"] = OnTalk
YuanBaoDaiBi["OnScenarioTalk"] = OnScenarioTalk
