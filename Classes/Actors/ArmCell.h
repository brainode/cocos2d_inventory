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

    /*
    * Link item at cell,move at cell's center point
    */
    void putItemAtCell(Item* ItPItemToPut, unsigned int UIItemCount=1) override;

    void deleteItemFromCell(int ICountItemToDelete) override;

    void clearCell() override;

    ~ArmCell();


};


#endif //MYGAME_ARMCELL_H
