//
// Created by rusbaron on 10/6/16.
//

#ifndef MYGAME_CONSUMABLE_H
#define MYGAME_CONSUMABLE_H


#include "Item.h"
//fixme.Change file position
#include <proj.win32/Parameters.h>

class Consumable : public Item {
public:
    Parameters StEffectUsage;

    float FEffectDuration;

    Consumable(
            int IItemIdInput,
            bool BIsStackableInput,
            cocos2d::Sprite* SPItemSpriteInput,
            float FItemCostInput,
            Parameters StEffectUsageInput,
            float FEffectDuration,
            int IQuestIDInput=-1);
    Consumable(const Consumable& ConsumableInput);

    cocos2d::Node* showAvailableActions() override;
    
    bool doCompare(const Item& ItemRight) override;

    void useItem(void* PUserCalled) override;

    ~Consumable();
};


#endif //MYGAME_CONSUMABLE_H
