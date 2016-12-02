//
// Created by rusbaron on 10/5/16.
//

#ifndef MYGAME_EQUIPMENT_H
#define MYGAME_EQUIPMENT_H

#include "Item.h"
//fixme.Change file position
#include <Parameters.h>

class Equipment : public Item{
public:
    Parameters StEffectEquip;

    Equipment(int IItemIdInput,
              bool BIsStackableInput,
              cocos2d::Sprite* SPItemSpriteInput,
              float FItemCostInput,
              Parameters StEffectEquipInput,
              int IQuestIDInput=-1
    );
    ~Equipment();
    virtual cocos2d::Node* showAvailableActions() override;

    bool doCompare(const Item& ItemRight) override;

    void useItem(void* PUserCalled) override;
};


#endif //MYGAME_EQUIPMENT_H
