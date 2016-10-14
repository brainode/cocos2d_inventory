//
// Created by rusbaron on 10/5/16.
//

#ifndef MYGAME_INVENTORYCONTAINER_H
#define MYGAME_INVENTORYCONTAINER_H

#define _INVENTORY_SIZE 16U

#include <array>
#include "Items/Item.h"
#include "cocos2d.h"
#include "ItemCell.h"

//enum class sorttype {price,type};

class InventoryContainer : public cocos2d::Node {
private:

public:
    std::array<ItemCell,_INVENTORY_SIZE> Inventory;

    InventoryContainer();
    ~InventoryContainer();

    void addEvents();

    ItemCell* ICCellForSwap;

    ItemCell* icIsHit(cocos2d::EventMouse* EInput);

    void addItem(Item* InputItem,unsigned int UICellClicked);
    void swapCells(unsigned int UICellFrom,unsigned int UICellTo);
    void clearCell(unsigned int UICellToClear);
//    void sortInventory(enum ETypeSort);

};


#endif //MYGAME_INVENTORYCONTAINER_H
