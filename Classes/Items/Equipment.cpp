//
// Created by rusbaron on 10/5/16.
//

#include "Equipment.h"
#include "ui/CocosGUI.h"
#include <InventoryScene.h>

Equipment::Equipment(int IItemIdInput,
                     bool BIsStackableInput,
                     cocos2d::Sprite* SPItemSpriteInput,
                     float FItemCostInput,
                     Parameters StEffectEquipInput,
                     int IQuestIDInput
):Item(IItemIdInput,BIsStackableInput,SPItemSpriteInput,FItemCostInput,IQuestIDInput)
{
	this->EItemType = ItemType::EquipmentType;
    this->StEffectEquip = StEffectEquipInput;
}

cocos2d::Node* Equipment::showAvailableActions() {
    unsigned short USFontSize = 24;
    float FScale = 0.5;

    cocos2d::Node* NPMenu = new cocos2d::Node;

    auto useButton = cocos2d::ui::Button::create("menubutton.png", "menubutton_pressed.png");
    useButton->setTitleText("Use");
    useButton->setTitleFontSize(USFontSize);
    useButton->setScale(FScale);
    useButton->setName("useButton");
    /*useButton->addClickEventListener([this](cocos2d::Ref* sender) {
        cocos2d::log("Clicked");
    });*/
    NPMenu->addChild(useButton);

    if(this->IQuestID<0)
    {
        auto sellButton = cocos2d::ui::Button::create("menubutton.png", "menubutton_pressed.png");
        sellButton->setTitleText("Sell");
        sellButton->setTitleFontSize(USFontSize);
        sellButton->setScale(FScale);
        sellButton->setPosition(cocos2d::Vec2(0,-(useButton->getContentSize().height*FScale)));
        sellButton->setName("sellButton");
        /*sellButton->addClickEventListener([this](cocos2d::Ref* sender) {
        });*/
        NPMenu->addChild(sellButton);

        auto dropButton = cocos2d::ui::Button::create("menubutton.png", "menubutton_pressed.png");
        dropButton->setTitleText("Drop");
        dropButton->setTitleFontSize(USFontSize);
        dropButton->setScale(FScale);
        dropButton->setPosition(cocos2d::Vec2(0, -(useButton->getContentSize().height*FScale*2)));
        dropButton->setName("dropButton");
        /*dropButton->addClickEventListener([this](cocos2d::Ref* sender) {
        });*/
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
        BIsEqual = (this->StEffectEquip == pRightB->StEffectEquip);
    }
    return BIsEqual;
}

void Equipment::useItem(void* PUserCalled) {
    Hero* HePHeroUsedItem = static_cast<Hero*>(PUserCalled);
    if (HePHeroUsedItem)
    {
        HePHeroUsedItem->useEquipment(this);
    }
}