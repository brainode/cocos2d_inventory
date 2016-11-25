//
// Created by rusbaron on 10/6/16.
//

#ifndef MYGAME_TRASH_H
#define MYGAME_TRASH_H


#include "Item.h"

class Trash : public Item {
public:
    Trash(int IItemIdInput,bool BIsUsedInQuestInput,cocos2d::Sprite* SPItemSpriteInput,float FItemCostInput,int IQuestIDInput=-1);
    cocos2d::Node* showAvailableActions() override;

    bool doCompare(const Item& ItemRight) override;

    ~Trash();
};


#endif //MYGAME_TRASH_H
