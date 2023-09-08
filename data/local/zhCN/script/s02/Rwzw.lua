local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5600017);
	Quest.SetCompleteOptions(5600017);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Король ветчины:<color=0xffffffff><Font=arial,0,17,20>\\nПеред вам король! Ведите себя как следует!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 30681)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30681,"<Font=arial,0,19,20><color=0xfffcf157>Король ветчины:<color=0xffffffff><Font=arial,0,17,20>\\nВы знаете, что самое вкусное в новогоднем ужине? Ветчина! Никакой индюшки! Я ненавижу индюков и всю эту мерзкую вонючую индюшатину! Вы знаете, что от нее у вас может быть гастрит и расстройство желудка? А ветчина полезна для здоровья и настроения! Нет ничего вкуснее ветчины!");
        elseif( id == 30682)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30682,"<Font=arial,0,19,20><color=0xfffcf157>Король ветчины:<color=0xffffffff><Font=arial,0,17,20>\\nВы знаете, что самое вкусное в новогоднем ужине? Ветчина! Никакой индюшки! Я ненавижу индюков и всю эту мерзкую вонючую индюшатину! Вы знаете, что от нее у вас может быть гастрит и расстройство желудка? А ветчина полезна для здоровья и настроения! Нет ничего вкуснее ветчины!");
        elseif( id == 30683)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30683,"<Font=arial,0,19,20><color=0xfffcf157>Король ветчины:<color=0xffffffff><Font=arial,0,17,20>\\nВы знаете, что самое вкусное в новогоднем ужине? Ветчина! Никакой индюшки! Я ненавижу индюков и всю эту мерзкую вонючую индюшатину! Вы знаете, что от нее у вас может быть гастрит и расстройство желудка? А ветчина полезна для здоровья и настроения! Нет ничего вкуснее ветчины!");
	elseif( id == 30684)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30684,"<Font=arial,0,19,20><color=0xfffcf157>Король ветчины:<color=0xffffffff><Font=arial,0,17,20>\\nВы знаете, что самое вкусное в новогоднем ужине? Ветчина! Никакой индюшки! Я ненавижу индюков и всю эту мерзкую вонючую индюшатину! Вы знаете, что от нее у вас может быть гастрит и расстройство желудка? А ветчина полезна для здоровья и настроения! Нет ничего вкуснее ветчины!");

        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 30681)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30681,"<Font=arial,0,19,20><color=0xfffcf157>Король ветчины:<color=0xffffffff><Font=arial,0,17,20>\\nПомните, что мы, нежные и ароматные кусочки ветчины, самое лакомое блюдо на новогоднем столе!");
        elseif( id == 30682)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30682,"<Font=arial,0,19,20><color=0xfffcf157>Король ветчины:<color=0xffffffff><Font=arial,0,17,20>\\nПомните, что мы, нежные и ароматные кусочки ветчины, самое лакомое блюдо на новогоднем столе!");
	elseif( id == 30683)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30683,"<Font=arial,0,19,20><color=0xfffcf157>Король ветчины:<color=0xffffffff><Font=arial,0,17,20>\\nПомните, что мы, нежные и ароматные кусочки ветчины, самое лакомое блюдо на новогоднем столе!");
	 elseif( id == 30684)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30684,"<Font=arial,0,19,20><color=0xfffcf157>Король ветчины:<color=0xffffffff><Font=arial,0,17,20>\\nПомните, что мы, нежные и ароматные кусочки ветчины, самое лакомое блюдо на новогоднем столе!");
      
       end

end

Rwzw = {}
Rwzw["OnTalk"] = OnTalk
Rwzw["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rwzw["OnCompleteQuestTalk"] = OnCompleteQuestTalk