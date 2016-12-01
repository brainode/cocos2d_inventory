//
// Created by rusbaron on 10/5/16.
//
#include "InventoryScene.h"

#include <iostream>

InventoryContainer::InventoryContainer(Hero* HePInventoryOwnerInput) {
    unsigned int UICounter = 0;
    for(auto&& Cell : this->Inventory){
        float FCellWidth = Cell.SCellBg->getContentSize().width;
        Cell.setPosition((UICounter%_CELL_IN_ROW)*FCellWidth,static_cast<int>(UICounter/_CELL_IN_ROW)*FCellWidth);
        addChild(&Cell);
        Cell.ICellNumber=UICounter;
        ++UICounter;
    }
    this->HePInventoryOwner = HePInventoryOwnerInput;
    this->HePInventoryOwner->setInventory(this);

    this->ICellForSwap = -1;

    this->NPUseMenu = nullptr;

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
            this->Inventory.at(0).getPosition().x+this->Inventory[0].SCellBg->getContentSize().width/2,
            this->Inventory.at(0).getPosition().y-this->Inventory[0].SCellBg->getContentSize().height/2-ButPriceSortButton->getContentSize().height/2
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
            this->Inventory.at(_CELL_IN_ROW-1).getPosition().x-this->Inventory[_CELL_IN_ROW-1].SCellBg->getContentSize().width/2,
            this->Inventory.at(_CELL_IN_ROW-1).getPosition().y-this->Inventory[_CELL_IN_ROW-1].SCellBg->getContentSize().height/2-ButTypeSortButton->getContentSize().height/2
    ));
	ButTypeSortButton->addClickEventListener([this](cocos2d::Ref* sender) {
		this->sortInventory(ESortType::TYPE);
	});
    addChild(ButTypeSortButton);
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    /*
     * Remove item menu
     */

    cocos2d::ui::CheckBox *CbPEqipment, *CbPConsumable, *CbPTrash;
    cocos2d::ui::EditBox *EbPCellNumber, *EbPItemCount;

    unsigned int UIFontSizeRemoveMenu = 15;
    unsigned int UIMaxLenght = 2;
    float FScale = 0.5;

    this->CbPEqipment = cocos2d::ui::CheckBox::create("check_box_normal.png",
        "check_box_normal_press.png",
        "check_box_active.png",
        "check_box_normal_disable.png",
        "check_box_active_disable.png");
    auto CheckboxEqLabel = cocos2d::Label::createWithTTF("Equipment", "fonts/Marker Felt.ttf", UIFontSizeRemoveMenu);
    CheckboxEqLabel->setTextColor(cocos2d::Color4B::WHITE);
    this->CbPEqipment->setScale(FScale);
    this->CbPEqipment->setPosition(cocos2d::Vec2(
        this->Inventory[_CELL_IN_ROW - 1].getPosition().x + this->Inventory[0].SCellBg->getContentSize().width,
        this->Inventory[_INVENTORY_SIZE - 1].getPosition().y
    ));
    CheckboxEqLabel->setPosition(cocos2d::Vec2(
        this->Inventory[_CELL_IN_ROW - 1].getPosition().x + this->Inventory[0].SCellBg->getContentSize().width*1.5,
        this->Inventory[_INVENTORY_SIZE - 1].getPosition().y
    ));
    addChild(CheckboxEqLabel);
   

    this->CbPConsumable = cocos2d::ui::CheckBox::create("check_box_normal.png",
        "check_box_normal_press.png",
        "check_box_active.png",
        "check_box_normal_disable.png",
        "check_box_active_disable.png");
    auto CheckboxCoLabel = cocos2d::Label::createWithTTF("Consumable", "fonts/Marker Felt.ttf", UIFontSizeRemoveMenu);
    CheckboxCoLabel->setTextColor(cocos2d::Color4B::WHITE);
    this->CbPConsumable->setScale(FScale);
    this->CbPConsumable->setPosition(cocos2d::Vec2(
        this->Inventory[_CELL_IN_ROW - 1].getPosition().x + this->Inventory[0].SCellBg->getContentSize().width,
        this->Inventory[_INVENTORY_SIZE - 1].getPosition().y - this->CbPEqipment->getContentSize().height
    ));
    CheckboxCoLabel->setPosition(cocos2d::Vec2(
        this->Inventory[_CELL_IN_ROW - 1].getPosition().x + this->Inventory[0].SCellBg->getContentSize().width*1.5,
        this->Inventory[_INVENTORY_SIZE - _CELL_IN_ROW].getPosition().y - this->CbPEqipment->getContentSize().height
    ));
    addChild(CheckboxCoLabel);
    

    this->CbPTrash = cocos2d::ui::CheckBox::create("check_box_normal.png",
        "check_box_normal_press.png",
        "check_box_active.png",
        "check_box_normal_disable.png",
        "check_box_active_disable.png");
    auto CheckboxTrLabel = cocos2d::Label::createWithTTF("Trash", "fonts/Marker Felt.ttf", UIFontSizeRemoveMenu);
    CheckboxTrLabel->setTextColor(cocos2d::Color4B::WHITE);
    this->CbPTrash->setScale(FScale);
    this->CbPTrash->setPosition(cocos2d::Vec2(
        this->Inventory[_CELL_IN_ROW - 1].getPosition().x + this->Inventory[0].SCellBg->getContentSize().width,
        this->Inventory[_INVENTORY_SIZE - 1].getPosition().y - this->CbPEqipment->getContentSize().height*2
    ));
    CheckboxTrLabel->setPosition(cocos2d::Vec2(
        this->Inventory[_CELL_IN_ROW - 1].getPosition().x + this->Inventory[0].SCellBg->getContentSize().width*1.5,
        this->Inventory[_INVENTORY_SIZE - 1].getPosition().y - this->CbPEqipment->getContentSize().height*2
    ));
    addChild(CheckboxTrLabel);
    

    this->CbPEqipment->addClickEventListener([this](cocos2d::Ref* sender) {
        this->CbPConsumable->setSelectedState(false);
        this->CbPTrash->setSelectedState(false);
    });
    this->CbPConsumable->addClickEventListener([this](cocos2d::Ref* sender) {
        this->CbPEqipment->setSelectedState(false);
        this->CbPTrash->setSelectedState(false);

    });
    this->CbPTrash->addClickEventListener([this](cocos2d::Ref* sender) {
        this->CbPConsumable->setSelectedState(false);
        this->CbPEqipment->setSelectedState(false);

    });

    this->addChild(this->CbPEqipment);
    this->addChild(this->CbPConsumable);
    this->addChild(this->CbPTrash);
    
    /*
     * Edit boxes
     */
    cocos2d::Size EditBoxSize = cocos2d::Size(200, 50);

    this->EbPItemCount = cocos2d::ui::EditBox::create(EditBoxSize,cocos2d::ui::Scale9Sprite::create(std::string("countinputfon.png")) );
    this->EbPItemCount->setPosition(cocos2d::Vec2(
        this->Inventory[_CELL_IN_ROW - 1].getPosition().x + this->Inventory[0].SCellBg->getContentSize().width*1.5,
        this->Inventory[_INVENTORY_SIZE - 1].getPosition().y - this->CbPEqipment->getContentSize().height * 3
    ));
    this->EbPItemCount->setInputMode(cocos2d::ui::EditBox::InputMode::NUMERIC);
    this->EbPItemCount->setMaxLength(UIMaxLenght);
    this->EbPItemCount->setFontSize(UIFontSizeRemoveMenu);
    this->EbPItemCount->setPlaceHolder("Type item count");
    this->EbPItemCount->setPlaceholderFontSize(UIFontSizeRemoveMenu);

    this->EbPCellNumber = cocos2d::ui::EditBox::create(EditBoxSize, cocos2d::ui::Scale9Sprite::create(std::string("countinputfon.png")));
    this->EbPCellNumber->setPosition(cocos2d::Vec2(
        this->Inventory[_CELL_IN_ROW - 1].getPosition().x + this->Inventory[0].SCellBg->getContentSize().width*1.5,
        this->Inventory[_INVENTORY_SIZE - 1].getPosition().y - this->CbPEqipment->getContentSize().height * 3 - EditBoxSize.height
    ));
    this->EbPCellNumber->setInputMode(cocos2d::ui::EditBox::InputMode::NUMERIC);
    this->EbPCellNumber->setMaxLength(UIMaxLenght);
    this->EbPCellNumber->setFontSize(UIFontSizeRemoveMenu);
    this->EbPCellNumber->setPlaceHolder("Type cell noumber");
    this->EbPCellNumber->setPlaceholderFontSize(UIFontSizeRemoveMenu);

    addChild(this->EbPItemCount);
    addChild(this->EbPCellNumber);
    /*
     * Remove button
     */
    cocos2d::ui::Button* RemoveButton = cocos2d::ui::Button::create("menubutton.png", "menubutton_pressed.png");
    RemoveButton->setTitleText("Remove");
    RemoveButton->setTitleColor(cocos2d::Color3B::BLACK);
    RemoveButton->setTitleFontSize(UIFontSize);
    RemoveButton->setPosition(cocos2d::Vec2(
        this->Inventory[_CELL_IN_ROW - 1].getPosition().x + this->Inventory[0].SCellBg->getContentSize().width*1.5,
        this->Inventory[_CELL_IN_ROW - 1].getPosition().y
    ));

    RemoveButton->addClickEventListener([this](cocos2d::Ref* sender) {
        ItemType EItemTypeToDelete = ItemType::NONE;
        int ICellToDelete = -1;
        int ICountToDelete = -1;
        bool BCheckboxEq = this->CbPEqipment->getSelectedState();
        bool BCheckboxCo = this->CbPConsumable->getSelectedState();
        bool BCheckboxTr = this->CbPTrash->getSelectedState();
        ////Set conditions to delete
        if(BCheckboxEq)
        {
            EItemTypeToDelete = EquipmentType;
        }
        if (BCheckboxCo)
        {
            EItemTypeToDelete = ConsumableType;
        }
        if (BCheckboxTr)
        {
            EItemTypeToDelete = TrashType;
        }
        if(std::strlen(this->EbPItemCount->getText()) != 0)
        {
            ICountToDelete = std::stoi(this->EbPItemCount->getText());
        }
        if (std::strlen(this->EbPCellNumber->getText()) != 0)
        {
            if(std::stoi(this->EbPCellNumber->getText()) <= _INVENTORY_SIZE && std::stoi(this->EbPCellNumber->getText())>0)
            {
                ICellToDelete = std::stoi(this->EbPCellNumber->getText()) - 1;
            }
        }
        ////Start deleting
        if(ICellToDelete>=0)
        {
            if(EItemTypeToDelete == ItemType::NONE && !this->bIsCellEmpty(ICellToDelete))
            {
                if(ICountToDelete<0)
                {
                    this->deleteAllItems(ICellToDelete);
                }else
                {
                    if(this->Inventory[ICellToDelete].IPItemInCell->IQuestID<0)
                    {
                        this->deleteItems(ICellToDelete, ICountToDelete);
                    }
                }
                
            }else if(!this->bIsCellEmpty(ICellToDelete))
            {
                if(this->Inventory[ICellToDelete].IPItemInCell->EItemType == EItemTypeToDelete)
                {
                    if(ICountToDelete<0)
                    {
                        this->deleteAllItems(ICellToDelete);
                    }else
                    {
                        if (this->Inventory[ICellToDelete].IPItemInCell->IQuestID<0)
                        {
                            this->deleteItems(ICellToDelete, ICountToDelete);
                        }
                    }
                    
                }
            }
        }else
        {
            if(EItemTypeToDelete != ItemType::NONE)
            {
                if(ICountToDelete<0)
                {
                    this->deleteAllItems(EItemTypeToDelete);
                }else
                {
                    this->deleteItems(EItemTypeToDelete, ICountToDelete);
                }
            }
        }
        this->clearRemoveMenu();
    });
    addChild(RemoveButton);

    
     //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    this->setName("ItemContainer");

    this->addEvents();
}

InventoryContainer::~InventoryContainer() {
}

InventoryCell& InventoryContainer::operator [](int ICellAtNumber)
{
    return this->Inventory.at(ICellAtNumber);
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
#if _DEBUG==1
			ItemCell.showClickedCell();
#endif // DEBUG
            return ItemCell.ICellNumber;
        }
    }
    return -1;
}

void InventoryContainer::addEvents() {
    auto listener = cocos2d::EventListenerMouse::create();
    listener->onMouseDown = [this](cocos2d::Event* event){
        cocos2d::EventMouse* EM = static_cast<cocos2d::EventMouse*>(event);
        //this->clearUseMenu();
		if (EM->getMouseButton() == MOUSE_BUTTON_LEFT) {
            this->ICellForSwap = this->iCellIsHit(EM);
            if (this->NPUseMenu && this->bIsItemMenuClicked(EM,this->ICellForSwap))
            {
                this->clearUseMenu();
            }
            if (this->ICellForSwap >= 0) {
				if (InventoryScene::IPMovedItem == nullptr && !this->bIsCellEmpty(this->ICellForSwap)) {
					InventoryScene::IPMovedItem = this->Inventory.at(ICellForSwap).IPItemInCell;
					InventoryScene::IPMovedItem->BIsGrabByUser = true;
					//cocos2d::log("Item from Cell:%i was grabbed with quantity %i", ICellForSwap, this->Inventory.at(ICellForSwap).IItemCount);
				}
			}
        }else if(EM->getMouseButton() == MOUSE_BUTTON_RIGHT)
        {
            int ICellHit = this->iCellIsHit(EM);
            this->clearUseMenu();
            if(ICellHit>=0 && !this->bIsCellEmpty(ICellHit))
            {
                this->NPUseMenu = Inventory[ICellHit].IPItemInCell->showAvailableActions();
                Node* useButtonNode = this->NPUseMenu->getChildByName("useButton");
                auto useButton = static_cast<cocos2d::ui::Button*>(useButtonNode);
                if(useButton)
                {
                    useButton->addClickEventListener([this,ICellHit](cocos2d::Ref* sender) {
                        Inventory[ICellHit].IPItemInCell->useItem(this->HePInventoryOwner);
                        switch(Inventory[ICellHit].IPItemInCell->EItemType)
                        {
                            case EquipmentType:
                                this->clearCell(ICellHit);
                                break;
                            default:
                                this->deleteItems(ICellHit);
                                break;
                        }
                        this->clearUseMenu();
                    });
                }
                Node* sellButtonNode = this->NPUseMenu->getChildByName("sellButton");
                auto sellButton = static_cast<cocos2d::ui::Button*>(sellButtonNode);
                if (sellButton)
                {
                    sellButton->addClickEventListener([this, ICellHit](cocos2d::Ref* sender) {
                        this->HePInventoryOwner->addMoneyToPurse(Inventory[ICellHit].ICellCost);
                        this->deleteItems(ICellHit, Inventory[ICellHit].IItemCount);
                        this->clearUseMenu();
                    });
                }
                Node* dropButtonNode = this->NPUseMenu->getChildByName("dropButton");
                auto dropButton = static_cast<cocos2d::ui::Button*>(dropButtonNode);
                if (dropButton)
                {
                    dropButton->addClickEventListener([this, ICellHit](cocos2d::Ref* sender) {
                        this->deleteItems(ICellHit, Inventory[ICellHit].IItemCount);
                        this->clearUseMenu();
                    });
                }
                this->NPUseMenu->setPosition(
                    this->convertToWorldSpace(Inventory[ICellHit].getPosition())
                );
                /////Cursor has 1000 priority
                this->getParent()->addChild(this->NPUseMenu, 999);
                
            }
        }
    };
    listener->onMouseUp = [this](cocos2d::Event* event){
        cocos2d::EventMouse* EM = static_cast<cocos2d::EventMouse*>(event);
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
                else if (this->HePInventoryOwner->bIsArmHitted(event) && InventoryScene::IPMovedItem->EItemType == ItemType::EquipmentType) {
                    this->Inventory[ICellForSwap].clearCell();
                }
                else
                {
                    InventoryScene::IPMovedItem->setPosition(this->convertToWorldSpace(this->Inventory.at(ICellForSwap).getPosition()));
                    this->showMessage(std::string("Quest item can't be removed!"));
                }
            }
			InventoryScene::IPMovedItem = nullptr;
			this->ICellForSwap = -1;
        }
    };
    cocos2d::Director::getInstance()->getEventDispatcher()->addEventListenerWithFixedPriority(listener,30);
}

void InventoryContainer::addItems(Item* InputItem,unsigned int UICellClicked,unsigned int UIItemCount){
    InventoryCell& CellToUpdate = this->Inventory.at(UICellClicked);
    if(this->bCanBeAdded(InputItem)){
        if(CellToUpdate.IPItemInCell!= nullptr && CellToUpdate.IPItemInCell->BIsStackable && InputItem->BIsStackable && *InputItem == *CellToUpdate.IPItemInCell){
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

void InventoryContainer::addItemsAtFirstAvailableCell(Item* InputItem, unsigned int UIItemCount){
    bool bIsPlaced = false;
    for(auto&& Cell : this->Inventory)
    {
        if(Cell.bIsCellEmpty()){
            this->addItems(InputItem, Cell.ICellNumber,UIItemCount);
            bIsPlaced = true;
            break;
        }else{
            if(*Cell.IPItemInCell == *InputItem && InputItem->BIsStackable)
            {
                this->addItems(InputItem, Cell.ICellNumber, UIItemCount);
                bIsPlaced = true;
                break;
            }
        }
    }
    if(!bIsPlaced)
    {
        int ICellToPlaced = rand() % _INVENTORY_SIZE;
        for(int IIter=0;IIter<UIItemCount;IIter++)
        {
            this->putItemOutsideInventory(InputItem, ICellToPlaced);
        }
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
    InventoryCell& CellFrom = this->Inventory[UICellFrom];
    InventoryCell& CellTo = this->Inventory[UICellTo];
    if(!this->bIsCellEmpty(UICellTo) && !this->bIsCellEmpty(UICellFrom) && *CellTo.IPItemInCell == *CellFrom.IPItemInCell){
            this->addItems(CellFrom.IPItemInCell,CellTo.ICellNumber,CellFrom.IItemCount);
            this->clearCell(CellFrom.ICellNumber);
    }else{
        InventoryCell Tmp = CellTo;
        CellTo = CellFrom;
        CellFrom = Tmp;
    }
}

void InventoryContainer::clearCell(unsigned int UICellToClear)
{
    //this->Inventory[UICellToClear]
	this->Inventory[UICellToClear] = InventoryCell();
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
                    if(*ItemToStack == *this->Inventory.at(ICellIteratorToStack).IPItemInCell)
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
    if(ESortTypeInput == ESortType::PRICE){
        do{
            BUnsorted = false;
            int ICellNum = 0;
            for(auto CellIterator= this->Inventory.begin();CellIterator!=this->Inventory.end()-1;CellIterator++){
                if((*CellIterator).ICellCost<(*(CellIterator+1)).ICellCost){
                    BUnsorted=true;
                    this->swapCells(ICellNum,ICellNum + 1);
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
				if ((ILeftCellSum < IRightCellSum))
				{
					BUnsorted = true;
					this->swapCells(ICellNum, ICellNum + 1);
				}
				++ICellNum;
			}
		} while (BUnsorted);
    }
}

bool InventoryContainer::bIsCellEmpty(int ICellToCheck){
    if(ICellToCheck>=0){
        return this->Inventory[ICellToCheck].bIsCellEmpty();
    }else{
        return true;
    }
}

bool InventoryContainer::bCanBeAdded(Item* InputItem){
    if(InputItem!= nullptr){
        unsigned int UICounter=0;
        for(auto&& Cell : this->Inventory){
            if(!this->bIsCellEmpty(UICounter)){
                if(*InputItem == *Cell.IPItemInCell && !InputItem->BIsStackable && InputItem->IQuestID>0){
                    return false;
                }
            }
            ++UICounter;
        }
        return true;
    }
}

void InventoryContainer::updateCellCounter(unsigned int UICellToUpdate){
	this->Inventory.at(UICellToUpdate).updateLabels();
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

void InventoryContainer::clearUseMenu(){
    if (this->NPUseMenu != nullptr) {
        this->NPUseMenu->removeAllChildrenWithCleanup(true);
        this->NPUseMenu->removeFromParentAndCleanup(true);
        this->NPUseMenu = nullptr;
    }
}


void InventoryContainer::deleteItems(unsigned int UICell, unsigned int UIItemCount){
    this->Inventory[UICell].deleteItemFromCell(UIItemCount);
}

void InventoryContainer::deleteItems(ItemType EItemTypeToDelete, unsigned int UIItemCount){
    for (auto&& Cell : Inventory){
        if(UIItemCount){
            if (!bIsCellEmpty(Cell.ICellNumber) && Cell.IPItemInCell->EItemType == EItemTypeToDelete && Cell.IPItemInCell->IQuestID<0) {
                unsigned int UIItemLeft = UIItemCount > Cell.IItemCount ? UIItemCount-Cell.IItemCount : 0;
                Cell.deleteItemFromCell(UIItemCount);
                UIItemCount = UIItemLeft;
            }
        }else{
            break;
        }
    }
}

void InventoryContainer::deleteAllItems(unsigned int UICell){
    if(!this->Inventory[UICell].bIsCellEmpty() && this->Inventory[UICell].IPItemInCell->IQuestID<0)
    {
        this->Inventory[UICell].deleteItemFromCell(this->Inventory[UICell].IItemCount);
    }
}

void InventoryContainer::deleteAllItems(ItemType EItemTypeToDelete){
    for (auto&& Cell : Inventory) {
            if (!bIsCellEmpty(Cell.ICellNumber) && Cell.IPItemInCell->EItemType == EItemTypeToDelete && Cell.IPItemInCell->IQuestID<0) {
                Cell.deleteItemFromCell(Cell.IItemCount);
            }
    }
}

void InventoryContainer::clearRemoveMenu() const{
    this->CbPEqipment->setSelectedState(false);
    this->CbPConsumable->setSelectedState(false);
    this->CbPTrash->setSelectedState(false);

    this->EbPCellNumber->setText("");
    this->EbPItemCount->setText("");
}

bool InventoryContainer::bIsItemMenuClicked(cocos2d::EventMouse* EInput, int ICellClicked) const {
    if(ICellClicked>=0)
    {
        int fixWidth = this->Inventory[ICellClicked].SCellBg->getContentSize().width;
        int fixHeight = this->Inventory[ICellClicked].SCellBg->getContentSize().height;


        Node* useButtonNode = this->NPUseMenu->getChildByName("useButton");
        Node* sellButtonNode = this->NPUseMenu->getChildByName("sellButton");
        Node* dropButtonNode = this->NPUseMenu->getChildByName("dropButton");

        cocos2d::Vec2 V2MouseLocation = EInput->getLocation();
        ///Converting mouse location to global world location(Y)
        V2MouseLocation.y = cocos2d::Director::getInstance()->getWinSize().height - V2MouseLocation.y;

        bool BIsUseButtonClicked = false;
        bool BIsSellButtonClicked = false;
        bool BIsDropButtonClicked = false;
        if (useButtonNode)
        {
            cocos2d::Rect RUseButtonNodeLocal = useButtonNode->getBoundingBox();
            cocos2d::Vec2 V2UseLeftBottomWorldPoint = this->convertToWorldSpace(cocos2d::Vec2(RUseButtonNodeLocal.getMinX(),
                RUseButtonNodeLocal.getMinY()));
            ///Convert Rect to world space
            cocos2d::Rect RUseNodeWorldPosition = cocos2d::Rect(V2UseLeftBottomWorldPoint.x + ICellClicked%_CELL_IN_ROW*fixWidth,
                V2UseLeftBottomWorldPoint.y + ICellClicked/_CELL_IN_ROW*fixHeight,
                useButtonNode->getContentSize().width*useButtonNode->getScaleX(),
                useButtonNode->getContentSize().height*useButtonNode->getScaleY());
            BIsUseButtonClicked = RUseNodeWorldPosition.containsPoint(V2MouseLocation);
        }
        if (sellButtonNode)
        {
            cocos2d::Rect RSellButtonNodeLocal = sellButtonNode->getBoundingBox();
            cocos2d::Vec2 V2SellLeftBottomWorldPoint = this->convertToWorldSpace(cocos2d::Vec2(RSellButtonNodeLocal.getMinX(), RSellButtonNodeLocal.getMinY()));
            ///Convert Rect to world space
            cocos2d::Rect RSellNodeWorldPosition = cocos2d::Rect(V2SellLeftBottomWorldPoint.x + ICellClicked%_CELL_IN_ROW*fixWidth,
                V2SellLeftBottomWorldPoint.y + ICellClicked / _CELL_IN_ROW*fixHeight,
                sellButtonNode->getContentSize().width*sellButtonNode->getScaleX(),
                sellButtonNode->getContentSize().height*sellButtonNode->getScaleY());
            BIsSellButtonClicked = RSellNodeWorldPosition.containsPoint(V2MouseLocation);
        }
        if (dropButtonNode)
        {
            cocos2d::Rect RDropButtonNodeLocal = dropButtonNode->getBoundingBox();
            cocos2d::Vec2 V2DropLeftBottomWorldPoint = this->convertToWorldSpace(cocos2d::Vec2(RDropButtonNodeLocal.getMinX(), RDropButtonNodeLocal.getMinY()));
            ///Convert Rect to world space
            cocos2d::Rect RDropNodeWorldPosition = cocos2d::Rect(V2DropLeftBottomWorldPoint.x + ICellClicked%_CELL_IN_ROW*fixWidth,
                V2DropLeftBottomWorldPoint.y + ICellClicked / _CELL_IN_ROW*fixHeight,
                dropButtonNode->getContentSize().width*dropButtonNode->getScaleX(),
                dropButtonNode->getContentSize().height*dropButtonNode->getScaleY());
            BIsDropButtonClicked = RDropNodeWorldPosition.containsPoint(V2MouseLocation);
        }
        return !BIsUseButtonClicked && !BIsSellButtonClicked && !BIsDropButtonClicked;
    }
    return true;
}