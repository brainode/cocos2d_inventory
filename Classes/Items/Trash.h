//
// Created by rusbaron on 10/6/16.
//

#ifndef MYGAME_TRASH_H
#define MYGAME_TRASH_H


#include "Item.h"

class Trash : public Item {
public:
    Trash(int IItemIdInput,bool BIsStackableInput,cocos2d::Sprite* SPItemSpriteInput,float FItemCostInput,int IQuestIDInput=-1);
    cocos2d::Node* showAvailableActions() override;

    bool doCompare(const Item& ItemRight) override;

    void useItem(void* PUserCalled) override;
    ~Trash();
};


#endif //MYGAME_TRASH_H
