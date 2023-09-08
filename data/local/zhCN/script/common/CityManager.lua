local function OnTalk()
		Quest.ClearNPCTalkOptions();                    --清除对话框选项
		Quest.SetNPCTalkOption(EOT_ScenarioTalk,0,0,"Информация о городе");
		Quest.SetNPCTalkOption(EOT_ScenarioTalk,1,0,"Благосостояние города");
		Quest.SetNPCTalkOption(EOT_ScenarioTalk,2,0,"Налоговая ставка");
		Quest.SetNPCTalkOption(EOT_ScenarioTalk,3,0,"Налоги");
		Quest.SetAcceptOptions(4900003);			
		Quest.SetCompleteOptions(4900003);
		
		Quest.NPCTalk(0,0,"Мэр города: Приветствую! Чем я могу вам помочь?");
end

local function OnScenarioTalk(id,step)
	
	if( id == 0 )then --查看城市信息				
		City.OpenCity()
	elseif (id == 1) then
		Quest.ClearNPCTalkOptions();                    --清除对话框选项
		Quest.SetCityProductivityOption(0, 0, "Бронзовый указ");
		Quest.SetCityProductivityOption(1, 0, "Серебряный указ");
		Quest.SetCityProductivityOption(2, 0, "Золотой указ");
        Quest.SetCityProductivityOption(3, 0, "Назад");
		Quest.NPCTalk(0,0,"Мэр города: Пожалуйста, выберите тип указа.");
	elseif (id == 2) then
	  City.OpenSetRate()
	elseif (id == 3) then
	  City.OpenPickUpTax()	
	end
	
end

local function OnCityProductivityTalk(id,step)
	if (id == 0) then
		City.HandinToken(0)
	elseif (id == 1) then
		City.HandinToken(1)
	elseif (id == 2) then 
		City.HandinToken(2)
	elseif (id == 3) then
		OnTalk()
	end
end

CityManager = {}
CityManager["OnTalk"] = OnTalk
CityManager["OnScenarioTalk"] = OnScenarioTalk
CityManager["OnCityProductivityTalk"] = OnCityProductivityTalk

