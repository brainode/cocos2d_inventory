//
// Created by rusbaron on 10/5/16.
//

#ifndef MYGAME_EQUIPMENT_H
#define MYGAME_EQUIPMENT_H

#include "Item.h"

class Equipment : public Item{
public:
    int //UIItemEffectVitality,
            IItemEffectStrenght;
//            UIItemEffectAgility,
//                UIRequiredMana,
//            IItemEffectSpeed;

    Equipment(int IItemIdInput,
              bool BIsStackableInput,
              cocos2d::Sprite* SPItemSpriteInput,
              float FItemCostInput,
              int IItemEffectStrenghtInput=0,
              int IQuestIDInput=-1
    );
    ~Equipment();

};


#endif //MYGAME_EQUIPMENT_H
