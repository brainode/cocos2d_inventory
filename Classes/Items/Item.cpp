//
// Created by rusbaron on 10/3/16.
//

#include "Item.h"

Item::Item(bool BIsStackableInput,bool BIsUsedInQuestInput,cocos2d::Sprite* SPItemSpriteInput,float FItemCostInput) {
    this->BIsStackable=BIsStackableInput;
    this->BIsUsedInQuest=BIsUsedInQuestInput;

    this->SPItemSprite= SPItemSpriteInput;

    this->FItemCost = FItemCostInput;
}

Item::~Item() {

}