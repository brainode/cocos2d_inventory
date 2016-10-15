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
    /*
     * Number of cell,that was grub by user.
     */
    int ICellForSwap;
    /*
     * Return number of cell,that was hitted
     */
    int iCellIsHit(cocos2d::EventMouse* EInput);

    void addItems(Item* InputItem,unsigned int UICellClicked,unsigned int UIItemCount=1);
    void swapCells(unsigned int UICellFrom,unsigned int UICellTo);
    /*
     * Return true if items has equal type,price and sprite.
     */
    bool bCheckIsItemsEqual(Item* Left,Item* Right);
    void clearCell(unsigned int UICellToClear);
    /*
     * Update label at cell,which shows items quantity in cell.
     */
    void updateCellCounter(unsigned int UICellToUpdate);
//    void sortInventory(enum ETypeSort);

};


#endif //MYGAME_INVENTORYCONTAINER_H
