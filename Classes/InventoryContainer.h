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

class InventoryContainer : public cocos2d::Node {
private:

public:
    std::array<ItemCell,_INVENTORY_SIZE> Inventory;

    InventoryContainer();
    ~InventoryContainer();
    void AddItem(Item* InputItem);

};


#endif //MYGAME_INVENTORYCONTAINER_H
