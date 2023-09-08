
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010013);
	Quest.SetCompleteOptions(5010013);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Тирист:<color=0xffffffff>\\nНовичок, если ты не знаешь, где найти нужного для задания монстра, нажми на его подчеркнутое название в списке Задания в правой части экрана. Запомни, что в этом списке подчеркнутым текстом сначала пишется цель задания, а потом имя НИП, которому это задание нужно сдать.");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 20004)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20004,"<Font=arial,0,19,20><color=0xfffcf157>Тирист:<color=0xffffffff>\\nСейчас ты можешь изучать и развивать только навыки новичка. Как только получишь <color=0xff00ddfe>20-й<color=0xffffffff> уровень, тебе предложат выбрать класс, после чего ты сможешь изучать <color=0xff80ff00>классовые навыки<color=0xffffffff>. А до 20-го уровня ты можешь попробовать разные виды оружия.\\nА теперь иди к <color=0xff00ddbb>наставнику Лурате<color=0xffffffff>, чтобы узнать, что делать дальше. Да пребудет с тобой благословение небес!");
        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 20003)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20003,"<Font=arial,0,19,20><color=0xfffcf157>Тирист:<color=0xffffffff>\\nПоздравляю с первой победой!\\nВ дальнейшем ты будешь выполнять задания, получать за это очки опыта и автоматически увеличивать <color=0xffffff00>свой уровень<color=0xffffffff>. Не забывай, что после каждого повышения уровня ты будешь получать <color=0xffffff00>очки навыков<color=0xffffffff>. Их можно тратить на получение новых навыков и усиление тех, которые у тебя изучены. Панель навыков открывается нажатием кнопки <color=0xffff00ff>K<color=0xffffffff>.");

       end

end

Rtianyin = {}
Rtianyin["OnTalk"] = OnTalk
Rtianyin["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rtianyin["OnCompleteQuestTalk"] = OnCompleteQuestTalk