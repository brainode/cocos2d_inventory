//
// Created by rusbaron on 10/8/16.
//

#ifndef MYGAME_ITEMCELL_H
#define MYGAME_ITEMCELL_H

#include <Items/Item.h>

class ItemCell : public cocos2d::Node {
public:
    Item* IPItemInCell;
    int IItemCount;
    float ICellCost;
    ///Label,that present ItemCount in cell to player
    cocos2d::Label* LItemCount;

    cocos2d::Sprite* SCellBg;

    int ICellNumber;

    ItemCell();
    ~ItemCell();

    void addEvents();

    bool BIsHit(cocos2d::EventMouse* EInput);
};


#endif //MYGAME_ITEMCELL_H
