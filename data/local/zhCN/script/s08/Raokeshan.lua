
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010205);
	Quest.SetCompleteOptions(5010205);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Очил:<color=0xffffffff>\\nВаш интеллект - это настоящее сокровище, мой друг!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 20601)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20601,"<Font=arial,0,19,20><color=0xfffcf157>Очил:<color=0xffffffff>\\nДоверяйте только своему уму, запомните мой совет. Ни божества, ни демоны не достойны вашей преданности. Посмотрите на этих жестоких <A>укротителей медведей</A>. Когда-то они были обычными охотниками, которые честно зарабатывали свой кусок хлеба в поте лица своего. Но когда они захотели большего, погоня за славой и богатством испортила их. Сделайте благое дело - упокойте с миром их души, оскверненные алчностью и тщеславием. И не забывайте о том, что они приручили <A>медведей</A>, которые будут готовы встать на защиту хозяев!");
        elseif( id == 20602)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20602,"<Font=arial,0,19,20><color=0xfffcf157>Очил:<color=0xffffffff>\\nЛюди медленно сходят с ума, когда пьют божественную воду. Некоторые даже превращаются в берсерков, таких же жестоких, как монстры. Пожалуйста, остановите биение их сердец!");
        elseif( id == 20603)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20603,"<Font=arial,0,19,20><color=0xfffcf157>Очил:<color=0xffffffff>\\n<D>Мастер иллюзий</D> не может ответить мне на вопрос о том, чем же она занимается. Только одно и твердит, что служит Теосу. Да она смеется надо мной!");
	elseif( id == 20604)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20604,"<Font=arial,0,19,20><color=0xfffcf157>Очил:<color=0xffffffff>\\n<N>Деревню Зеленой горы</N> захватили бандиты, одержимые какой-то мистической силой. Собери для меня образцы их крови, чтобы понять, какие в ней произошли изменения после воздействия этой силы.");	
	elseif( id == 20605)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20605,"<Font=arial,0,19,20><color=0xfffcf157>Очил:<color=0xffffffff>\\n<color=0xffff6000>Элитные громовые бандиты<color=0xffffffff> выглядят менее одержимыми. Мне кажется, еще можно избавить их души от влияния зла. Скорее найдите <C>30</C> из них, и я попытаюсь сделать это.");
        elseif( id == 20606)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20606,"<Font=arial,0,19,20><color=0xfffcf157>Очил:<color=0xffffffff>\\nЗажгите <I>фейерверки</I> в знак скорби о погибших!");
	elseif( id == 20607)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20607,"<Font=arial,0,19,20><color=0xfffcf157>Очил:<color=0xffffffff>\\nЯ выгравирую руны на этой <I>могильной плите</I> в память об упокоенных невинных душах. Пожалуйста, погребите ее позади меня.");
	elseif( id == 20608)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20608,"<Font=arial,0,19,20><color=0xfffcf157>Очил:<color=0xffffffff>\\nЛадно, хватит грустить. Пора сражаться! Демоны вырастили <A>демон-цветок</A> в <N>Долине Омен</N>. Эти цветки своей ядовитой пыльцой отравляют землю и всех людей вокруг! Идите и уничтожьте их ради всего святого!");
        elseif( id == 20609)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20609,"<Font=arial,0,19,20><color=0xfffcf157>Очил:<color=0xffffffff>\\n<A>Члены секты жрецов</A>, терроризирующих жителей этих земель, скрываются в <N>Штольне</N>. Поможете мне проверить эту пещеру?");
	elseif( id == 20610)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20610,"<Font=arial,0,19,20><color=0xfffcf157>Очил:<color=0xffffffff>\\nПожалуйста, отправляйтесь в самую глубину <N>Штольни</N>. <A>Жрецы-последователи</A>, похоже, оттуда распространяют свое влияние на духов нежитей. Божества потеряли <I>орудие власти</I>, с помощью которого они управляли людьми. Пожалуйста, помогите мне вернуть потерянное и убейте главаря этих жрецов.");	
	elseif( id == 20611)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20611,"<Font=arial,0,19,20><color=0xfffcf157>Очил:<color=0xffffffff>\\nОдин странный демон в женском облике из <N>Деревни Восточной Горы</N> пришла помогать мне. Мне кажется, что она не обманула меня. Пожалуйста, пойдите в эту деревню и найдите ее. Думаю, она действительно поможет нам.");
        elseif( id == 20661)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20661,"<Font=arial,0,19,20><color=0xfffcf157>Очил:<color=0xffffffff>\\nВам нужно поднять свой уровень до 82.");
        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 20600)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20600,"<Font=arial,0,19,20><color=0xfffcf157>Очил:<color=0xffffffff>\\nВас действительно послал король? Что ж, ладно, выкладывайте, что там у вас.");
        elseif( id == 20601)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20601,"<Font=arial,0,19,20><color=0xfffcf157>Очил:<color=0xffffffff>\\nВидели, что с ними? Эх, какими они были...");
	elseif( id == 20602)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20602,"<Font=arial,0,19,20><color=0xfffcf157>Очил:<color=0xffffffff>\\nСпасибо вам за помощь!");
	elseif( id == 20603)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20603,"<Font=arial,0,19,20><color=0xfffcf157>Очил:<color=0xffffffff>\\nПочему они такие жадные? Небожителям в их мире живется совсем неплохо, но они все равно завидуют людям...");
        elseif( id == 20604)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20604,"<Font=arial,0,19,20><color=0xfffcf157>Очил:<color=0xffffffff>\\nЗначит, снова замешаны жрецы этой проклятой секты... Хотя они не виноваты, конечно... Они сами под влиянием демонов...");
	elseif( id == 20605)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20605,"<Font=arial,0,19,20><color=0xfffcf157>Очил:<color=0xffffffff>\\nЯ хочу, чтобы они отправились в мир иной с честью. Летите, невинные души!");
	elseif( id == 20606)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20606,"<Font=arial,0,19,20><color=0xfffcf157>Очил:<color=0xffffffff>\\nСпасибо! Я чувствую, что духи сейчас не так беспокойны, как вчера.");
	elseif( id == 20607)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20607,"<Font=arial,0,19,20><color=0xfffcf157>Очил:<color=0xffffffff>\\nДавайте помолимся за них...");
	elseif( id == 20608)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20608,"<Font=arial,0,19,20><color=0xfffcf157>Очил:<color=0xffffffff>\\nСпасибо вам! Вы сделали так много для людей.");
	elseif( id == 20609)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20609,"<Font=arial,0,19,20><color=0xfffcf157>Очил:<color=0xffffffff>\\nЗначит, жрецы произносят эти заклинания... Они могут контролировать духи нежитей...");
	elseif( id == 20610)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20610,"<Font=arial,0,19,20><color=0xfffcf157>Очил:<color=0xffffffff>\\nМайра? Разве она не подчиненная короля Марса? Интересно...");
	elseif( id == 20661)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20661,"<Font=arial,0,19,20><color=0xfffcf157>Очил:<color=0xffffffff>\\nМои поздравления! У вас уже 82 уровень.");
  elseif( id == 30346)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30346,"<Font=arial,0,19,20><color=0xfffcf157>Очил：<color=0xffffffff>\\nА вы, оказывается, намного быстрее, чем я предполагал!");
   
	   end

end

Raokeshan = {}
Raokeshan["OnTalk"] = OnTalk
Raokeshan["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Raokeshan["OnCompleteQuestTalk"] = OnCompleteQuestTalk