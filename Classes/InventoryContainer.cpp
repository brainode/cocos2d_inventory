//
// Created by rusbaron on 10/5/16.
//
#include "InventoryContainer.h"
#include "InventoryScene.h"


InventoryContainer::InventoryContainer() {
    unsigned int UICounter = 0;
    for(auto&& Cell : this->Inventory){
        float FCellWidth = Cell.SCellBg->getContentSize().width;
        Cell.setPosition((UICounter%4)*FCellWidth,static_cast<int>(UICounter/4)*FCellWidth);
        addChild(&Cell);
        Cell.ICellNumber=UICounter;
        ++UICounter;
    }
    this->ICellForSwap = -1;

    this->addEvents();

    this->setName("ItemContainer");

}

InventoryContainer::~InventoryContainer() {
}

int InventoryContainer::iCellIsHit(cocos2d::EventMouse *EInput) {
    cocos2d::Vec2 V2MouseLocation = EInput->getLocation();
    ///Converting mouse location to global world location(Y)
    V2MouseLocation.y=cocos2d::Director::getInstance()->getWinSize().height-V2MouseLocation.y;
    for(auto&& ItemCell : this->Inventory){
        cocos2d::Rect RNodeLocal = ItemCell.SCellBg->getBoundingBox();
        cocos2d::Vec2 V2LeftBottomWorldPoint = ItemCell.SCellBg->getParent()->convertToWorldSpace(cocos2d::Vec2(RNodeLocal.getMinX(),RNodeLocal.getMinY()));

        ///Convert Rect to world space
        cocos2d::Rect RNodeWorldPosition = cocos2d::Rect(V2LeftBottomWorldPoint.x,V2LeftBottomWorldPoint.y,ItemCell.SCellBg->getContentSize().width,ItemCell.SCellBg->getContentSize().height);
        if(RNodeWorldPosition.containsPoint(V2MouseLocation)){
            return ItemCell.ICellNumber;
        }
    }
    return -1;
}

void InventoryContainer::addEvents() {
    auto listener = cocos2d::EventListenerMouse::create();
    listener->onMouseDown = [this](cocos2d::Event* event){
        cocos2d::EventMouse* EM = (cocos2d::EventMouse*)event;
        this->ICellForSwap = this->iCellIsHit(EM);
        if(this->ICellForSwap>=0 && this->Inventory.at(this->ICellForSwap).IPItemInCell!= nullptr){
            if(EM->getMouseButton()==MOUSE_BUTTON_LEFT){
                cocos2d::log("Left button on cell:%i",this->ICellForSwap);
            }else if(EM->getMouseButton()==MOUSE_BUTTON_RIGHT){
                cocos2d::log("Right button on cell:%i",this->ICellForSwap);
            }

        }
    };
    listener->onMouseUp = [this](cocos2d::Event* event){
        cocos2d::EventMouse* EM = (cocos2d::EventMouse*)event;
        int IItemCellUnderMouse = this->iCellIsHit(EM);
        ///Check if Cell was grabbed
        if(this->ICellForSwap != IItemCellUnderMouse && this->ICellForSwap>=0 && IItemCellUnderMouse>=0 && EM->getMouseButton()==MOUSE_BUTTON_LEFT){
            this->swapCells(ICellForSwap,IItemCellUnderMouse);

        }///Else check if any item was grabbed
        else if(InventoryScene::IPMovedItem!= nullptr && this->ICellForSwap != IItemCellUnderMouse && this->ICellForSwap<0 && IItemCellUnderMouse>=0 && EM->getMouseButton()==MOUSE_BUTTON_LEFT){
            this->addItems(InventoryScene::IPMovedItem,IItemCellUnderMouse);
        }else if(this->ICellForSwap == IItemCellUnderMouse && IItemCellUnderMouse>=0){
            InventoryScene::IPMovedItem->setPosition(this->convertToWorldSpace(this->Inventory.at(IItemCellUnderMouse).getPosition()));
//            IPItemInCell->setPosition(this->convertToWorldSpace(CellToUpdate.getPosition()));
        }else if(IItemCellUnderMouse<0 && this->ICellForSwap>=0 && this->Inventory.at(ICellForSwap).IPItemInCell!= nullptr){
            this->clearCell(ICellForSwap);
        }
        InventoryScene::IPMovedItem = nullptr;
    };
    cocos2d::Director::getInstance()->getEventDispatcher()->addEventListenerWithFixedPriority(listener,30);
}

void InventoryContainer::addItems(Item* InputItem,unsigned int UICellClicked,unsigned int UIItemCount){
    if(InputItem!= nullptr){
        ItemCell& CellToUpdate = this->Inventory.at(UICellClicked);
        CellToUpdate.IItemCount+=UIItemCount;
        CellToUpdate.ICellCost += InputItem->FItemCost;
        if(CellToUpdate.IPItemInCell!= nullptr && CellToUpdate.IPItemInCell->BIsStackable && InputItem->BIsStackable && this->bCheckIsItemsEqual(InputItem,CellToUpdate.IPItemInCell)){
            InputItem->removeFromParentAndCleanup(true);
        }else if(CellToUpdate.IPItemInCell == nullptr){
            CellToUpdate.IPItemInCell=InputItem;
            CellToUpdate.IPItemInCell->setPosition(this->convertToWorldSpace(CellToUpdate.getPosition()));
        }
        InputItem= nullptr;
        this->updateCellCounter(UICellClicked);
    }
}
void InventoryContainer::swapCells(unsigned int UICellFrom,unsigned int UICellTo){
    ItemCell& CellFrom = this->Inventory.at(UICellFrom);
    ItemCell& CellTo = this->Inventory.at(UICellTo);
    ///Copy Cell content into "tmp cell"
    Item* IPItemForSwap = CellTo.IPItemInCell;
    int ISwapItemCount = CellTo.IItemCount;
    float FSwapCellCost = CellTo.ICellCost;

    CellTo.IPItemInCell = CellFrom.IPItemInCell;
    CellTo.IItemCount = CellFrom.IItemCount;
    CellTo.ICellCost = CellFrom.ICellCost;

    CellFrom.IPItemInCell = IPItemForSwap;
    CellFrom.IItemCount = ISwapItemCount;
    CellFrom.ICellCost = FSwapCellCost;

    if(CellTo.IPItemInCell!= nullptr) {
        CellTo.IPItemInCell->setPosition(this->convertToWorldSpace(CellTo.getPosition()));
    }
    if(CellFrom.IPItemInCell!= nullptr){
        CellFrom.IPItemInCell->setPosition(this->convertToWorldSpace(CellFrom.getPosition()));
    }
    this->updateCellCounter(UICellFrom);
    this->updateCellCounter(UICellTo);
}
void InventoryContainer::clearCell(unsigned int UICellToClear){
    ItemCell& CellToClear = this->Inventory.at(UICellToClear);
    CellToClear.IPItemInCell->removeFromParentAndCleanup(true);
    CellToClear.LItemCount->setString("");
    CellToClear.LItemCount=0;
    CellToClear.ICellCost=0;
}
//void InventoryContainer::sortInventory(enum ETypeSort){}
bool InventoryContainer::bCheckIsItemsEqual(Item *Left, Item *Right) {
    return true;
}
void InventoryContainer::updateCellCounter(unsigned int UICellToUpdate){
    ItemCell& CellToUpdate = this->Inventory.at(UICellToUpdate);
    if(CellToUpdate.IItemCount>0 && CellToUpdate.IPItemInCell->BIsStackable){
        CellToUpdate.LItemCount->setString(std::to_string(CellToUpdate.IItemCount));
    }else{
        CellToUpdate.LItemCount->setString("");
    }
}