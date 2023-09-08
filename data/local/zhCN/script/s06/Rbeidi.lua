
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010101);
	Quest.SetCompleteOptions(5010101);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель битвы Битти:<color=0xffffffff>\\nХотите стать героем? Я вам помогу!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 20401)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20401,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель битвы Битти:<color=0xffffffff>\\nВы ели когда-нибудь печень кабанов Леса Теней? Это чрезвычайно вкусно, доложу я вам! Просто великолепно! Поохотьтесь-ка на этих кабанов и принесите мне их печенки. Они плодятся хорошо, можно и пострелять.");
        elseif( id == 20402)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20402,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель битвы Битти:<color=0xffffffff>\\nВы ощущаете этот божественный аромат в воздухе? Будьте осторожны, потому что он исходит от пыльцы пикси. Вдыхая его, люди впадают в транс и теряют волю.");
        elseif( id == 20343)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20343,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель битвы Битти:<color=0xffffffff>\\nМы собирались уничтожить всех демонов на Северном посту к югу отсюда, но на нас напали на полпути туда. Поможете нам избавиться от демонов в тех местах?");
        elseif( id == 20403)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20403,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель битвы Битти:<color=0xffffffff>\\nЗдесь обитает королева пикси. Ее очень сложно уничтожить, но нам нужно сделать это."); 
	elseif( id == 20404)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20404,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель битвы Битти:<color=0xffffffff>\\nПохоже, вам следует еще тренироваться. Приходите ко мне, когда поднимете свой уровень до 52."); 	
	elseif( id == 20405)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20405,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель битвы Битти:<color=0xffffffff>\\nВ этих местах обосновалась таинственная секта призраков.  Думаю, что она как-то связана с демонами. Я видела у их хилиастов разные книги заклинаний. Можете найти несколько этих книг?"); 	
	elseif( id == 20406)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20406,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель битвы Битти:<color=0xffffffff>\\nУ членов секты призраков есть какое-то таинственное растение, наводящее ужас одним своим видом. Кроме него у  сектантов есть еще какие-то жуткие то ли духи, то ли эльфы. Лучше всего будет избавиться от них, как можно скорее."); 
	elseif( id == 20407)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20407,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель битвы Битти:<color=0xffffffff>\\nНеподалеку отсюда есть Пещера света. Похоже, там сосредоточены главные силы секты призраков. Нужно сходить туда на разведку, но вам пока это не под силу. Наберитесь побольше опыта, а потом можно будет попробовать."); 
	elseif( id == 20408)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20408,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель битвы Битти:<color=0xffffffff>\\nВ Пещере света полным-полно хилиастов из секты призраков. Пойдите и очистите ее от них."); 
	elseif( id == 20409)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20409,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель битвы Битти:<color=0xffffffff>\\nЯ думаю, чтобы подорвать деятельность секты призраков, нужно избавиться от их главаря."); 
	elseif( id == 20410)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20410,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель битвы Битти:<color=0xffffffff>\\nА сейчас пойдите в Каменный город и посмотрите, что там происходит. Секта призраков тесно сотрудничает с жителями города. Но вам будет легче, если вы перед тем, как идти, поднимете свой уровень до 58. Это место крайне опасное, а вне города где-то скрывается Барцель."); 		   
	elseif( id == 30501)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30501,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель битвы Битти:<color=0xffffffff>\\nВы слышали об Обители зла? Врата обители зла открыты ежедневно с 21.00 до 23.00. Поговорите с сыном дьявола в Тарио, чтобы попасть в Обитель зла. Там вы встретите самых яростных монстров, охраняющих великие сокровища своего обиталища. Сходите туда и попытайте счастья в этом опасном подземелье!");
	elseif( id == 30502)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30502,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель битвы Битти:<color=0xffffffff>\\nВрата обители зла открыты ежедневно с 21.00 до 22.00. Поговорите с сыном дьявола в Тарио, чтобы переместиться в Обитель зла. Там вы встретите самых яростных монстров, охраняющих великие сокровища своего обиталища. Сходите и попытайте счастья в этом опасном подземелье!");
  elseif( id == 30503)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30503,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель битвы Битти:<color=0xffffffff>\\nВрата обители зла открыты ежедневно с 21.00 до 22.00. Поговорите с сыном дьявола в Тарио, чтобы переместиться в Обитель зла. Там вы встретите самых яростных монстров, охраняющих великие сокровища своего обиталища. Сходите и попытайте счастья в этом опасном подземелье!");
	elseif( id == 20429)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20429,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель битвы Битти:<color=0xffffffff>\\nСекта призраков с помощью хилиастов стремится расширить свою зону влияния. Нужно как можно скорее остановить их.");
	elseif( id == 20431)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20431,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель битвы Битти:<color=0xffffffff>\\nХилиасты секты призраков становятся сильнее и опаснее буквально на глазах. Я хочу, чтобы вы устранили их, прежде чем они превратятся в настоящих чудовищ.");
	
	end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 20400)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20400,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель битвы Битти:<color=0xffffffff>\\nБьюсь об заклад, что вы и представить себе не могли женщину в роли повелителя битв! Я права? Похоже, да. Но не удивляйтесь особо. Я очень сильна и достойна этого звания!");
        elseif( id == 20401)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20401,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель битвы Битти:<color=0xffffffff>\\nХорошо, теперь поговорим о деле.");   
        elseif( id == 20402)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20402,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель битвы Битти:<color=0xffffffff>\\nСделали? Отлично! Хм, взгляд у вас мутноватый. Похоже, пыльца начинает действовать. Дышите глубже, и все пройдет."); 
        elseif( id == 20403)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20403,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель битвы Битти:<color=0xffffffff>\\nОх, теперь я могу вздохнуть посвободнее."); 
	elseif( id == 20404)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20404,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель битвы Битти:<color=0xffffffff>\\nНеплохо!");  
	elseif( id == 20405)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20405,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель битвы Битти:<color=0xffffffff>\\nДавайте узнаем, что такое настоящий ад!");  
	elseif( id == 20406)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20406,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель битвы Битти:<color=0xffffffff>\\nОтлично! Хорошая работа!");  
	elseif( id == 20407)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20407,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель битвы Битти:<color=0xffffffff>\\nГотовы? Мы можем начинать!");  
	elseif( id == 20408)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20408,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель битвы Битти:<color=0xffffffff>\\nТаких воинов света, как вы, мне еще не приходилось видеть!");  
	elseif( id == 20409)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20409,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель битвы Битти:<color=0xffffffff>\\nОтлично! Это именно то, что я хотела! Не думаю, что секта скоро оправится от такой потери.");  
	elseif( id == 30501)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30501,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель битвы Битти:<color=0xffffffff>\\nВы видели привидение-изверга? Если нет, то стоит потратить время и силы, но в конце концов найти его! Я очень завидую тому, кто сможет получить его сокровища!"); 
	elseif( id == 30502)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30502,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель битвы Битти:<color=0xffffffff>\\nВы видели привидение-изверга? Если нет, то стоит потратить время и силы, но в конце концов найти его! Я очень завидую тому, кто сможет получить его сокровища!"); 
	elseif( id == 30503)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30503,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель битвы Битти:<color=0xffffffff>\\nВы видели привидение-изверга? Если нет, то стоит потратить время и силы, но в конце концов найти его! Я очень завидую тому, кто сможет получить его сокровища!"); 
	elseif( id == 20430)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20430,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель битвы Битти:<color=0xffffffff>\\nМы могли бы спасти жизни многих людей, если бы вы пришли раньше... Но лучше поздно, чем никогда..."); 
       elseif( id == 20436)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20436,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель битвы Битти:<color=0xffffffff>\\nЕго смерть поднимет дух наших солдат!"); 
	   elseif( id == 30340)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30340,"<Font=arial,0,19,20><color=0xfffcf157>Повелитель битвы Битти：<color=0xffffffff>\\nВы оказались намного быстрее, чем я предполагал!");
	
       end

end

Rbeidi = {}
Rbeidi["OnTalk"] = OnTalk
Rbeidi["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rbeidi["OnCompleteQuestTalk"] = OnCompleteQuestTalk