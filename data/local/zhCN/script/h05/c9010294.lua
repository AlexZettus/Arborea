local function OnTalk()
	Quest.ClearNPCTalkOptions();
	Quest.SetCompleteOptions(9010294);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Николай:<color=0xffffffff>\\nПриветствую вас! Вы всё же смогли одолеть мою охрану и развеять защитные чары. Что же, давайте посмотрим на ваши успехи.");
end
local function OnCompleteQuestTalk(id,step)
    if (id == 52071) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52071,"<Font=arial,0,19,20><color=0xfffcf157>Николай<color=0xffffffff><Font=arial,0,17,20>\\n Да, путь твой был тернистым. Спасибо за помощь, мне нравится эта штуковина. Ею удобно снег крошить. Кажется, я чую запах эфирного масла. Мне нужно отлучиться по очень важному делу, а ты возвращайся завтра.");
	end
end

c9010294 = {}
c9010294["OnTalk"] = OnTalk
c9010294["OnCompleteQuestTalk"] = OnCompleteQuestTalk
