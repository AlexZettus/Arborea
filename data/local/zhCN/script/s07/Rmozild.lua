
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010204);
	Quest.SetCompleteOptions(5010204);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Сын дьявола Ред: <color=0xffffffff>\\nКому-то очень хочется понюхать, чем пахнут мои кулаки!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 20521)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20521,"<Font=arial,0,19,20><color=0xfffcf157>Сын дьявола Ред: <color=0xffffffff>\\nМне все равно, кто вы! Прежде чем торговаться со мной, покажите, на что вы способны! Для начала разберитесь с монстрами на болоте. Что, испугались?");
        elseif( id == 20522)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20522,"<Font=arial,0,19,20><color=0xfffcf157>Сын дьявола Ред: <color=0xffffffff>\\nНесколько дней назад я обнаружил следы небесных разведчиков у подножия Древней горы, а затем внезапно клан жрецов начал проделывать свои мерзкие делишки. Жрецы создают миражи, чтобы сбить нас с толку, а маги творят огненные заклинания.");
        elseif( id == 20523)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20523,"<Font=arial,0,19,20><color=0xfffcf157>Сын дьявола Ред: <color=0xffffffff>\\n<D>Мастер иллюзий Карина</D> и <D>бог огня Гелиур</D>! Не ведитесь на их сладкие речи и подношения! Они ведут грязную игру против нас. Я клянусь своим именем, именем сына дьявола!");
	elseif( id == 20524)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20524,"<Font=arial,0,19,20><color=0xfffcf157>Сын дьявола Ред: <color=0xffffffff>\\n<M>Астролябия богов</M> поможет нам в войне против небесных врагов! Мы должны вырвать ее из лап этих чудовищ. Сделайте это, чего бы вам это ни стоило! Небесные солдаты так просто своего не отдадут.");
	elseif( id == 20525)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20525,"<Font=arial,0,19,20><color=0xfffcf157>Сын дьявола Ред: <color=0xffffffff>\\nХорошо, я отдаю должное вашей силе. Но напомню, что как только вы чем-то помешаете клану жрецов, то избавитесь от небесного прошлого и станете их врагом. Вы действительно решили пойти путем демона?");
	elseif( id == 20526)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20526,"<Font=arial,0,19,20><color=0xfffcf157>Сын дьявола Ред: <color=0xffffffff>\\nИдите и распросите своего <D>короля Марса</D>, когда закончится хаос на Древней горе. Надеюсь, он вам скажет правду...");
	
        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 20520)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20520,"<Font=arial,0,19,20><color=0xfffcf157>Сын дьявола Ред: <color=0xffffffff>\\nЧто? Здесь небожитель? Вас послала ко мне Зефф? Зачем вы пришли сюда?");
        elseif( id == 20521)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20521,"<Font=arial,0,19,20><color=0xfffcf157>Сын дьявола Ред: <color=0xffffffff>\\nВы удивляете меня! Зефф послала вас с добрыми намерениями? Хорошо, расскажите-ка, что вам нужно!");
	elseif( id == 20522)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20522,"<Font=arial,0,19,20><color=0xfffcf157>Сын дьявола Ред: <color=0xffffffff>\\nЭти небесные военачальники хорошо мне знакомы! Иногда своего врага знаешь лучше, чем друга.");
	elseif( id == 20523)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20523,"<Font=arial,0,19,20><color=0xfffcf157>Сын дьявола Ред: <color=0xffffffff>\\nХорошо, отдохнем! У меня нет доказательств. Вы можете найти их сами!");
	elseif( id == 20524)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20524,"<Font=arial,0,19,20><color=0xfffcf157>Сын дьявола Ред: <color=0xffffffff>\\nСчитаете, что я обманываю вас? Если вы так думаете, то идите к Древней горе и поговорите сами с главой клана жрецов!");
	elseif( id == 20525)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20525,"<Font=arial,0,19,20><color=0xfffcf157>Сын дьявола Ред: <color=0xffffffff>\\nВот теперь я рад назвать вас верным и сильным другом всех демонов! Добро пожаловать в истинный рай!");
       
       end

end

Rmozild = {}
Rmozild["OnTalk"] = OnTalk
Rmozild["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rmozild["OnCompleteQuestTalk"] = OnCompleteQuestTalk