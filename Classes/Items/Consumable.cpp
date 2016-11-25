//
// Created by rusbaron on 10/6/16.
//

#include "Consumable.h"
#include "ui/CocosGUI.h"
#include <InventoryScene.h>

Consumable::Consumable(int IItemIdInput,
                       bool BIsStackableInput,
                       cocos2d::Sprite* SPItemSpriteInput,
                       float FItemCostInput,
                       int IValueInput,
                       float FEffectDurationInput,
                       int IQuestIDInput
):Item(IItemIdInput,BIsStackableInput,SPItemSpriteInput,FItemCostInput,IQuestIDInput) {
	this->EItemType = ItemType::ConsumableType;
    this->IValue = IValueInput;
    this->FEffectDuration = FEffectDurationInput;
}

Consumable::Consumable(const Consumable& ConsumableInput):Item(ConsumableInput){
    this->EItemType = ItemType::ConsumableType;
    this->IValue = ConsumableInput.IValue;
    this->FEffectDuration = ConsumableInput.FEffectDuration;
}

bool Consumable::doCompare(const Item& ItemRight){
    bool BIsEqual = false;
    const Consumable* pRightB = dynamic_cast<const Consumable*>(&ItemRight);
    if (pRightB)
    {
        BIsEqual = (this->IValue == pRightB->IValue && this->FEffectDuration == pRightB->FEffectDuration);
    }
    return BIsEqual;
}


cocos2d::Node* Consumable::showAvailableActions(){
    unsigned short USFontSize = 24;
    float FScale = 0.5;

    cocos2d::Node* NPMenu = new cocos2d::Node;

    auto useButton = cocos2d::ui::Button::create("menubutton.png", "menubutton_pressed.png");
    useButton->setTitleText("Use");
    useButton->setTitleFontSize(USFontSize);
    useButton->setScale(FScale);
    useButton->setName("actionButton");
    useButton->addClickEventListener([this](cocos2d::Ref* sender) {
        
    });
    NPMenu->addChild(useButton);

    if(this->IQuestID<0)
    {
        auto sellButton = cocos2d::ui::Button::create("menubutton.png", "menubutton_pressed.png");
        sellButton->setTitleText("Sell");
        sellButton->setTitleFontSize(USFontSize);
        sellButton->setScale(FScale);
        sellButton->setPosition(cocos2d::Vec2(0,-(useButton->getContentSize().height*FScale)));
        sellButton->setName("actionButton");
        sellButton->addClickEventListener([this](cocos2d::Ref* sender) {
        });
        NPMenu->addChild(sellButton);

        auto dropButton = cocos2d::ui::Button::create("menubutton.png", "menubutton_pressed.png");
        dropButton->setTitleText("Drop");
        dropButton->setTitleFontSize(USFontSize);
        dropButton->setScale(FScale);
        dropButton->setPosition(cocos2d::Vec2(0, -(useButton->getContentSize().height*FScale*2)));
        dropButton->setName("actionButton");
        dropButton->addClickEventListener([this](cocos2d::Ref* sender) {
        });
        NPMenu->addChild(dropButton);
    }
    return NPMenu;
}


Consumable::~Consumable() {
    this->removeAllChildrenWithCleanup(true);
}