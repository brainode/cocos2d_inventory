//
// Created by rusbaron on 10/8/16.
//

#include "ItemCell.h"
#include "InventoryScene.h"

ItemCell::ItemCell(){
    this->IPItemInCell= nullptr;
    this->IItemCount = 0;
    this->ICellCost = 0;

    this->SCellBg = cocos2d::Sprite::createWithSpriteFrameName("cellbg");
    addChild(this->SCellBg,0);

    ///Label,that present ItemCount in cell to player
    int FontSize = 16;
    this->LItemCount= cocos2d::Label::createWithTTF("", "fonts/Marker Felt.ttf", FontSize);
    this->LItemCount->setPosition(this->SCellBg->getContentSize().width/2-FontSize,this->SCellBg->getContentSize().height/2-FontSize);
    addChild(this->LItemCount,50);

	this->LCellCost = cocos2d::Label::createWithTTF("", "fonts/Marker Felt.ttf", FontSize);
	this->LCellCost->setColor(cocos2d::Color3B::YELLOW);
	this->LCellCost->setPosition(this->SCellBg->getContentSize().width / 2 - FontSize, -this->SCellBg->getContentSize().height / 2 + FontSize);
	addChild(this->LCellCost, 50);

    this->ICellNumber=0;

    this->setName("ItemCell");

}

ItemCell::ItemCell(ItemCell& CellToCopy) {
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

        this->setName("ItemCell");
    }
}

ItemCell::ItemCell(ItemCell&& CellToMove) {
    if (this != &CellToMove) {
        this->IPItemInCell = CellToMove.IPItemInCell;
        this->IItemCount = CellToMove.IItemCount;
        this->ICellCost = CellToMove.ICellCost;
        this->ICellNumber = CellToMove.ICellNumber;
        this->SCellBg = CellToMove.SCellBg;
        //CellToMove.SCellBg->removeFromParent();
        CellToMove.removeChild(CellToMove.SCellBg, false);
        addChild(this->SCellBg);

        ///Label,that present ItemCount in cell to player
        int FontSize = 16;
        this->LItemCount = CellToMove.LItemCount;
        //CellToMove.LItemCount->removeFromParent();
        CellToMove.removeChild(CellToMove.LItemCount,false);
        this->LItemCount->setPosition(this->SCellBg->getContentSize().width / 2 - FontSize, this->SCellBg->getContentSize().height / 2 - FontSize);
        addChild(this->LItemCount, 50);

        this->setName("ItemCell");
    }
}

ItemCell& ItemCell::operator=(const ItemCell& CellToCopy) {
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


ItemCell::~ItemCell(){
    this->removeAllChildrenWithCleanup(true);
}

void ItemCell::updateLabels() {
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
	}
}
