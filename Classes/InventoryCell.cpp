//
// Created by rusbaron on 10/8/16.
//

#include "InventoryCell.h"
#include "InventoryScene.h"

InventoryCell::InventoryCell():Cell(){
    this->ICellCost = 0;

    int FontSize = 16;
	this->LCellCost = cocos2d::Label::createWithTTF("", "fonts/Marker Felt.ttf", FontSize);
	this->LCellCost->setColor(cocos2d::Color3B::YELLOW);
	this->LCellCost->setPosition(this->SCellBg->getContentSize().width / 2 - FontSize, -this->SCellBg->getContentSize().height / 2 + FontSize);
	addChild(this->LCellCost, 50);

    this->ICellNumber=0;

    this->setName("InventoryCell");
}

InventoryCell::InventoryCell(InventoryCell& CellToCopy){
    if (this != &CellToCopy) {
        ///Copy need for swapping throw tmp cell,so no need to create new copy of item,just link to the same address in memory
        this->IPItemInCell = CellToCopy.IPItemInCell;
        this->IItemCount = CellToCopy.IItemCount;
        this->ICellCost = CellToCopy.ICellCost;
        this->ICellNumber = CellToCopy.ICellNumber;
        this->SCellBg = cocos2d::Sprite::createWithSpriteFrameName("cellbg");
        addChild(this->SCellBg);

        ///Label,that present ItemCount in cell to player
        int FontSize = 16;
        this->LItemCount = cocos2d::Label::createWithTTF("", "fonts/Marker Felt.ttf", FontSize);
        this->LItemCount->setString(CellToCopy.LItemCount->getString());
        this->LItemCount->setPosition(this->SCellBg->getContentSize().width / 2 - FontSize, this->SCellBg->getContentSize().height / 2 - FontSize);
        addChild(this->LItemCount, 50);

		this->LCellCost = cocos2d::Label::createWithTTF("", "fonts/Marker Felt.ttf", FontSize);
		this->LCellCost->setString(CellToCopy.LCellCost->getString());
		this->LCellCost->setPosition(this->SCellBg->getContentSize().width / 2 - FontSize, -this->SCellBg->getContentSize().height / 2 + FontSize);
		addChild(this->LCellCost, 50);

        this->setName("InventoryCell");
    }
}

InventoryCell& InventoryCell::operator=(const InventoryCell& CellToCopy) {
    if (this != &CellToCopy) {
        ///Copy need for swapping throw tmp cell,so no need to create new copy of item,just link to the same address in memory
        this->IPItemInCell = CellToCopy.IPItemInCell;
        this->IItemCount = CellToCopy.IItemCount;
        this->ICellCost = CellToCopy.ICellCost;
        this->LItemCount->setString(CellToCopy.LItemCount->getString());
		this->LCellCost->setString(CellToCopy.LCellCost->getString());

        if(this->IPItemInCell!= nullptr && this->getParent()!= nullptr) {
            this->IPItemInCell->setPosition(this->getParent()->convertToWorldSpace(this->getPosition()));
        }
    }
    return *this;
}


InventoryCell::~InventoryCell(){
    this->removeAllChildrenWithCleanup(true);
}

void InventoryCell::updateLabels() {
	if (this->IPItemInCell != nullptr) {
		if (this->IItemCount) {
			this->LCellCost->setString("$"+std::to_string(this->ICellCost));
			if (this->IPItemInCell->BIsStackable) {
				this->LItemCount->setString(std::to_string(this->IItemCount));
			}
			else {
				this->LItemCount->setString("");
			}
		}
		else {
			this->LItemCount->setString("");
			this->LCellCost->setString("");
		}
	}else{
        this->LItemCount->setString("");
        this->LCellCost->setString("");
	}
}

void InventoryCell::putItemAtInventory(Item* ItPItemToPut,unsigned int UIItemCount=1){
    this->IPItemInCell = ItPItemToPut;
    this->IItemCount+=UIItemCount;
    this->ICellCost+=ItPItemToPut->FItemCost*UIItemCount;

    this->IPItemInCell->setPosition(this->getParent()->convertToWorldSpace(this->getPosition()));
    //If item in cell equal with item to put-remove sprite from putting item
    // if(this->IPItemInCell==*ItPItemToPut)
}

void InventoryCell::deleteItemFromCell(int ICountItemToDelete)
{
    int ICountToDelete = ICountItemToDelete > this->IItemCount ? this->IItemCount : ICountItemToDelete;
    this->IItemCount -= ICountToDelete;
    this->ICellCost -= this->IPItemInCell->FItemCost*ICountToDelete;
    if(!this->IItemCount)
    {
        this->IPItemInCell->removeFromParentAndCleanup(true);
        this->IPItemInCell = nullptr;
    }
    this->updateLabels();
}

#if _DEBUG==1
void InventoryCell::showClickedCell() {
	auto fadeIn = cocos2d::FadeIn::create(0.25f);
	auto fadeOut = cocos2d::FadeOut::create(0.25f);
	this->SCellBg->runAction(cocos2d::Sequence::create(fadeOut,fadeIn,nullptr ));
}
#endif // DEBUG