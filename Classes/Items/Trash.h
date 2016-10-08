//
// Created by rusbaron on 10/6/16.
//

#ifndef MYGAME_TRASH_H
#define MYGAME_TRASH_H


#include "Item.h"

class Trash : public Item {
public:
    Trash(bool BIsStackableInput,bool BIsUsedInQuestInput,cocos2d::Sprite* SPItemSpriteInput,float FItemCostInput);
    ~Trash();
};


#endif //MYGAME_TRASH_H
