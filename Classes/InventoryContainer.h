//
// Created by rusbaron on 10/5/16.
//

#ifndef MYGAME_INVENTORYCONTAINER_H
#define MYGAME_INVENTORYCONTAINER_H

#define _INVENTORY_SIZE 16U
#define _CELL_IN_ROW 4U

#include <array>
#include "Items/Item.h"
#include "cocos2d.h"
#include "ui/CocosGUI.h"
#include "ItemCell.h"


enum ESortType{PRICE,TYPE};

class InventoryContainer : public cocos2d::Node {
private:

public:
    std::array<ItemCell,_INVENTORY_SIZE> Inventory;

    InventoryContainer();
    ~InventoryContainer();

    void addEvents();
    /*
     * Cell,that was grabbed
     */
    int ICellForSwap;
    /*
     * Return number of cell,that was hitted
     */
    int iCellIsHit(cocos2d::EventMouse* EInput);
    /*
     * Label for inventory messages
     */
    cocos2d::Label* LInventoryMessage;

    void addItems(Item* InputItem,unsigned int UICellClicked,unsigned int UIItemCount=1);
    void swapCells(unsigned int UICellFrom,unsigned int UICellTo);
    /*
     * Return true if items has equal type,price
     */
    bool bIsItemsEqual(Item* Left,Item* Right);
    /*
     * Return true if cell is empty
     */
    bool bIsCellEmpty(int ICellToCheck);
    /*
     * Function for check,is quest non-stackable item already in inventory.Quest id must be the same
     */
    bool bCanBeAdded(Item* InputItem);

    void clearCell(unsigned int UICellToClear);
    /*
     * Update label at cell,which shows items quantity in cell.
     */
    void updateCellCounter(unsigned int UICellToUpdate);
    /*
     * Sorting functions for array
     */
    void sortInventory(ESortType ESortTypeInput);
    /*
     * Show error or information messages for user
     */
    void showMessage(std::string messageText);
	/*
	 *
	 */
	void putItemOutsideInventory(int ICellFrom,Item* IPItemToPut,cocos2d::Vec2* V2PPositionToPut=nullptr);
	void moveItemFomCell(unsigned int UICellToClear,cocos2d::EventMouse* EInput=nullptr);
};


#endif //MYGAME_INVENTORYCONTAINER_H
