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
    int ICellCost;
    ///Label,that present ItemCount in cell to player
    cocos2d::Label* LItemCount;

	cocos2d::Label* LCellCost;

    cocos2d::Sprite* SCellBg;

    int ICellNumber;

    ItemCell();
    /*
     *Copy constructor
     */
    ItemCell(ItemCell& CellToCopy);
    /*
     *Move constructor
     */
    ItemCell(ItemCell&& CellToMove);

    ItemCell& operator=(const ItemCell& CellToCopy);

	void updateLabels();

    ~ItemCell();

};


#endif //MYGAME_ITEMCELL_H
