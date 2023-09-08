
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010091);
	Quest.SetCompleteOptions(5010091);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Нил:<color=0xffffffff>\\nКто вы? Герой? Я не верю своим глазам. Мне казалось, что я никогда не увижу человеческого лица!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 20310)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20310,"<Font=arial,0,19,20><color=0xfffcf157>Нил:<color=0xffffffff>\\nВсе животные здесь попали под влияние демонической энергии и превратились в монстров! На меня напали <D>ледяные охотники</D>. Эти существа обладают невероятной жестокостью. Они не просто убивают людей. Они упиваются их страданиями! Небо! Необходимо хотя бы немного сократить их популяцию. Это позволит людям нашего города собрать специальный отряд для полного уничтожения нависшей над нами угрозы!");
        elseif( id == 20311)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20311,"<Font=arial,0,19,20><color=0xfffcf157>Нил:<color=0xffffffff>\\nКогда я пришёл сюда... Я пытался добыть одну вещь. Клык гигантского волка, которого здесь называют <color=0xffff6000>владыкой стаи<color=0xffffffff>. Этот клык таит в себе колоссальную силу. В дальнейшем мы сможем применить эту силу против демонов! Мне очень нужна эта вещь. Нам всем она нужна, <color=0xff05ff00>"..Quest.GetPlayerName().."<color=0xfffff7e0>.");
        elseif( id == 20312)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20312,"<Font=arial,0,19,20><color=0xfffcf157>Нил:<color=0xffffffff>\\nПрошу тебя, передай моему брату о том, что здесь произошло. Я не хочу, чтобы он волновался за меня! Спасибо!");
        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 20309)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20309,"<Font=arial,0,19,20><color=0xfffcf157>Нил:<color=0xffffffff>\\nТы спас мою жизнь. То, с чем я здесь столкнулся, ужасно. Человеку не место в подобном месте.");
        elseif( id == 20310)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20310,"<Font=arial,0,19,20><color=0xfffcf157>Нил:<color=0xffffffff>\\nВы сделали это! Я поражен вашей отвагой и... силой! С трудом верится, что человек может победить таких существ в одиночку... Впрочем, человек ли ты?");
        elseif( id == 20311)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20311,"<Font=arial,0,19,20><color=0xfffcf157>Нил:<color=0xffffffff>\\nСпасибо тебе, герой! Теперь я смогу вернуться в город и передать этот клык нашим старейшинам. Посмотри, он прозрачный, как горный хрусталь... Красиво!");
       end

end	

Rxuerong = {}
Rxuerong["OnTalk"] = OnTalk
Rxuerong["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rxuerong["OnCompleteQuestTalk"] = OnCompleteQuestTalk