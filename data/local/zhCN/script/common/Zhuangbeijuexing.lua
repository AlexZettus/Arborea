local function OnTalk()
		Quest.CloseNPCTalk();
		Quest.OpenEquipAwaken();
end

Zhuangbeijuexing = {}
Zhuangbeijuexing["OnTalk"] = OnTalk