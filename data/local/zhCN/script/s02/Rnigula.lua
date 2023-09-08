
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5600011);
	Quest.SetCompleteOptions(5600011);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВьюжный Край хранит много тайн!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
	if( id == 30679)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30679,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nПожалуйста, найдите 3 листа омелы и 3 сердца снеговика.");
	elseif( id == 30680)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30680,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nДля участия в новогодних ивентах вам понадобятся снежные монеты.");
        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
	if( id == 30658)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30658,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы отлично справились! Вьюжный Край хоть чуть-чуть стал безопаснее! Вот ваша награда. Спасибо за помощь!");
	elseif( id == 30659)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30659,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы отлично справились! Вьюжный Край хоть чуть-чуть стал безопаснее! Вот ваша награда. Спасибо за помощь!");
	elseif( id == 30660)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30660,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы отлично справились! Вьюжный Край хоть чуть-чуть стал безопаснее! Вот ваша награда. Спасибо за помощь!");
	elseif( id == 30661)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30661,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы отлично справились! Вьюжный Край хоть чуть-чуть стал безопаснее! Вот ваша награда. Спасибо за помощь!");
	elseif( id == 30662)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30662,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы отлично справились! Вьюжный Край хоть чуть-чуть стал безопаснее! Вот ваша награда. Спасибо за помощь!");
	elseif( id == 30663)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30663,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы отлично справились! Вьюжный Край хоть чуть-чуть стал безопаснее! Вот ваша награда. Спасибо за помощь!");
	elseif( id == 30664)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30664,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы отлично справились! Вьюжный Край хоть чуть-чуть стал безопаснее! Вот ваша награда. Спасибо за помощь!");
	elseif( id == 30665)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30665,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы отлично справились! Вьюжный Край хоть чуть-чуть стал безопаснее! Вот ваша награда. Спасибо за помощь!");
	elseif( id == 30666)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30666,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы отлично справились! Вьюжный Край хоть чуть-чуть стал безопаснее! Вот ваша награда. Спасибо за помощь!");
	elseif( id == 30667)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30667,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы отлично справились! Вьюжный Край хоть чуть-чуть стал безопаснее! Вот ваша награда. Спасибо за помощь!");
	elseif( id == 30668)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30668,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы отлично справились! Вьюжный Край хоть чуть-чуть стал безопаснее! Вот ваша награда. Спасибо за помощь!");
	elseif( id == 30669)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30669,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы отлично справились! Вьюжный Край хоть чуть-чуть стал безопаснее! Вот ваша награда. Спасибо за помощь!");
	elseif( id == 30670)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30670,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы отлично справились! Вьюжный Край хоть чуть-чуть стал безопаснее! Вот ваша награда. Спасибо за помощь!");
	elseif( id == 30671)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30671,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы отлично справились! Вьюжный Край хоть чуть-чуть стал безопаснее! Вот ваша награда. Спасибо за помощь!");
	elseif( id == 30672)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30672,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы отлично справились! Вьюжный Край хоть чуть-чуть стал безопаснее! Вот ваша награда. Спасибо за помощь!");
	elseif( id == 30673)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30673,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы отлично справились! Вьюжный Край хоть чуть-чуть стал безопаснее! Вот ваша награда. Спасибо за помощь!");
	elseif( id == 30674)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30674,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы отлично справились! Вьюжный Край хоть чуть-чуть стал безопаснее! Вот ваша награда. Спасибо за помощь!");
	elseif( id == 30675)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30675,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы отлично справились! Вьюжный Край хоть чуть-чуть стал безопаснее! Вот ваша награда. Спасибо за помощь!");
	elseif( id == 30676)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30676,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы отлично справились! Вьюжный Край хоть чуть-чуть стал безопаснее! Вот ваша награда. Спасибо за помощь!");
	elseif( id == 30677)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30677,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы отлично справились! Вьюжный Край хоть чуть-чуть стал безопаснее! Вот ваша награда. Спасибо за помощь!");
	elseif( id == 30678)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30678,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы отлично справились! Вьюжный Край хоть чуть-чуть стал безопаснее! Вот ваша награда. Спасибо за помощь!");
	elseif( id == 30679)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30679,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы можете выполнять его раз в день.");
	elseif( id == 30680)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30680,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nПриглашаю вас поучаствовать в Новогоднем ивенте!");
	elseif( id == 30690)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30690,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы отлично справились! Вьюжный Край хоть чуть-чуть стал безопаснее! Вот ваша награда. Спасибо за помощь!");
	elseif( id == 30691)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30691,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы отлично справились! Вьюжный Край хоть чуть-чуть стал безопаснее! Вот ваша награда. Спасибо за помощь!");
	elseif( id == 30692)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30692,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы отлично справились! Вьюжный Край хоть чуть-чуть стал безопаснее! Вот ваша награда. Спасибо за помощь!");
	elseif( id == 30693)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30693,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы отлично справились! Вьюжный Край хоть чуть-чуть стал безопаснее! Вот ваша награда. Спасибо за помощь!");
	elseif( id == 30694)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30694,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы отлично справились! Вьюжный Край хоть чуть-чуть стал безопаснее! Вот ваша награда. Спасибо за помощь!");
	elseif( id == 30695)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30695,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы отлично справились! Вьюжный Край хоть чуть-чуть стал безопаснее! Вот ваша награда. Спасибо за помощь!");
	elseif( id == 30696)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30696,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы отлично справились! Вьюжный Край хоть чуть-чуть стал безопаснее! Вот ваша награда. Спасибо за помощь!");
	elseif( id == 30697)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30697,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы отлично справились! Вьюжный Край хоть чуть-чуть стал безопаснее! Вот ваша награда. Спасибо за помощь!");
	elseif( id == 30698)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30698,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы отлично справились! Вьюжный Край хоть чуть-чуть стал безопаснее! Вот ваша награда. Спасибо за помощь!");
	elseif( id == 30699)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30699,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы отлично справились! Вьюжный Край хоть чуть-чуть стал безопаснее! Вот ваша награда. Спасибо за помощь!");
	elseif( id == 30700)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30700,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы отлично справились! Вьюжный Край хоть чуть-чуть стал безопаснее! Вот ваша награда. Спасибо за помощь!");
	elseif( id == 30701)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30701,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы отлично справились! Вьюжный Край хоть чуть-чуть стал безопаснее! Вот ваша награда. Спасибо за помощь!");
	elseif( id == 30702)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30702,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы отлично справились! Вьюжный Край хоть чуть-чуть стал безопаснее! Вот ваша награда. Спасибо за помощь!");
	elseif( id == 30703)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30703,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы отлично справились! Вьюжный Край хоть чуть-чуть стал безопаснее! Вот ваша награда. Спасибо за помощь!");
	elseif( id == 30704)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30704,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы отлично справились! Вьюжный Край хоть чуть-чуть стал безопаснее! Вот ваша награда. Спасибо за помощь!");
	elseif( id == 30705)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30705,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы отлично справились! Вьюжный Край хоть чуть-чуть стал безопаснее! Вот ваша награда. Спасибо за помощь!");
	elseif( id == 30706)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30706,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы отлично справились! Вьюжный Край хоть чуть-чуть стал безопаснее! Вот ваша награда. Спасибо за помощь!");
	elseif( id == 30707)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30707,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы отлично справились! Вьюжный Край хоть чуть-чуть стал безопаснее! Вот ваша награда. Спасибо за помощь!");
	elseif( id == 30708)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30708,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы отлично справились! Вьюжный Край хоть чуть-чуть стал безопаснее! Вот ваша награда. Спасибо за помощь!");
	elseif( id == 30709)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30709,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы отлично справились! Вьюжный Край хоть чуть-чуть стал безопаснее! Вот ваша награда. Спасибо за помощь!");
	elseif( id == 30710)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30710,"<Font=arial,0,19,20><color=0xfffcf157>Снегула:<color=0xffffffff>\\nВы отлично справились! Вьюжный Край хоть чуть-чуть стал безопаснее! Вот ваша награда. Спасибо за помощь!");
       end

end

Rnigula= {}
Rnigula["OnTalk"] = OnTalk
Rnigula["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rnigula["OnCompleteQuestTalk"] = OnCompleteQuestTalk