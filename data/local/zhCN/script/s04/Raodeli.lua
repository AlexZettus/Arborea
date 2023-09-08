
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5510635);
	Quest.SetCompleteOptions(5510635);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Духовный лидер Одли:<color=0xffffffff>\\nВы слышали о Библиотеке? Туда очень опасно ходить в одиночку. Это место, где прежде небожители изучали способы борьбы с демонами.");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务, 可重新手动接取
        if( id == 29001)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(29001,"<Font=arial,0,19,20><color=0xfffcf157>Духовный лидер Одли:<color=0xffffffff>\\nВ Долине Грома была только одна Библиотека, где воины света постигали науку уничтожения демонов. Демоны захватили Библиотеку и прератили в свой храм. Мы не можем и дальше терпеть это! Мне очень нужна ваша помощь.");
        elseif( id == 29002)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(29002,"<Font=arial,0,19,20><color=0xfffcf157>Духовный лидер Одли:<color=0xffffffff>\\nПервого демона зовут Призванный голем. Вы обязательно встретите его, когда войдете в Библиотеку. Помогите мне разделаться с ним.");
        elseif( id == 29003)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(29003,"<Font=arial,0,19,20><color=0xfffcf157>Духовный лидер Одли:<color=0xffffffff>\\nВторого из четырех свирепых монстров, обосновавшихся там, зовут Гарджет Призванный Злодей. Будет отлично, если вы и с ним разберетесь!");
        elseif( id == 29004)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(29004,"<Font=arial,0,19,20><color=0xfffcf157>Духовный лидер Одли:<color=0xffffffff>\\nОсобенно опасайтесь дьяволицу по имени Учитель волшебства. Будьте осмотрительны, чтобы встретить ее во всеоружии! Каждый демон в Библиотеке имеет свои особые навыки, внимательно  наблюдайте за ними. За тем, как они сражаются, и ищите слабые стороны.");
        elseif( id == 29005)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(29005,"<Font=arial,0,19,20><color=0xfffcf157>Духовный лидер Одли:<color=0xffffffff>\\nТяжелее всего будет с Милкой Порочной Всадницей. Вы не пройдете до конца Библиотеку, пока не убьете ее.");
        elseif( id == 29014)then
			Quest.CloseNPCTalk();
	Quest.AcceptQuestTalk(29014,"<Font=arial,0,19,20><color=0xfffcf157>Духовный лидер Одли:<color=0xffffffff>\\nТресондра Призванный Злодей - это лишь один из демонов Библиотеки, уничтожив, которого вы сможете беспрепятственно передвигаться по всей Библиотеке и убивать врагов!");
	elseif ( id == 29015)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(29015,"<Font=arial,0,19,20><color=0xfffcf157>Духовный лидер Одли:<color=0xffffffff>\\nВ Библиотеке обитает очень странное существо - магический голем Оливер. Он сжег в библиотеке почти все книги. Избавьтесь от него! Я ужасно устал от его проделок.");
	elseif ( id == 29016)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(29016,"<Font=arial,0,19,20><color=0xfffcf157>Духовный лидер Одли:<color=0xffffffff>\\nТресондра - еще один дерзкий злоумышленник. Его и Гарджета прозвали демонами-близнецами. Если встретите его - будьте чрезвычайно осторожны.");

	elseif ( id == 29017)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(29017,"<Font=arial,0,19,20><color=0xfffcf157>Духовный лидер Одли:<color=0xffffffff>\\nУчитель Альма - новый командующий армии демонов, присланной удержать Библиотеку. Я еще ничего не знаю о нем. Пожалуйста, соберите для меня хоть какую-то информацию о нем.");
	elseif ( id == 29018) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(29018,"<Font=arial,0,19,20><color=0xfffcf157>Духовный лидер Одли:<color=0xffffffff>\\nАстрат... имя, которое заставляет вздрогнуть даже самых смелых. Однако, я слашал, что в Битве века он был тяжело ранен. Вполне возможно, сейчас самый лучший момент, чтобы попытаться его убить.");
	elseif ( id == 29023)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(29023,"<Font=arial,0,19,20><color=0xfffcf157>Духовный лидер Одли:<color=0xffffffff>\\nОтправляйтесь в Библиотеку и положите конец злодеяниям демонов!");
	elseif ( id == 29024)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(29024,"<Font=arial,0,19,20><color=0xfffcf157>Духовный лидер Одли:<color=0xffffffff>\\nВ прошлый раз вы добились значительных успехов, но еще не все демоны уничтожены. Вам нужно это исправить.");
	end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 29001)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(29001,"<Font=arial,0,19,20><color=0xfffcf157>Духовный лидер Одли:<color=0xffffffff>\\nВ Библиотеке обитают четыре свирепых демона. Это магический голем Оливер, Гарджет Призванный Злодей, Учитель волшебства Хида и Милка Порочная Всадница. Только уничтожив всех четверых, вы пройдете Библиотеку.");
        elseif( id == 29002)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(29002,"<Font=arial,0,19,20><color=0xfffcf157>Духовный лидер Одли:<color=0xffffffff>\\nМои поздравления!");
        elseif( id == 29003)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(29003,"<Font=arial,0,19,20><color=0xfffcf157>Духовный лидер Одли:<color=0xffffffff>\\nОтлично!");
        elseif( id == 29004)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(29004,"<Font=arial,0,19,20><color=0xfffcf157>Духовный лидер Одли:<color=0xffffffff>\\nЕще один шаг к победе. Сделайте его!");
        elseif( id == 29005)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(29005,"<Font=arial,0,19,20><color=0xfffcf157>Духовный лидер Одли:<color=0xffffffff>\\nЭто великолепно! Это подземелье теперь свободно от демонов!");
        elseif( id == 29014)then
		  Quest.CloseNPCTalk();
	  Quest.CompleteQuestTalk(29014,"<Font=arial,0,19,20><color=0xfffcf157>Духовный лидер Одли：<color=0xffffffff>\\nТеперь вы можете продолжать продвижение по Библиотеке.");
	elseif ( id == 29015)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(29015,"<Font=arial,0,19,20><color=0xfffcf157>Духовный лидер Одли:<color=0xffffffff>\\nСпасибо вам! У меня просто гора с плеч свалилась! И все благодаря вам.");
	elseif ( id == 29016)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(29016,"<Font=arial,0,19,20><color=0xfffcf157>Духовный лидер Одли:<color=0xffffffff>\\nЭто действительно очень смелый поступок. Ваша доблесть сделала вас известным.");
	elseif ( id == 29017)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(29017,"<Font=arial,0,19,20><color=0xfffcf157>Духовный лидер Одли:<color=0xffffffff>\\nСпасибо вам! Это очень ценная информация!");
	elseif ( id == 29018)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(29018,"<Font=arial,0,19,20><color=0xfffcf157>Духовный лидер Одли:<color=0xffffffff>\\nЯ смотрю, даже силач Астрат вам не соперник! Наверное вы действиетльно являетесь последней надеждой этого мира!");
		
	elseif ( id == 29023)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(29023,"<Font=arial,0,19,20><color=0xfffcf157>Духовный лидер Одли：<color=0xffffffff>\\nЭто было не просто, но вы справились!");
	elseif ( id == 29024)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(29024,"<Font=arial,0,19,20><color=0xfffcf157>Духовный лидер Одли：<color=0xffffffff>\\nЯ поражен! Вы совершили разромили их!");
		

	   end

end

Raodeli = {}
Raodeli["OnTalk"] = OnTalk
Raodeli["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Raodeli["OnCompleteQuestTalk"] = OnCompleteQuestTalk
