//
// Created by rusbaron on 10/5/16.
//

#ifndef MYGAME_EQUIPMENT_H
#define MYGAME_EQUIPMENT_H

#include "Item.h"

class Equipment : public Item{
public:
    int IItemEffectStrenght;

    Equipment(int IItemIdInput,
              bool BIsStackableInput,
              cocos2d::Sprite* SPItemSpriteInput,
              float FItemCostInput,
              int IItemEffectStrenghtInput=0,
              int IQuestIDInput=-1
    );
    ~Equipment();
    virtual cocos2d::Node* showAvailableActions() override;

    bool doCompare(const Item& ItemRight) override;
};


#endif //MYGAME_EQUIPMENT_H
