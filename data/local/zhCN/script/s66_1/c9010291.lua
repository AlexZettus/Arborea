local function OnTalk()
	Quest.ClearNPCTalkOptions();
	Quest.SetCompleteOptions(9010291);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Хлоя:<color=0xffffffff>\\nДобро пожаловать в Нордгрэм! Если вас тянет на приключения, то вы обратились по адресу. Сейчас идёт ивент Зимняя сказка. У меня есть для вас несколько заданий, которые можно выполнять только в определенном порядке. Все задания доступны героям 80 уровня или выше. Каждое задание из цепочки можно выполнять один раз в сутки.");
end

local function OnCompleteQuestTalk(id,step)
    if (id == 52088) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52088,"<Font=arial,0,19,20><color=0xfffcf157>Хлоя:<color=0xffffffff><Font=arial,0,17,20>\\nПоскорее возвращайтесь за следующим заданием. Эх, такой тяжелый день. Мне велено сопровождать героев в их славных приключениях на просторах Снежного пика, а иногда так хочется отвлечься от всей этой суеты и просто встретиться с оливье лицом к лицу.");
	elseif (id == 52089) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52089,"<Font=arial,0,19,20><color=0xfffcf157>Хлоя:<color=0xffffffff><Font=arial,0,17,20>\\nПоскорее возвращайтесь за следующим заданием. Когда мы бросались снежками, это всегда было весело. Главное, быть осторожным, и не собирать в снежок ледышки или камни, так как оставлять увечья своим друзьям совсем не весело.");
	elseif (id == 52090) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52090,"<Font=arial,0,19,20><color=0xfffcf157>Хлоя:<color=0xffffffff><Font=arial,0,17,20>\\nПоскорее возвращайтесь за следующим заданием. Помню, в детстве мы часто выходили с друзьями на улицу и лепили снеговиков. Всегда было интересно, чей же снеговик получится самым большим и красивым.");
	end
end

c9010291 = {}
c9010291["OnTalk"] = OnTalk
c9010291["OnCompleteQuestTalk"] = OnCompleteQuestTalk
