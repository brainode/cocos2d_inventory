//
// Created by rusbaron on 10/5/16.
//

#include "Equipment.h"
#include "ui/CocosGUI.h"

Equipment::Equipment(int IItemIdInput,
                     bool BIsStackableInput,
                     cocos2d::Sprite* SPItemSpriteInput,
                     float FItemCostInput,
                     int IItemEffectStrenghtInput,
                     int IQuestIDInput
):Item(IItemIdInput,BIsStackableInput,SPItemSpriteInput,FItemCostInput,IQuestIDInput)
{
	this->EItemType = ItemType::EquipmentType;
    this->IItemEffectStrenght=IItemEffectStrenghtInput;
}
cocos2d::Node* Equipment::showAvailableActions() {
    unsigned short USFontSize = 24;
    float FScale = 2;

    cocos2d::Node* NPMenu = new cocos2d::Node;

    auto useButton = cocos2d::ui::Button::create("menubutton.png", "menubutton_pressed.png");
    useButton->setTitleText("Use");
    useButton->setTitleFontSize(USFontSize);
    useButton->setScale(FScale);
    useButton->setName("actionButton");
    useButton->addClickEventListener([this](cocos2d::Ref* sender) {
        cocos2d::log("Clicked");
    });
    NPMenu->addChild(useButton);

    if(this->IQuestID<0)
    {
        auto sellButton = cocos2d::ui::Button::create("menubutton.png", "menubutton_pressed.png");
        sellButton->setTitleText("Sell");
        sellButton->setTitleFontSize(USFontSize);
        sellButton->setScale(FScale);
        sellButton->setPosition(cocos2d::Vec2(0,-(useButton->getContentSize().height*2)));
        sellButton->setName("actionButton");
        sellButton->addClickEventListener([this](cocos2d::Ref* sender) {
        });
        NPMenu->addChild(sellButton);

        auto dropButton = cocos2d::ui::Button::create("menubutton.png", "menubutton_pressed.png");
        dropButton->setTitleText("Drop");
        dropButton->setTitleFontSize(USFontSize);
        dropButton->setScale(FScale);
        dropButton->setPosition(cocos2d::Vec2(0, -(useButton->getContentSize().height*4)));
        dropButton->setName("actionButton");
        dropButton->addClickEventListener([this](cocos2d::Ref* sender) {
        });
        NPMenu->addChild(dropButton);
    }
    return NPMenu;
}

Equipment::~Equipment() {

}

bool Equipment::doCompare(const Item& ItemRight){
    bool BIsEqual = false;
    const Equipment* pRightB = dynamic_cast<const Equipment*>(&ItemRight);
    if (pRightB)
    {
        BIsEqual = (this->IItemEffectStrenght == pRightB->IItemEffectStrenght);
    }
    return BIsEqual;
}