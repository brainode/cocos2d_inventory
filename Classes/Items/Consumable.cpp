//
// Created by rusbaron on 10/6/16.
//

#include "Consumable.h"

Consumable::Consumable(bool BIsStackableInput,
                       bool BIsUsedInQuestInput,
                       cocos2d::Sprite* SPItemSpriteInput,
                       float FItemCostInput
):Item(BIsStackableInput,BIsUsedInQuestInput,SPItemSpriteInput,FItemCostInput) {
    this->SPItemSprite->setScaleX(0.3);
    this->SPItemSprite->setScaleY(0.3);
}

Consumable::~Consumable() {

}