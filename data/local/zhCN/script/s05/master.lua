
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5510621);
	Quest.SetCompleteOptions(5510621);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Святой город Алькальд:<color=0xffffffff>\\nДва негодяя и его приспешники терроризируют Сноулэнд: духовный лидер Одли и Святой Проди Архиепископ. Они не дают покоя нашим мирным гражданам, желающим только одного - спокойно жить и растить детей. Посмотрите на этих милых ребятишек. Разве вам не жаль их? Помогите нам, пожалуйста.");

end





master = {}
master["OnTalk"] = OnTalk
