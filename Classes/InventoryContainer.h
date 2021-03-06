//
// Created by rusbaron on 10/5/16.
//

#ifndef MYGAME_INVENTORYCONTAINER_H
#define MYGAME_INVENTORYCONTAINER_H

#define _INVENTORY_SIZE 16U
#define _CELL_IN_ROW 4U

#include <array>
#include "Actors/Hero.h"
#include "cocos2d.h"
#include "ui/CocosGUI.h"
#include "InventoryCell.h"


enum ESortType{PRICE,TYPE};

class InventoryContainer : public cocos2d::Node {
private:
    void addEvents();

    cocos2d::Node* NPUseMenu;

    cocos2d::Node* NPSellMenu;

    cocos2d::ui::CheckBox *CbPEqipment, *CbPConsumable, *CbPTrash;
    cocos2d::ui::EditBox *EbPCellNumber, *EbPItemCount;

    Hero* HePInventoryOwner;

    int ICellWithMenu;

    ///added second parameter to 'fix' bug
    bool bIsItemMenuClicked(cocos2d::EventMouse* EInput) const;
    /*
     * Delete item menu
     */
    void clearUseMenu();
    /*
     * Uncheck all checkboxs,and clear text input fields for Remove Menu
     */
    void clearRemoveMenu() const;
public:
    std::array<InventoryCell,_INVENTORY_SIZE> Inventory;

    InventoryContainer(Hero* HePInventoryOwnerInput);

    ~InventoryContainer();

    InventoryCell& operator [](int ICellAtNumber);
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

	/*
	 * Add items to inventory cell
	 */
    void addItems(Item* InputItem,unsigned int UICellClicked,unsigned int UIItemCount=1);

    /*
     * Add item to first free or first cell with identity item if item stackable
     */
    void addItemsAtFirstAvailableCell(Item* InputItem, unsigned int UIItemCount = 1);

    /*
     * Delete item(s) from cell
     */
    void deleteItems(unsigned int UICell, unsigned int UIItemCount = 1);

    /*
    * Delete all items from cell
    */
    void deleteAllItems(unsigned int UICell);

    /*
    * Delete item(s) from cell
    */
    void deleteItems(ItemType EItemTypeToDelete, unsigned int UIItemCount);

    /*
    * Delete all items for selected type
    */
    void deleteAllItems(ItemType EItemTypeToDelete);

	/*
	 *
	 */
    void swapCells(unsigned int UICellFrom,unsigned int UICellTo);
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
     * Group all stackable items
     */
    void groupAllStackableItems();
    /*
     * Show error or information messages for user
     */
    void showMessage(std::string messageText);
	/*
	 * Action executes at replacing item,or if item moved out from inventory
	 */
	void putItemOutsideInventory(int ICellFrom, cocos2d::EventMouse* EInput=nullptr);
    /*
     * Action executes when trying to add quest item
     */
    void putItemOutsideInventory(Item* IPInputItem, int ICellTo);
};


#endif //MYGAME_INVENTORYCONTAINER_H
