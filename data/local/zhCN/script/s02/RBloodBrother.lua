local function OnTalk()
		Quest.ClearNPCTalkOptions();                    --Очистить выбор в окне диалога
		Quest.SetNPCTalkOption(EOT_ScenarioTalk,0,0,"Подписание договора [7 дней]");
		Quest.SetNPCTalkOption(EOT_ScenarioTalk,1,0,"Подписание договора [15 дней]");
		Quest.SetNPCTalkOption(EOT_ScenarioTalk,2,0,"Отмена");
		Quest.SetAcceptOptions(5610057);
	  Quest.SetCompleteOptions(5610057);
		Quest.NPCTalk(0,0,"<font=Dragon Font,0,19,20><color=0xfffcf157>Рикардо:<color=0xffffffff>\\nРазделение опыта позволяет игрокам с низким уровнем при игре в команде с игроками с высоким уровнем получать дополнительно <color=0xffff80ff>30% опыта<color=0xffffffff> при убийстве монстров. При этом опыт игроков с высоким уровнем не изменяется. \\nДля использования этой функции нужно выполнить следующие условия:\\nИгроки должны быть друзьями и составить группу из двух человек. У игрока с низким уровнем должен быть договор разделения опыта. Игрок с уровнем выше 80 может делить опыт от убийства монстров максимум с 5 игроками низкого уровня. Игрок с уровнем\\nниже 80 может разделить опыт от убийства монстров максимум с 1 игроком.\\nПосле того, как игроки перестают быть друзьями, эта функция перестает действовать. ");
end

local function OnScenarioTalk(id,step)

	if( id == 0 )then --Подписание договора [7 дней]
		Quest.BloodBrother(7);
		Quest.CloseNPCTalk();
	elseif( id == 1 )then -- Подписание договора [15 дней]
		Quest.BloodBrother(15);
		Quest.CloseNPCTalk();
	elseif( id == 2 )then --Закрыть
		Quest.CloseNPCTalk();
	end

end


RBloodBrother = {}
RBloodBrother["OnTalk"] = OnTalk
RBloodBrother["OnScenarioTalk"] = OnScenarioTalk