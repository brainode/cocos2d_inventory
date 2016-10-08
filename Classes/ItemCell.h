//
// Created by rusbaron on 10/8/16.
//

#ifndef MYGAME_ITEMCELL_H
#define MYGAME_ITEMCELL_H

#include <Items/Item.h>
#include "cocos2d.h"

class ItemCell : public cocos2d::Node {
public:
    Item* IPItemInCell;
    int IItemCount;
    float ICellCost;
    ///Label,that present ItemCount in cell to player
    cocos2d::Label* LItemCount;

    cocos2d::Sprite* tmp;

    cocos2d::Sprite* SCellBg;

    int ICellNumber;

    ItemCell();
    ~ItemCell();

    void addEvents();
};


#endif //MYGAME_ITEMCELL_H
