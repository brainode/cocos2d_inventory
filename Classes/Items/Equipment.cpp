//
// Created by rusbaron on 10/5/16.
//

#include "Equipment.h"

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

Equipment::~Equipment() {

}