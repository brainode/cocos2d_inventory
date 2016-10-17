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

    this->ICellNumber=0;

    this->setName("ItemCell");

}

ItemCell::~ItemCell(){

}

