//
// Created by rusbaron on 10/5/16.
//
#include <Items/Consumable.h>
#include <Items/Trash.h>
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

	/*
	 * Sorting buttons
	 */
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
    ButTypeSortButton->setTitleColor(cocos2d::Color3B::BLACK); //Doesn't work on linux(Maybe when sprite and label debug set to 1)
    ButTypeSortButton->setTitleFontSize(UIFontSize);
    ButTypeSortButton->setPosition(cocos2d::Vec2(
            this->Inventory.at(_CELL_IN_ROW-1).getPosition().x-this->Inventory.at(_CELL_IN_ROW-1).SCellBg->getContentSize().width/2,
            this->Inventory.at(_CELL_IN_ROW-1).getPosition().y-this->Inventory.at(_CELL_IN_ROW-1).SCellBg->getContentSize().height/2-ButTypeSortButton->getContentSize().height/2
    ));
	ButTypeSortButton->addClickEventListener([this](cocos2d::Ref* sender) {
		this->sortInventory(ESortType::TYPE);
	});
    addChild(ButTypeSortButton);
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
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
            if(EM->getMouseButton()==MOUSE_BUTTON_LEFT && InventoryScene::IPMovedItem==nullptr && !this->bIsCellEmpty(this->ICellForSwap)){
                InventoryScene::IPMovedItem = this->Inventory.at(ICellForSwap).IPItemInCell;
                InventoryScene::IPMovedItem->BIsGrabByUser = true;
                cocos2d::log("Item from Cell:%i was grabbed with quantity %i",ICellForSwap, this->Inventory.at(ICellForSwap).IItemCount);
            }else if(EM->getMouseButton() == MOUSE_BUTTON_RIGHT){
            }

        }
    };
    listener->onMouseUp = [this](cocos2d::Event* event){
        cocos2d::EventMouse* EM = (cocos2d::EventMouse*)event;
        int IItemCellUnderMouse = this->iCellIsHit(EM);
        bool BIsEmptyCellFrom = this->bIsCellEmpty(this->ICellForSwap);
        if(EM->getMouseButton() == MOUSE_BUTTON_LEFT)
        {
            ///Check if Cell was grabbed
            if (this->ICellForSwap != IItemCellUnderMouse && !BIsEmptyCellFrom && IItemCellUnderMouse >= 0) {
                this->swapCells(ICellForSwap, IItemCellUnderMouse);
            }///Else check if any item was grabbed
            else if (InventoryScene::IPMovedItem != nullptr && this->ICellForSwap != IItemCellUnderMouse && this->ICellForSwap<0 && IItemCellUnderMouse >= 0) {
                this->addItems(InventoryScene::IPMovedItem, IItemCellUnderMouse);
            }///Cause when just moving item around this cell
            else if (this->ICellForSwap == IItemCellUnderMouse && !BIsEmptyCellFrom) {
                InventoryScene::IPMovedItem->setPosition(this->convertToWorldSpace(this->Inventory.at(IItemCellUnderMouse).getPosition()));
            }///Case when item moved out from inventory.
            else if (IItemCellUnderMouse<0 && this->ICellForSwap >= 0 && this->Inventory.at(ICellForSwap).IPItemInCell != nullptr) {
                ///Check that item not quest.
                if (this->Inventory.at(ICellForSwap).IPItemInCell->IQuestID<0) {
                    this->putItemOutsideInventory(ICellForSwap, EM);
                }
                else {
                    InventoryScene::IPMovedItem->setPosition(this->convertToWorldSpace(this->Inventory.at(ICellForSwap).getPosition()));
                    this->showMessage(std::string("Quest item can't be removed!"));
                }
            }
        }
        InventoryScene::IPMovedItem = nullptr;
        this->ICellForSwap=-1;
    };
    cocos2d::Director::getInstance()->getEventDispatcher()->addEventListenerWithFixedPriority(listener,30);
}

void InventoryContainer::addItems(Item* InputItem,unsigned int UICellClicked,unsigned int UIItemCount){
    ItemCell& CellToUpdate = this->Inventory.at(UICellClicked);
    if(this->bCanBeAdded(InputItem)){
        if(CellToUpdate.IPItemInCell!= nullptr && CellToUpdate.IPItemInCell->BIsStackable && InputItem->BIsStackable && this->bIsItemsEqual(InputItem,CellToUpdate.IPItemInCell)){
            ///Stack items
			CellToUpdate.IItemCount += UIItemCount;
			CellToUpdate.ICellCost += InputItem->FItemCost*UIItemCount;
            InputItem->removeFromParentAndCleanup(true);
        }else if(CellToUpdate.IPItemInCell == nullptr){
            ///add items to empty cell
			CellToUpdate.IItemCount += UIItemCount;
			CellToUpdate.ICellCost += InputItem->FItemCost*UIItemCount;
            CellToUpdate.IPItemInCell=InputItem;
            CellToUpdate.IPItemInCell->setPosition(this->convertToWorldSpace(CellToUpdate.getPosition()));
        }else{
            ///Replace item
            if(this->Inventory.at(UICellClicked).IPItemInCell->IQuestID>=0)
            {
                this->putItemOutsideInventory(InputItem, UICellClicked);
                this->showMessage(std::string("Quest item can't be removed from inventory!"));
            }else
            {
                this->putItemOutsideInventory(CellToUpdate.ICellNumber);
                CellToUpdate.IItemCount = UIItemCount;
                CellToUpdate.ICellCost = InputItem->FItemCost*UIItemCount;
                CellToUpdate.IPItemInCell = InputItem;
                CellToUpdate.IPItemInCell->setPosition(this->convertToWorldSpace(CellToUpdate.getPosition()));
            }
        }
        InputItem= nullptr;
        this->updateCellCounter(UICellClicked);
    }else{
		this->putItemOutsideInventory(InputItem,CellToUpdate.ICellNumber);
        this->showMessage(std::string("Quest item already exist in inventory!"));
    }
}

void InventoryContainer::putItemOutsideInventory(Item* IPInputItem, int ICellTo)
{
    int IFirstCellInRow = ICellTo - ICellTo%_CELL_IN_ROW;
    cocos2d::Vec2 V2PostitionToPlace = this->convertToWorldSpace(
        cocos2d::Vec2(
            this->Inventory.at(IFirstCellInRow).getPositionX() - this->Inventory.at(IFirstCellInRow).SCellBg->getContentSize().width,
            this->Inventory.at(IFirstCellInRow).getPositionY()
        )
    );
    IPInputItem->setPosition(V2PostitionToPlace);
}

void InventoryContainer::putItemOutsideInventory(int ICellFrom,cocos2d::EventMouse* EInput) {
    if(!this->bIsCellEmpty(ICellFrom))
    {
        Item* IPItemToPut = this->Inventory.at(ICellFrom).IPItemInCell;
        int IItemCount = this->Inventory.at(ICellFrom).IItemCount;
        cocos2d::Vec2 V2PostitionToPlace;
        if (EInput == nullptr)
        {
            int IFirstCellInRow = ICellFrom - ICellFrom%_CELL_IN_ROW;
            V2PostitionToPlace = this->convertToWorldSpace(
                cocos2d::Vec2(
                    this->Inventory.at(IFirstCellInRow).getPositionX() - this->Inventory.at(IFirstCellInRow).SCellBg->getContentSize().width,
                    this->Inventory.at(IFirstCellInRow).getPositionY()
                )
            );
        }
        else {
            V2PostitionToPlace = cocos2d::Vec2(EInput->getCursorX(),EInput->getCursorY());
        }
        IPItemToPut->setPosition(V2PostitionToPlace);
        for (int Iterator = 1;Iterator<IItemCount;Iterator++)
        {
            switch (IPItemToPut->EItemType)
            {
            case (ItemType::EquipmentType):
                IPItemToPut = new Equipment(*static_cast<Equipment*>(IPItemToPut));
                break;
            case (ItemType::ConsumableType):
                IPItemToPut = new Consumable(*static_cast<Consumable*>(IPItemToPut));
                break;
            case (ItemType::TrashType):
                IPItemToPut = new Trash(*static_cast<Trash*>(IPItemToPut));
                break;
            default:
                break;
            }
            this->getParent()->addChild(IPItemToPut);
            IPItemToPut->setPosition(V2PostitionToPlace);
        }
        this->clearCell(ICellFrom);
    }       
}


void InventoryContainer::swapCells(unsigned int UICellFrom,unsigned int UICellTo){
    ItemCell& CellFrom = this->Inventory.at(UICellFrom);
    ItemCell& CellTo = this->Inventory.at(UICellTo);
    if(this->bIsItemsEqual(CellTo.IPItemInCell,CellFrom.IPItemInCell)){
        this->addItems(CellFrom.IPItemInCell,CellTo.ICellNumber,CellFrom.IItemCount);
        this->clearCell(CellFrom.ICellNumber);
    }else{
        ItemCell Tmp = CellTo;
        CellTo = CellFrom;
        CellFrom = Tmp;
    }
}

void InventoryContainer::clearCell(unsigned int UICellToClear)
{
	this->Inventory.at(UICellToClear) = ItemCell();
}

void InventoryContainer::groupAllStackableItems()
{
    for(int ICellIterator = 0;ICellIterator<_INVENTORY_SIZE;++ICellIterator)
    {
        if(!this->bIsCellEmpty(ICellIterator))
        {
            Item* ItemToStack = this->Inventory.at(ICellIterator).IPItemInCell;
            for(int ICellIteratorToStack = ICellIterator+1;ICellIteratorToStack<_INVENTORY_SIZE;++ICellIteratorToStack)
            {
                if(!this->bIsCellEmpty(ICellIteratorToStack))
                {
                    if(this->bIsItemsEqual(ItemToStack,this->Inventory.at(ICellIteratorToStack).IPItemInCell))
                    {
                        this->addItems(this->Inventory.at(ICellIteratorToStack).IPItemInCell, ICellIterator, this->Inventory.at(ICellIteratorToStack).IItemCount);
                        this->clearCell(ICellIteratorToStack);
                    }
                }
            }
        }
    }
}


void InventoryContainer::sortInventory(ESortType ESortTypeInput){
    bool BUnsorted = true;
    this->groupAllStackableItems();
    if(ESortTypeInput==ESortType::PRICE){
        do{
            BUnsorted = false;
            int ICellNum = 0;
            for(auto CellIterator= this->Inventory.begin();CellIterator!=this->Inventory.end()-1;CellIterator++){
                if((*CellIterator).ICellCost<(*(CellIterator+1)).ICellCost || (*CellIterator).IPItemInCell!= nullptr && bIsItemsEqual((*CellIterator).IPItemInCell,(*(CellIterator+1)).IPItemInCell)){
                    BUnsorted=true;
                    this->swapCells(ICellNum,ICellNum+1);
                }
                ++ICellNum;
            }
        }while(BUnsorted);
    }else if(ESortTypeInput == ESortType::TYPE){
		do {
			BUnsorted = false;
			int ICellNum = 0;
			for (auto CellIterator = this->Inventory.begin(); CellIterator != this->Inventory.end() - 1; CellIterator++) {
				int ILeftCellSum = this->bIsCellEmpty((*CellIterator).ICellNumber) ? 0:(static_cast<int>((*CellIterator).IPItemInCell->EItemType) + ((*CellIterator).IPItemInCell->IQuestID > 0 ? 1 : 0));
				int IRightCellSum = this->bIsCellEmpty((*(CellIterator+1)).ICellNumber) ? 0 : (static_cast<int>((*(CellIterator + 1)).IPItemInCell->EItemType) + ((*(CellIterator + 1)).IPItemInCell->IQuestID > 0 ? 1 : 0));
                Item* ItPLeftItem =  (*CellIterator).IPItemInCell;
                Item* ItPRightItem =  (*(CellIterator+1)).IPItemInCell;
				if ((ILeftCellSum < IRightCellSum)||(ILeftCellSum == IRightCellSum && ILeftCellSum>0 && this->bIsItemsEqual(ItPLeftItem,ItPRightItem)))
				{
					BUnsorted = true;
					this->swapCells(ICellNum, ICellNum + 1);
				}
				++ICellNum;
			}
		} while (BUnsorted);
    }
}

bool InventoryContainer::bIsItemsEqual(Item *Left, Item *Right) {
    if(Left != nullptr && Right != nullptr){
        return Left->EItemType == Right->EItemType && Left->IItemID == Right->IItemID && Left->BIsStackable == Right->BIsStackable && Left->IQuestID == Right->IQuestID;
    }
    return false;
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
                if(this->bIsItemsEqual(InputItem,Cell.IPItemInCell) && !InputItem->BIsStackable && InputItem->IQuestID>0){
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