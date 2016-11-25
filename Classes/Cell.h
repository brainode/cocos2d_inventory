//
// Created by rusbaron on 11/10/16.
//

#ifndef MYGAME_CELL_H
#define MYGAME_CELL_H

#include <Items/Item.h>

class Cell : public cocos2d::Node{
public:
    Item* IPItemInCell;
    int IItemCount;
    int ICellCost;
    ///Label,that present ItemCount in cell to player
    cocos2d::Label* LItemCount;

	cocos2d::Label* LCellCost;

    cocos2d::Sprite* SCellBg;

    int ICellNumber;

    Cell();
    /*
     *Copy constructor
     */
    Cell(Cell& CellToCopy);

    Cell& operator=(const Cell& CellToCopy);

	virtual void updateLabels()=0;

    //virtual void showActionMenu()=0;

    virtual void putItemAtInventory(Item* ItPItemToPut,unsigned int UIItemCount)=0;

    bool bIsCellEmpty()const;

    ~Cell();

#if _DEBUG==1
	void showClickedCell();
#endif // DEBUG
};


#endif //MYGAME_CELL_H
