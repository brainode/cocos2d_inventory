//
// Created by rusbaron on 10/6/16.
//

#include "Consumable.h"

Consumable::Consumable(int IItemIdInput,
                       bool BIsStackableInput,
                       cocos2d::Sprite* SPItemSpriteInput,
                       float FItemCostInput,
                       int IQuestIDInput
):Item(IItemIdInput,BIsStackableInput,SPItemSpriteInput,FItemCostInput,IQuestIDInput) {
	this->EItemType = ItemType::ConsumableType;
}

Consumable::Consumable(const Consumable& ConsumableInput):Item(ConsumableInput){
    this->EItemType = ItemType::ConsumableType;
}

Consumable::~Consumable() {

}