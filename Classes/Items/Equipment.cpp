//
// Created by rusbaron on 10/5/16.
//

#include "Equipment.h"

Equipment::Equipment(bool BIsStackableInput,
                     bool BIsUsedInQuestInput,
                     cocos2d::Sprite* SPItemSpriteInput,
                     float FItemCostInput,
                     int UIItemEffectStrenghtInput
):Item(BIsStackableInput,BIsUsedInQuestInput,SPItemSpriteInput,FItemCostInput)
{
    this->UIItemEffectStrenght=UIItemEffectStrenghtInput;

    this->SPItemSprite->setScaleX(0.3);
    this->SPItemSprite->setScaleY(0.3);

//    addChild(this->SPItemSprite);
}

Equipment::~Equipment() {

}