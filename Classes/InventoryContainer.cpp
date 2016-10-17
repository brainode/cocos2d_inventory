//
// Created by rusbaron on 10/5/16.
//
#include "InventoryContainer.h"
#include "InventoryScene.h"


InventoryContainer::InventoryContainer() {
    unsigned int UICounter = 0;
    for(auto&& Cell : this->Inventory){
        float FCellWidth = Cell.SCellBg->getContentSize().width;
        Cell.setPosition((UICounter%_CELL_IN_ROW)*FCellWidth,static_cast<int>(UICounter/_CELL_IN_ROW)*FCellWidth);
        addChild(&Cell);
        Cell.ICellNumber=UICounter;
        ++UICounter;
    }
    this->ICellForSwap = -1;

    unsigned int UIFontSize = 24;
    this->LInventoryMessage = cocos2d::Label::createWithTTF("", "fonts/Marker Felt.ttf", UIFontSize);
    //X position - left corner of inventory,get from first Cell
    //Y position - y center position of higher cell(last cell) + half cell height + font size correction
    this->LInventoryMessage->setPosition(
            this->Inventory.at(0).getPosition().x,
            this->Inventory.at(_INVENTORY_SIZE-1).getPosition().y+this->Inventory.at(_INVENTORY_SIZE-1).SCellBg->getContentSize().height/2+UIFontSize
    );
    addChild(this->LInventoryMessage,50);

    cocos2d::ui::Button* ButPriceSortButton = cocos2d::ui::Button::create("menubutton.png","menubutton_pressed.png");
    ButPriceSortButton->setTitleText("Sort by Price");
    ButPriceSortButton->setTitleColor(cocos2d::Color3B::BLACK); //WTF?Doesn't work
    ButPriceSortButton->setTitleFontSize(UIFontSize);
    ButPriceSortButton->setPosition(cocos2d::Vec2(
            this->Inventory.at(0).getPosition().x+this->Inventory.at(0).SCellBg->getContentSize().width/2,
            this->Inventory.at(0).getPosition().y-this->Inventory.at(0).SCellBg->getContentSize().height/2-ButPriceSortButton->getContentSize().height/2
    ));
    ButPriceSortButton->addClickEventListener([this](cocos2d::Ref* sender){
        this->sortInventory(ESortType::PRICE);
    });
    addChild(ButPriceSortButton);

    cocos2d::ui::Button* ButTypeSortButton = cocos2d::ui::Button::create("menubutton.png","menubutton_pressed.png");
    ButTypeSortButton->setTitleText("Sort by Type");
    ButTypeSortButton->setTitleColor(cocos2d::Color3B::BLACK); //WTF?Doesn't work
    ButTypeSortButton->setTitleFontSize(UIFontSize);
    ButTypeSortButton->setPosition(cocos2d::Vec2(
            this->Inventory.at(_CELL_IN_ROW-1).getPosition().x-this->Inventory.at(_CELL_IN_ROW-1).SCellBg->getContentSize().width/2,
            this->Inventory.at(_CELL_IN_ROW-1).getPosition().y-this->Inventory.at(_CELL_IN_ROW-1).SCellBg->getContentSize().height/2-ButTypeSortButton->getContentSize().height/2
    ));
    addChild(ButTypeSortButton);

    this->setName("ItemContainer");

    this->addEvents();
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
        if(this->ICellForSwap>=0){
            if(EM->getMouseButton()==MOUSE_BUTTON_LEFT && InventoryScene::IPMovedItem!= nullptr){
                //cocos2d::log("Left button on cell:%i",this->ICellForSwap);
                InventoryScene::IPMovedItem = this->Inventory.at(ICellForSwap).IPItemInCell;
                InventoryScene::IPMovedItem->BIsGrabByUser = true;
            }else if(EM->getMouseButton() == MOUSE_BUTTON_RIGHT){
                cocos2d::log("Right button on cell:%i",this->ICellForSwap);
            }

        }
    };
    listener->onMouseUp = [this](cocos2d::Event* event){
        cocos2d::EventMouse* EM = (cocos2d::EventMouse*)event;
        int IItemCellUnderMouse = this->iCellIsHit(EM);
        bool BIsEmptyCellFrom = this->bIsCellEmpty(this->ICellForSwap);
        bool BIsEmptyCellTo = this->bIsCellEmpty(IItemCellUnderMouse);
        ///Check if Cell was grabbed
        if(this->ICellForSwap != IItemCellUnderMouse && !BIsEmptyCellFrom && IItemCellUnderMouse>=0 && EM->getMouseButton()==MOUSE_BUTTON_LEFT){
            this->swapCells(ICellForSwap,IItemCellUnderMouse);
        }///Else check if any item was grabbed
        else if(InventoryScene::IPMovedItem!= nullptr && this->ICellForSwap != IItemCellUnderMouse && this->ICellForSwap<0 && IItemCellUnderMouse>=0 && EM->getMouseButton()==MOUSE_BUTTON_LEFT){
            this->addItems(InventoryScene::IPMovedItem,IItemCellUnderMouse);
        }///Cause when just moving item around this cell
        else if(this->ICellForSwap == IItemCellUnderMouse && !BIsEmptyCellFrom){
            InventoryScene::IPMovedItem->setPosition(this->convertToWorldSpace(this->Inventory.at(IItemCellUnderMouse).getPosition()));
        }///Case when item moved out from inventory.
        else if(IItemCellUnderMouse<0 && this->ICellForSwap>=0 && this->Inventory.at(ICellForSwap).IPItemInCell!= nullptr){
            ///Check that item not quest.
            if(this->Inventory.at(ICellForSwap).IPItemInCell->IQuestID<0){
                this->clearCell(ICellForSwap);
            }else{
                InventoryScene::IPMovedItem->setPosition(this->convertToWorldSpace(this->Inventory.at(ICellForSwap).getPosition()));
                this->showMessage(std::string("Quest item can't be removed!"));
            }

        }
        InventoryScene::IPMovedItem = nullptr;
        this->ICellForSwap=-1;
    };
    cocos2d::Director::getInstance()->getEventDispatcher()->addEventListenerWithFixedPriority(listener,30);
}

void InventoryContainer::addItems(Item* InputItem,unsigned int UICellClicked,unsigned int UIItemCount){
    if(InputItem!= nullptr){
        ItemCell& CellToUpdate = this->Inventory.at(UICellClicked);
        if(this->bCanBeAdded(InputItem)){
            CellToUpdate.IItemCount+=UIItemCount;
            CellToUpdate.ICellCost += InputItem->FItemCost;
            if(CellToUpdate.IPItemInCell!= nullptr && CellToUpdate.IPItemInCell->BIsStackable && InputItem->BIsStackable && this->bIsItemsEqual(InputItem,CellToUpdate.IPItemInCell)){
                InputItem->removeFromParentAndCleanup(true);
            }else if(CellToUpdate.IPItemInCell == nullptr){
                CellToUpdate.IPItemInCell=InputItem;
                CellToUpdate.IPItemInCell->setPosition(this->convertToWorldSpace(CellToUpdate.getPosition()));
            }
            InputItem= nullptr;
            this->updateCellCounter(UICellClicked);
        }else{
            ///Move item near inventory
            int IFirstCellInRow = CellToUpdate.ICellNumber - CellToUpdate.ICellNumber%_CELL_IN_ROW;
            InputItem->setPosition(
                    this->convertToWorldSpace(
                            cocos2d::Vec2(
                                    this->Inventory.at(IFirstCellInRow).getPositionX()-this->Inventory.at(IFirstCellInRow).SCellBg->getContentSize().width,
                                    this->Inventory.at(IFirstCellInRow).getPositionY()
                            )
                    )
            );
            this->showMessage(std::string("Quest item already exist in inventory!"));
        }

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
    CellToClear.IPItemInCell= nullptr;
    CellToClear.LItemCount->setString("");
    CellToClear.IItemCount=0;
    CellToClear.ICellCost=0;
}

void InventoryContainer::sortInventory(ESortType ESortTypeInput){
    if(ESortTypeInput==ESortType::PRICE){
//        std::sort(this->Inventory.begin(),this->Inventory.end(),[this](ItemCell Left,ItemCell Right){
//            return Left.ICellCost>Right.ICellCost;
//        });
        cocos2d::log("Sort by Price");
    }else{

    }
}

bool InventoryContainer::bIsItemsEqual(Item *Left, Item *Right) {
    return Left->EItemType == Right->EItemType && Left->FItemCost == Right->FItemCost && Left->BIsStackable == Right->BIsStackable && Left->IQuestID == Right->IQuestID;
}

bool InventoryContainer::bIsCellEmpty(int ICellToCheck){
    if(ICellToCheck>=0){
        return this->Inventory.at(ICellToCheck).IPItemInCell == nullptr;
    }else{
        return true;
    }
}

bool InventoryContainer::bCanBeAdded(Item* InputItem){
    if(InputItem!= nullptr){
        unsigned int UICounter=0;
        for(auto&& Cell : this->Inventory){
            if(!this->bIsCellEmpty(UICounter)){
                if(this->bIsItemsEqual(InputItem,Cell.IPItemInCell) && !InputItem->BIsStackable){
                    return false;
                }
            }
            ++UICounter;
        }
        return true;
    }
}

void InventoryContainer::updateCellCounter(unsigned int UICellToUpdate){
    ItemCell& CellToUpdate = this->Inventory.at(UICellToUpdate);
    if(CellToUpdate.IItemCount>0 && CellToUpdate.IPItemInCell->BIsStackable){
        CellToUpdate.LItemCount->setString(std::to_string(CellToUpdate.IItemCount));
    }else{
        CellToUpdate.LItemCount->setString("");
    }
}

void InventoryContainer::showMessage(std::string messageText){
    auto showText = cocos2d::CallFunc::create([this,messageText](){
        this->LInventoryMessage->setString(messageText);
    });
    auto clearText = cocos2d::CallFunc::create([this](){
        this->LInventoryMessage->setString("");
    });
    this->runAction(cocos2d::Sequence::create(showText,cocos2d::DelayTime::create(3),clearText, nullptr));
}