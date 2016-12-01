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
    ///Label,that present ItemCount in cell to player
    cocos2d::Label* LItemCount;

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
    
    virtual void putItemAtCell(Item* ItPItemToPut,unsigned int UIItemCount)=0;

    virtual void deleteItemFromCell(int ICountItemToDelete) = 0;

    virtual void clearCell() = 0;

    //virtual void clearCell() = 0;

    bool bIsCellEmpty()const;

    ~Cell();

};


#endif //MYGAME_CELL_H
