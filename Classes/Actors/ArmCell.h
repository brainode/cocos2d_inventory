//
// Created by rusbaron on 11/10/16.
//

#ifndef MYGAME_ARMCELL_H
#define MYGAME_ARMCELL_H
#include "Cell.h"

class ArmCell : public Cell{
private:
    void addEvents();

    bool BGrabbedFromCell;
public:
    ArmCell();

    ArmCell(ArmCell& CellToCopy);

    ArmCell& operator=(const ArmCell& CellToCopy);

    /*
    * Update count,cost labels
    */
    void updateLabels() override;

    /*
    * Return true if cell was hitted
    */
    bool bCellIsHit(cocos2d::EventMouse* EInput);

    ///*
    // * Show menu,that containt available actions for the Item
    // */
    void showActionMenu();

    /*
    * Link item at cell,move at cell's center point
    */
    void putItemAtCell(Item* ItPItemToPut, unsigned int UIItemCount=1) override;

    void deleteItemFromCell(int ICountItemToDelete) override;

    void clearCell() override;

    ~ArmCell();

#if _DEBUG==1
    void showClickedCell();
#endif // DEBUG

};


#endif //MYGAME_ARMCELL_H
