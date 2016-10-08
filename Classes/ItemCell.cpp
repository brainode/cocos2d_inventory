//
// Created by rusbaron on 10/8/16.
//

#include "ItemCell.h"

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

    this->addEvents();
}

ItemCell::~ItemCell(){

}

void ItemCell::addEvents() {
    auto listener = cocos2d::EventListenerMouse::create();
    listener->onMouseDown = [this](cocos2d::Event* event){
        cocos2d::EventMouse* EM = (cocos2d::EventMouse*)event;
        cocos2d::Vec2 V2MouseLocation = EM->getLocation();
        V2MouseLocation.y=cocos2d::Director::getInstance()->getWinSize().height-V2MouseLocation.y;
        cocos2d::Rect RSpriteLocal = this->SCellBg->getBoundingBox();

        cocos2d::Vec2 V2LeftBottomWorldPoint = this->SCellBg->getParent()->convertToWorldSpace(cocos2d::Vec2(RSpriteLocal.getMinX(),RSpriteLocal.getMinY()));
        ///Convert Rect to world space
        cocos2d::Rect RSpriteWorldPosition = cocos2d::Rect(V2LeftBottomWorldPoint.x,V2LeftBottomWorldPoint.y,this->SCellBg->getContentSize().width,this->SCellBg->getContentSize().height);
        if(RSpriteWorldPosition.containsPoint(V2MouseLocation)){
            cocos2d::log("Sprite number:%i",this->ICellNumber);
        }
    };
    cocos2d::Director::getInstance()->getEventDispatcher()->addEventListenerWithFixedPriority(listener,30);
}
