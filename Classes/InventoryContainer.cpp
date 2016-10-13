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

    this->addEvents();

    this->setName("ItemContainer");

}

InventoryContainer::~InventoryContainer() {
}

ItemCell* InventoryContainer::icIsHit(cocos2d::EventMouse *EInput) {
    cocos2d::Vec2 V2MouseLocation = EInput->getLocation();
    ///Converting mouse location to global world location(Y)
    V2MouseLocation.y=cocos2d::Director::getInstance()->getWinSize().height-V2MouseLocation.y;

    for(auto&& ItemCell : this->Inventory){

        cocos2d::Rect RNodeLocal = ItemCell.getBoundingBox();

        cocos2d::Vec2 V2LeftBottomWorldPoint = this->getParent()->convertToWorldSpace(cocos2d::Vec2(RNodeLocal.getMinX(),RNodeLocal.getMinY()));
        ///Convert Rect to world space
        cocos2d::Rect RNodeWorldPosition = cocos2d::Rect(V2LeftBottomWorldPoint.x,V2LeftBottomWorldPoint.y,ItemCell.getContentSize().width,ItemCell.getContentSize().height);
        if(RNodeWorldPosition.containsPoint(V2MouseLocation)){
            return &ItemCell;
        }
    }
    return nullptr;
}

void InventoryContainer::addEvents() {
    auto listener = cocos2d::EventListenerMouse::create();
    listener->onMouseDown = [this](cocos2d::Event* event){
        cocos2d::EventMouse* EM = (cocos2d::EventMouse*)event;
        if(this->icIsHit(EM)!= nullptr){
            cocos2d::log("Invetory tapped!Time to define cell");
        }
    };
    listener->onMouseUp = [this](cocos2d::Event* event){
        cocos2d::EventMouse* EM = (cocos2d::EventMouse*)event;
        if(this->icIsHit(EM)!= nullptr){
            cocos2d::log("Invetory mouse up!Time to define cell");
        }
    };
    cocos2d::Director::getInstance()->getEventDispatcher()->addEventListenerWithFixedPriority(listener,30);
}

void InventoryContainer::addItem(Item* InputItem,unsigned int UICellClicked){}
void InventoryContainer::swapCells(unsigned int UICellFrom,unsigned int UICellTo){}
void InventoryContainer::clearCell(unsigned int UICellToClear){}
//void InventoryContainer::sortInventory(enum ETypeSort){}