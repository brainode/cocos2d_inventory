//
// Created by rusbaron on 10/5/16.
//

#include "Equipment.h"

Equipment::Equipment(ExactItem EInputItemType,
                     bool BIsStackableInput,
                     cocos2d::Sprite* SPItemSpriteInput,
                     float FItemCostInput,
                     int IItemEffectStrenghtInput,
                     int IQuestIDInput
):Item(EInputItemType,BIsStackableInput,SPItemSpriteInput,FItemCostInput,IQuestIDInput)
{
    this->IItemEffectStrenght=IItemEffectStrenghtInput;
}

Equipment::~Equipment() {

}