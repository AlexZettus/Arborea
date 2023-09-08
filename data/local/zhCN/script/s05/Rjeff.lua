
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010097);
	Quest.SetCompleteOptions(5010097);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Теолог Джефф:<color=0xffffffff>\\nЧто может быть лучше постижения знаний и наставления молодого поколения на путь добра и справедливости!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 20331)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20331,"<Font=arial,0,19,20><color=0xfffcf157>Теолог Джефф:<color=0xffffffff>\\nЗдесь много охотников, которые преследуют нас только ради забавы. Пожалуйста, помогите нам и сделайте так, чтобы их здесь не было!");
        elseif( id == 20334)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20334,"<Font=arial,0,19,20><color=0xfffcf157>Теолог Джефф:<color=0xffffffff>\\nПосмотрите, мои важнейшие учебные материалы были украдены ворами. Прошу вас, верните их мне.");
        elseif( id == 20335)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20335,"<Font=arial,0,19,20><color=0xfffcf157>Теолог Джефф:<color=0xffffffff>\\nА главарь этой шайки воров где-то рядом. Разберетесь с ним?");
        elseif( id == 20336)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20336,"<Font=arial,0,19,20><color=0xfffcf157>Теолог Джефф:<color=0xffffffff>\\nВершина к югу отсюда заполнена демонами. Повелитель силы Гордон отправился туда исследовать территорию. Я думаю, вам стоило бы пойти туда и предложить свою помощь.");
        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 20335)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20335,"<Font=arial,0,19,20><color=0xfffcf157>Теолог Джефф:<color=0xffffffff>\\nСпасибо, теперь я смогу снова взяться за науки.");
        elseif( id == 20334)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20334,"<Font=arial,0,19,20><color=0xfffcf157>Теолог Джефф:<color=0xffffffff>\\nЭти мерзкие воры покусились на святое и получили по заслугам! Боги все видят.");
        elseif( id == 20335)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20335,"<Font=arial,0,19,20><color=0xfffcf157>Теолог Джефф:<color=0xffffffff>\\nСпасибо! Теперь я смогу снова взяться за науки!");
        elseif( id == 20333)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20333,"<Font=arial,0,19,20><color=0xfffcf157>Теолог Джефф:<color=0xffffffff>\\nО, новый небожитель? Как славно, что вы здесь! Мне очень нужна ваша помощь.");
	 elseif( id == 20349)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20349,"<Font=arial,0,19,20><color=0xfffcf157>Теолог Джефф:<color=0xffffffff>\\nОтличная работа! Рано или поздно северная земля станет плодородной и красивой!");
        elseif( id == 30339)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30339,"<Font=arial,0,19,20><color=0xfffcf157>Теолог Джефф：<color=0xffffffff>\\nВы оказались намного быстрее, чем я предполагал!");

       end

end

Rjeff = {}
Rjeff["OnTalk"] = OnTalk
Rjeff["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rjeff["OnCompleteQuestTalk"] = OnCompleteQuestTalk
