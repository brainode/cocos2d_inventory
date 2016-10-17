//
// Created by rusbaron on 10/6/16.
//

#ifndef MYGAME_TRASH_H
#define MYGAME_TRASH_H


#include "Item.h"

class Trash : public Item {
public:
    Trash(ExactItem EInputItemType,bool BIsUsedInQuestInput,cocos2d::Sprite* SPItemSpriteInput,float FItemCostInput,int IQuestIDInput=-1);
    ~Trash();
};


#endif //MYGAME_TRASH_H
