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
    addChild(this->LItemCount,5);

    this->ICellNumber=0;

    this->setName("ItemCell");
}

ItemCell::~ItemCell(){

}

/*bool ItemCell::BIsHit(cocos2d::EventMouse *EInput) {
    cocos2d::Vec2 V2MouseLocation = EInput->getLocation();
    ///Converting mouse location to global world location(Y)
    V2MouseLocation.y=cocos2d::Director::getInstance()->getWinSize().height-V2MouseLocation.y;

    cocos2d::Rect RSpriteLocal = this->SCellBg->getBoundingBox();

    cocos2d::Vec2 V2LeftBottomWorldPoint = this->SCellBg->getParent()->convertToWorldSpace(cocos2d::Vec2(RSpriteLocal.getMinX(),RSpriteLocal.getMinY()));
    ///Convert Rect to world space
    cocos2d::Rect RSpriteWorldPosition = cocos2d::Rect(V2LeftBottomWorldPoint.x,V2LeftBottomWorldPoint.y,this->SCellBg->getContentSize().width,this->SCellBg->getContentSize().height);
    return RSpriteWorldPosition.containsPoint(V2MouseLocation);
}*/

/*
void ItemCell::addEvents() {
    auto listener = cocos2d::EventListenerMouse::create();
    listener->onMouseDown = [this](cocos2d::Event* event){
        cocos2d::EventMouse* EM = (cocos2d::EventMouse*)event;
        if(this->BIsHit(EM)){
//            cocos2d::log("Mouse clicked Sprite number:%i",this->ICellNumber);
        }
    };
    listener->onMouseUp = [this](cocos2d::Event* event){
        cocos2d::EventMouse* EM = (cocos2d::EventMouse*)event;
        if(this->BIsHit(EM)){
//            cocos2d::log("Mouse up button Sprite number:%i",this->ICellNumber);
            if(InventoryScene::IPMovedItem!= nullptr){
                this->IPItemInCell=InventoryScene::IPMovedItem;
                InventoryScene::IPMovedItem= nullptr;
                this->IPItemInCell->setPosition(this->getParent()->convertToWorldSpace(this->getPosition()));
            }
        }
    };
    cocos2d::Director::getInstance()->getEventDispatcher()->addEventListenerWithFixedPriority(listener,30);
}
*/
