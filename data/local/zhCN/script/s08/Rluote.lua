
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010209);
	Quest.SetCompleteOptions(5010209);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Ротт:<color=0xffffffff>\\nВы хотите стать моим другом? Тогда подарите мне что-нибудь.");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 20631)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20631,"<Font=arial,0,19,20><color=0xfffcf157>Ротт:<color=0xffffffff>\\nСейчас я ищу след <color=0xffff0000>потрошителя земли<color=0xffffffff>, но найти его так сложно... Я слышал, что только королевские особы могут иметь дракона, поэтому я буду счастлив иметь хотя бы копию их следа...");
        elseif( id == 20632)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20632,"<Font=arial,0,19,20><color=0xfffcf157>Ротт:<color=0xffffffff>\\nМне сказали, что <color=0xffff0000>потрошителя земли<color=0xffffffff> охраняют несколько <color=0xffff6000>больших кровавых волков<color=0xffffffff>. Я не могу сам справиться с ними. Поможете мне? Хорошо, если вы согласитесь, то не принесете ли вы мне еще и демонический кристалл. ");
        elseif( id == 20633)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20633,"<Font=arial,0,19,20><color=0xfffcf157>Ротт:<color=0xffffffff>\\nРаз мы теперь друзья, то, может, принесете мне тогда еще <C>1</C> <I>коготь потрошителя земли</I> и <C>30</C> <I>когтей Большого кровавого волка</I>! Где их взять? Убив потрошителя земли и Больших кровавых волков, конечно!");
	elseif( id == 20634)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20634,"<Font=arial,0,19,20><color=0xfffcf157>Ротт:<color=0xffffffff>\\nГоворите Ротту, что вы - лучший боец короля Марса? Ну-ну, тогда у меня будет для вас простое задание: разузнайте, чем здесь занимаются демоны. Но смотрите, они могут проделывать разные неприятные трюки! Готовьтесь к этому.");	
	elseif( id == 20635)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20635,"<Font=arial,0,19,20><color=0xfffcf157>Ротт:<color=0xffffffff>\\nНе стесняйтесь, посмотрите, что это. Может быть, вы обнаружите что-то неожиданное.");
        elseif( id == 20636)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20636,"<Font=arial,0,19,20><color=0xfffcf157>Ротт:<color=0xffffffff>\\nИ снова в <N>пустыню Солемн</N>, но теперь за кое-чем другим! Штормовые маги стали вести себя как одержимые. Они грабят в пустыне путников и нападают на небесных рыцарей. Накажите их!");
	elseif( id == 20637)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20637,"<Font=arial,0,19,20><color=0xfffcf157>Ротт:<color=0xffffffff>\\n<color=0xffff0000>Призрачная стрела<color=0xffffffff> и его <color=0xffff6000>безумные демоны-последователи<color=0xffffffff> ужасают своей свирепостью и мощью! Они не под силу обычным небесным рыцарям. Если вы не уверены в своих силах, то я не буду посылать вас на верную гибель.");
	elseif( id == 20638)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20638,"<Font=arial,0,19,20><color=0xfffcf157>Ротт:<color=0xffffffff>\\nНе беспокойтесь, можете начать с самого легкого. Отправляйтесь в <N>Пещеру песка</N> и уничтожте обитающих там монстров!");
        elseif( id == 20639)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20639,"<Font=arial,0,19,20><color=0xfffcf157>Ротт:<color=0xffffffff>\\nХотите задание посерьезней? Хорошо! Возвращайтесь в <N>Пещеру песка</N> и убейте всех <color=0xffff0000>владык Горы смерти<color=0xffffffff> и других монстров того же вида!");
	elseif( id == 20640)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20640,"<Font=arial,0,19,20><color=0xfffcf157>Ротт:<color=0xffffffff>\\nУ вас очень усталый вид. Давайте немного отдохнем! Принесите <C>30</C> <I>сэндрагонов</I>, и я приготовлю вам из них вкусное блюдо для вас.");	
	elseif( id == 20641)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20641,"<Font=arial,0,19,20><color=0xfffcf157>Ротт:<color=0xffffffff>\\nПриветствую вас, мой друг! Что-то сегодня жарковато. Я очень хочу пить. Пожалуйста, сходите в лес к югу отсюда и соберите несколько <I>диких фруктов</I> для меня. И выбирайте там посочнее!");       
        elseif( id == 20642)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20642,"<Font=arial,0,19,20><color=0xfffcf157>Ротт:<color=0xffffffff>\\nЧто? Вы нашли этих сектантов, которые называют себя священным кланом? Хм... Должно быть, они ищут тут сокровища... Найдите <A>жреца-кладоискателя</A> и допросите его. А если будет молчать, устройте ему пытку!");
        elseif( id == 20643)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20643,"<Font=arial,0,19,20><color=0xfffcf157>Ротт:<color=0xffffffff>\\nПодождите! Сначала помогите мне поймать <color=0xffff0000>черную ведьму<color=0xffffffff>. У меня есть к ней пара вопросов.");
	elseif( id == 20644)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20644,"<Font=arial,0,19,20><color=0xfffcf157>Ротт:<color=0xffffffff>\\nТак, подготовка закончена. Теперь к действиям!");	
	elseif( id == 20645)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20645,"<Font=arial,0,19,20><color=0xfffcf157>Ротт:<color=0xffffffff>\\nРазожгите <I>сигнальные фейерверки</I>!");
        elseif( id == 20646)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20646,"<Font=arial,0,19,20><color=0xfffcf157>Ротт:<color=0xffffffff>\\nЯ заметил подозрительного типа, который появился недавно в <N>Нефритовой деревне</N>. Пожалуйста, узнайте кто это и зачем он пришел.");
	elseif( id == 20647)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20647,"<Font=arial,0,19,20><color=0xfffcf157>Ротт:<color=0xffffffff>\\nЭти дикари обязательно должны примкнуть к демонам. Уничтожьте их, пока этого не произошло!");
	elseif( id == 20648)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20648,"<Font=arial,0,19,20><color=0xfffcf157>Ротт:<color=0xffffffff>\\nЯ знаю, вам не очень-то нравится мое поведение. Но поймите, небожители и демоны сейчас враждуют. У меня был друг детства... Хороший друг, мы постоянно были вместе... А однажды я узнал, что он сообщник демонов... Теперь он в Лунном источнике. Найдите его. Может, он что-то расскажет вам.");
        elseif( id == 20662)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20662,"<Font=arial,0,19,20><color=0xfffcf157>Ротт:<color=0xffffffff>\\nПойдите и наберитесь побольше опыта.");
	elseif( id == 20663)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20663,"<Font=arial,0,19,20><color=0xfffcf157>Ротт:<color=0xffffffff>\\nЕсли вы хотите продолжать свой путь воина, вам нужно побольше тренироваться и постоянно поднимать свой уровень.");
	end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 20630)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20630,"<Font=arial,0,19,20><color=0xfffcf157>Ротт:<color=0xffffffff>\\nЗдесь! Здесь! Куда он исчез?");
        elseif( id == 20631)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20631,"<Font=arial,0,19,20><color=0xfffcf157>Ротт:<color=0xffffffff>\\nЧто? Вы ничего не слышали?");
	elseif( id == 20632)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20632,"<Font=arial,0,19,20><color=0xfffcf157>Ротт:<color=0xffffffff>\\nМоя мечта становится явью! Ох, вы мой лучший друг!");
	elseif( id == 20633)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20633,"<Font=arial,0,19,20><color=0xfffcf157>Ротт:<color=0xffffffff>\\nУф, неплохо! Я рад знакомству с вами!");
        elseif( id == 20634)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20634,"<Font=arial,0,19,20><color=0xfffcf157>Ротт:<color=0xffffffff>\\nВы видели этот особенный камень? Я подозреваю, что демоны скрываются под ним!");
	elseif( id == 20635)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20635,"<Font=arial,0,19,20><color=0xfffcf157>Ротт:<color=0xffffffff>\\nДемоны тоже охотятся за <color=0xffff0000>потрошителем земли<color=0xffffffff>. Но успеха смогут добиться только самые быстрые и ловкие!");
	elseif( id == 20636)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20636,"<Font=arial,0,19,20><color=0xfffcf157>Ротт:<color=0xffffffff>\\nВсе прошло гладко? Вы нашли их лидера?");
	elseif( id == 20637)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20637,"<Font=arial,0,19,20><color=0xfffcf157>Ротт:<color=0xffffffff>\\nХе-хе! Вы должны меня благодарить за то, что я дал вам такой отличный шанс показать себя! Честно говоря, вы намного сильнее, чем я предполагал...");
	elseif( id == 20638)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20638,"<Font=arial,0,19,20><color=0xfffcf157>Ротт:<color=0xffffffff>\\nОх, неплохо... У вас не должно возникнуть проблем с <color=0xffff0000>владыкой Горы смерти<color=0xffffffff>.");
	elseif( id == 20639)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20639,"<Font=arial,0,19,20><color=0xfffcf157>Ротт:<color=0xffffffff>\\nЯ закончил свою работу. Спасибо вам большое!");
	elseif( id == 20640)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20640,"<Font=arial,0,19,20><color=0xfffcf157>Ротт:<color=0xffffffff>\\nНе хотите ли попробовать сэндрагонов? Это очень вкусно! Подождите немного, я вам их приготовлю.");
	elseif( id == 20641)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20641,"<Font=arial,0,19,20><color=0xfffcf157>Ротт:<color=0xffffffff>\\nХм... Я чую запах кровожадных жрецов из этой проклятой секты...");
	elseif( id == 20642)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20642,"<Font=arial,0,19,20><color=0xfffcf157>Ротт:<color=0xffffffff>\\nДавайте отправим их всех прямо в ад!");
	elseif( id == 20643)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20643,"<Font=arial,0,19,20><color=0xfffcf157>Ротт:<color=0xffffffff>\\nПроклятые предатели! Хорошо, я преподам ей урок хороших манер!");
	elseif( id == 20644)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20644,"<Font=arial,0,19,20><color=0xfffcf157>Ротт:<color=0xffffffff>\\nСлавно! Мы можем сделать хороший отчет.");
	elseif( id == 20645)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20645,"<Font=arial,0,19,20><color=0xfffcf157>Ротт:<color=0xffffffff>\\nУгадаете, какую награду я могу дать вам в этот раз?");
	elseif( id == 20646)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20646,"<Font=arial,0,19,20><color=0xfffcf157>Ротт:<color=0xffffffff>\\nКакой я умный! Дальше...");
	elseif( id == 20647)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20647,"<Font=arial,0,19,20><color=0xfffcf157>Ротт:<color=0xffffffff>\\nХорошая работа! Смерть демонам!");
	elseif( id == 20662)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20662,"<Font=arial,0,19,20><color=0xfffcf157>Ротт:<color=0xffffffff>\\nВы достигри 93 уровня. Впереди вас ждут новые испытания!");
	elseif( id == 20663)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20663,"<Font=arial,0,19,20><color=0xfffcf157>Ротт:<color=0xffffffff>\\nРаботайте усердно. Вам еще много предстоит сделать.");
       end

end

Rluote = {}
Rluote["OnTalk"] = OnTalk
Rluote["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rluote["OnCompleteQuestTalk"] = OnCompleteQuestTalk