//
// Created by rusbaron on 10/6/16.
//

#ifndef MYGAME_CONSUMABLE_H
#define MYGAME_CONSUMABLE_H


#include "Item.h"

class Consumable : public Item {
public:
    unsigned int //UIItemEffectVitality,
            UIItemEffectStrenght,
//            UIItemEffectAgility,
//                UIRequiredMana,
            UIItemEffectSpeed;

    Consumable(bool BIsStackableInput,bool BIsUsedInQuestInput,cocos2d::Sprite* SPItemSpriteInput,float FItemCostInput);
    ~Consumable();
};


#endif //MYGAME_CONSUMABLE_H
