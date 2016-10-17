//
// Created by rusbaron on 10/6/16.
//

#include "Consumable.h"

Consumable::Consumable(ExactItem EInputItemType,
                       bool BIsStackableInput,
                       cocos2d::Sprite* SPItemSpriteInput,
                       float FItemCostInput,
                       int IQuestIDInput
):Item(EInputItemType,BIsStackableInput,SPItemSpriteInput,FItemCostInput,IQuestIDInput) {
}

Consumable::~Consumable() {

}