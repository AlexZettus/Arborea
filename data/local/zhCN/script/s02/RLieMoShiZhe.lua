
local function OnTalk()
	Quest.ClearNPCTalkOptions()--清除对话框选项
	Quest.SetAcceptOptions(5510403)
	Quest.SetCompleteOptions(5510403)
	Quest.NPCTalk(0,0,"<Font=arial,0,18,20><color=0xffffe289>Эмиссар охотников на демонов:\\n<color=0xffffffff><Font=arial,0,16,20>Я прислан сюда командованием для организации поимки демонов Трайлокии. С [15:00] до [16:00] и с [19:01] до [20:00] каждую среду и пятницу я буду здесь выдавать задание Рев демона. Надеюсь, вы поможете мне.\\nОт вас требуется уничтожить группу демонов. Это крайне сложно, поэтому лучше идти в команде. Вознаграждение - опыт и золото. Если ваш уровень 40 и выше, вам также причитается медаль небесного бога, которую можно будет обменять на другие предметы у менялы небесных медалей.\\nВ течение ивента первый, десятый и сотый выполнивший задание получают особые награды.");
end


local function OnAcceptQuestTalk(id,step)
	if( id == 30201)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30201,"<Font=arial,0,18,20><color=0xffffe289>Эмиссар охотников на демонов:\\n<color=0xffffffff><Font=arial,0,16,20>Вы хотите выполнить это задание? Тогда вам нужно будет найти несколько главарей демонов и убить их.\\nВ течение ивента первый, десятый и сотый выполнивший задание получают особые награды.")
	end
end

--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
	if( id == 30201)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30201,"<Font=arial,0,18,20><color=0xffffe289>Эмиссар охотников на демонов:\\n<color=0xffffffff><Font=arial,0,16,20>Тут все просто: больше демонов убьете - больше опыта и денег получите.")
	end
end
RLieMoShiZhe = {}
RLieMoShiZhe["OnTalk"] = OnTalk
RLieMoShiZhe["OnCompleteQuestTalk"] = OnCompleteQuestTalk
RLieMoShiZhe["OnAcceptQuestTalk"] = OnAcceptQuestTalk
