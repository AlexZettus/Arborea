

local function OnTalk()
		Quest.ClearNPCTalkOptions();												--清除对话框选项
		Quest.CloseNPCTalk();					--隐藏NPC对话框
		Quest.OpenWare();
		--[[Quest.SetNPCTalkOption(EOT_ScenarioTalk,0,0,"Open Warehouse");					--设置对话选项
		Quest.SetNPCTalkOption(EOT_ScenarioTalk,1,0,"Extra Inventory (5 grids every time)");
		Quest.SetNPCTalkOption(EOT_ScenarioTalk,2,0,"Extra Inventory（game coins）");
		Quest.SetNPCTalkOption(EOT_ScenarioTalk,3,0,"Extra Warehouse (6 grids every time)");
		Quest.SetNPCTalkOption(EOT_ScenarioTalk,4,0,"Extra Warehouse（game coins）（6 grids every time）");

		Quest.NPCTalk(0,0,"Warehouse Manager: Hello, what can I do for you?");]]
end

local function OnTalk4WalkWare()													--随身仓库
		Quest.ClearSpecialTalkOptions();										--清除对话框选项
		Quest.CloseSpecialTalk()
		Quest.OpenWalkWare()
end

local function OnScenarioTalk(id,step)

	if( id == 0 )then							--打开仓库
		Quest.CloseNPCTalk();					--隐藏NPC对话框
		Quest.OpenWare();
--[[
	elseif( id == 1 )then						--背包扩容（元宝）
	  Quest.BagExtend(false,false);

	elseif( id == 2 )then						--背包扩容（游戏币）
	  Quest.BagExtend(true,false);

	elseif(  id == 3 )then						--仓库扩容（元宝）
	  Quest.WareExtend(false,false);

	elseif(  id == 4 )then						--仓库扩容（游戏币）
	  Quest.WareExtend(true,false);]]
	end

end

local function OnScenarioTalk4WalkWare(id,step)

	if( id == 0 )then						--打开仓库
		Quest.CloseSpecialTalk();			--隐藏NPC对话框
		Quest.OpenWalkWare();
--[[
	elseif( id == 1 )then					--背包扩容（元宝）
	  Quest.BagExtend(false,true);

	elseif( id == 2 )then					--背包扩容（游戏币）
	  Quest.BagExtend(true,true);

	elseif(  id == 3 )then					--仓库扩容（元宝）
	  Quest.WareExtend(false,true);

	elseif(  id == 4 )then					--仓库扩容（游戏币）
	  Quest.WareExtend(true,true);]]

	end

end

Ware = {}
Ware["OnTalk"] = OnTalk
Ware["OnTalk4WalkWare"] = OnTalk4WalkWare
Ware["OnScenarioTalk"] = OnScenarioTalk
Ware["OnScenarioTalk4WalkWare"] = OnScenarioTalk4WalkWare
