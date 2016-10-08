//
// Created by rusbaron on 10/5/16.
//
#include "InventoryContainer.h"


InventoryContainer::InventoryContainer() {
    unsigned int UICounter = 0;
    for(auto&& Cell : this->Inventory){
        float FCellWidth = Cell.SCellBg->getContentSize().width;
        Cell.setPosition((UICounter%4)*FCellWidth,static_cast<int>(UICounter/4)*FCellWidth);
        addChild(&Cell);
        Cell.ICellNumber=UICounter;
        ++UICounter;
    }
    this->setName("ItemContainer");

}

InventoryContainer::~InventoryContainer() {
}

void InventoryContainer::AddItem(Item *ItemToAdd) {
}