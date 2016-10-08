//
// Created by rusbaron on 10/6/16.
//

#include "Consumable.h"

Consumable::Consumable(bool BIsStackableInput,bool BIsUsedInQuestInput,cocos2d::Sprite* SPItemSpriteInput,float FItemCostInput):Item(BIsStackableInput,BIsUsedInQuestInput,SPItemSpriteInput,FItemCostInput) {

}

Consumable::~Consumable() {

}