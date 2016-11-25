//
// Created by rusbaron on 11/10/16.
//

#include "Cell.h"

Cell::Cell(){
    this->IPItemInCell= nullptr;
    this->IItemCount = 0;

    this->SCellBg = cocos2d::Sprite::createWithSpriteFrameName("cellbg");
    addChild(this->SCellBg,0);

    ///Label,that present ItemCount in cell to player
    int FontSize = 16;
    this->LItemCount= cocos2d::Label::createWithTTF("", "fonts/Marker Felt.ttf", FontSize);
    this->LItemCount->setPosition(this->SCellBg->getContentSize().width/2-FontSize,this->SCellBg->getContentSize().height/2-FontSize);
    addChild(this->LItemCount,50);
}

Cell::Cell(Cell& CellToCopy) {
    if (this != &CellToCopy) {
        ///Copy need for swapping throw tmp cell,so no need to create new copy of item,just link to the same address in memory
        this->IPItemInCell = CellToCopy.IPItemInCell;
        this->IItemCount = CellToCopy.IItemCount;
        this->SCellBg = cocos2d::Sprite::createWithSpriteFrameName("cellbg");
        addChild(this->SCellBg);

        ///Label,that present ItemCount in cell to player
        int FontSize = 16;
        this->LItemCount = cocos2d::Label::createWithTTF("", "fonts/Marker Felt.ttf", FontSize);
        this->LItemCount->setString(CellToCopy.LItemCount->getString());
        this->LItemCount->setPosition(this->SCellBg->getContentSize().width / 2 - FontSize, this->SCellBg->getContentSize().height / 2 - FontSize);
        addChild(this->LItemCount, 50);
    }
}

Cell& Cell::operator=(const Cell& CellToCopy) {
    if (this != &CellToCopy) {
        ///Copy need for swapping throw tmp cell,so no need to create new copy of item,just link to the same address in memory
        this->IPItemInCell = CellToCopy.IPItemInCell;
        this->IItemCount = CellToCopy.IItemCount;
        this->LItemCount->setString(CellToCopy.LItemCount->getString());
        if(this->IPItemInCell!= nullptr && this->getParent()!= nullptr) {
            this->IPItemInCell->setPosition(this->getParent()->convertToWorldSpace(this->getPosition()));
        }
    }
    return *this;
}


Cell::~Cell(){
    this->removeAllChildrenWithCleanup(true);
}


bool Cell::bIsCellEmpty()const{
    if (this->IPItemInCell == nullptr)
    {
        return true;
    }
    return false;
}

#if _DEBUG==1
void Cell::showClickedCell() {
    auto fadeIn = cocos2d::FadeIn::create(0.25f);
    auto fadeOut = cocos2d::FadeOut::create(0.25f);
    this->SCellBg->runAction(cocos2d::Sequence::create(fadeOut,fadeIn,nullptr ));
}
#endif // DEBUG