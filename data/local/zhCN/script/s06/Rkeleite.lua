
local function OnTalk()
	Quest.ClearNPCTalkOptions();  --清除对话框选项
	Quest.SetAcceptOptions(5010161);
	Quest.SetCompleteOptions(5010161);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Колет:<color=0xffffffff>\\nОх, секта призраков доставляет нам столько хлопот!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
	 if( id == 20416)then
	  Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(20416,"<Font=arial,0,19,20><color=0xfffcf157>Колет:<color=0xffffffff>\\nЯ думаю, Барцель прав, что мы смогли уничтожить только часть секты призраков. Нам нельзя успокаиваться.");
	 elseif( id == 20417)then
			Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(20417,"<Font=arial,0,19,20><color=0xfffcf157>Колет:<color=0xffffffff>\\nЕсть еще одна организация, которая зовет себя кланом призраков. Они сотрудничают с сектой призраков. Вы могли бы найти несколько хилиастов клана призраков. Может, мы сможем выпытать у них какую-нибудь информацию о секте призраков.");
	 elseif( id == 20418)then
			Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(20418,"<Font=arial,0,19,20><color=0xfffcf157>Колет:<color=0xffffffff>\\nВ секте призраков пользуется особым уважением Бестеневой. Должно быть, он демон. Нужно убить его.");
	 elseif( id == 20419)then
			Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(20419,"<Font=arial,0,19,20><color=0xfffcf157>Колет:<color=0xffffffff>\\nОх, сложно бороться с сектой призраков... И вам, и нам нужно стать сильнее. Думаю, Синтия поможет вам в этом.");
	 end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
	 if( id == 20415)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(20415,"<Font=arial,0,19,20><color=0xfffcf157>Колет:<color=0xffffffff>\\nЗдравствуйте! Вы от Рамесы?");
	 elseif( id == 20416)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(20416,"<Font=arial,0,19,20><color=0xfffcf157>Колет:<color=0xffffffff>\\nМы должны уничтожить эту проклятую секту призраков!");
	 elseif( id == 20417)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(20417,"<Font=arial,0,19,20><color=0xfffcf157>Колет:<color=0xffffffff>\\nПозвольте мне посмотреть на этот приказ пяти призраков.");
	 elseif( id == 20418)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(20418,"<Font=arial,0,19,20><color=0xfffcf157>Колет:<color=0xffffffff>\\nНам нужно работать усерднее!");
	 
	 elseif( id == 30342)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30342,"<Font=arial,0,19,20><color=0xfffcf157>Колет：<color=0xffffffff>\\nА вы, оказывается, намного быстрее, чем я думала.");

	 end

end

Rkeleite = {}
Rkeleite["OnTalk"] = OnTalk
Rkeleite["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rkeleite["OnCompleteQuestTalk"] = OnCompleteQuestTalk