//
// Created by rusbaron on 10/6/16.
//

#include "Trash.h"
#include "ui/CocosGUI.h"

Trash::Trash(int IItemIdInput,
             bool BIsStackableInput,
             cocos2d::Sprite* SPItemSpriteInput,
             float FItemCostInput,
             int IQuestIDInput
):Item(IItemIdInput,BIsStackableInput,SPItemSpriteInput,FItemCostInput,IQuestIDInput){
	this->EItemType = ItemType::TrashType;
}
cocos2d::Node* Trash::showAvailableActions() {
    unsigned short USFontSize = 24;
    float FScale = 0.5;

    cocos2d::Node* NPMenu = new cocos2d::Node;

    if(this->IQuestID<0)
    {
        auto sellButton = cocos2d::ui::Button::create("menubutton.png", "menubutton_pressed.png");
        sellButton->setTitleText("Sell");
        sellButton->setTitleFontSize(USFontSize);
        sellButton->setScale(FScale);
        sellButton->setPosition(cocos2d::Vec2(0, 0));
        sellButton->setName("sellButton");
        NPMenu->addChild(sellButton);

        auto dropButton = cocos2d::ui::Button::create("menubutton.png", "menubutton_pressed.png");
        dropButton->setTitleText("Drop");
        dropButton->setTitleFontSize(USFontSize);
        dropButton->setScale(FScale);
        dropButton->setPosition(cocos2d::Vec2(0, -(sellButton->getContentSize().height*FScale)));
        dropButton->setName("dropButton");
        NPMenu->addChild(dropButton);
    }
    return NPMenu;
}

Trash::~Trash(){}

bool Trash::doCompare(const Item& ItemRight){
    return true;
}

void Trash::useItem(void* PUserCalled){}