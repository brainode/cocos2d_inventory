//
// Created by rusbaron on 10/5/16.
//

#ifndef MYGAME_EQUIPMENT_H
#define MYGAME_EQUIPMENT_H

#include "Item.h"

class Equipment : public Item{
public:
    unsigned int //UIItemEffectVitality,
            UIItemEffectStrenght,
//            UIItemEffectAgility,
//                UIRequiredMana,
            UIItemEffectSpeed;

    Equipment(bool BIsStackableInput,
              bool BIsUsedInQuestInput,
              cocos2d::Sprite* SPItemSpriteInput,
              float FItemCostInput,
              int UIItemEffectStrenghtInput);
    ~Equipment();

};


#endif //MYGAME_EQUIPMENT_H
