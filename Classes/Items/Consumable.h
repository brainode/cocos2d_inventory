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

    Consumable(int IItemIdInput,bool BIsStackableInput,cocos2d::Sprite* SPItemSpriteInput,float FItemCostInput,int IQuestIDInput=-1);
    Consumable(const Consumable& ConsumableInput);
    ~Consumable();
};


#endif //MYGAME_CONSUMABLE_H
