//
// Created by rusbaron on 10/8/16.
//
#define _DEBUG 1

#ifndef MYGAME_ITEMCELL_H
#define MYGAME_ITEMCELL_H
#include "Cell.h"

class InventoryCell : public Cell {
private:
public:
    int ICellCost;
    ///Label,that present Cell cost
	cocos2d::Label* LCellCost;

    int ICellNumber;

    InventoryCell();

    InventoryCell(InventoryCell& CellToCopy);

    InventoryCell& operator=(const InventoryCell& CellToCopy);

    /*
     * Update count,cost labels
     */
	void updateLabels() override;

    ///*
    // * Show menu,that containt available actions for the Item
    // */
    void showActionMenu();

    /*
     * Link item at cell,move at cell's center point
     */
    void putItemAtInventory(Item* ItPItemToPut,unsigned int UIItemCount) override;

    void deleteItemFromCell(int ICountItemToDelete) override;

    ~InventoryCell();

#if _DEBUG==1
	void showClickedCell();
#endif // DEBUG

};


#endif //MYGAME_ITEMCELL_H
