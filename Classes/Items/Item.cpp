//
// Created by rusbaron on 10/3/16.
//

#include <base/CCEventListenerMouse.h>
#include <InventoryScene.h>
#include "Item.h"


Item::Item(ExactItem EInputItemType,bool BIsStackableInput,cocos2d::Sprite* SPItemSpriteInput,float FItemCostInput,int IQuestIDInput) {
    this->EItemType=EInputItemType;

    this->BIsStackable=BIsStackableInput;

    this->IQuestID=IQuestIDInput;

    this->SPItemSprite= SPItemSpriteInput;
    addChild(this->SPItemSprite);

    this->FItemCost = FItemCostInput;

    this->BIsGrabByUser = false;

    this->addEvents();

    this->setName("Item");

    this->setScaleX(0.3);
    this->setScaleY(0.3);
}

Item::~Item() {

}

bool Item::BIsHit(cocos2d::EventMouse *EInput) {
    cocos2d::Vec2 V2MouseLocation = EInput->getLocation();
    ///Converting mouse location to global world location(Y)
    V2MouseLocation.y=cocos2d::Director::getInstance()->getWinSize().height-V2MouseLocation.y;

    cocos2d::Rect RSpriteLocal = this->SPItemSprite->getBoundingBox();

    cocos2d::Vec2 V2LeftBottomWorldPoint = this->SPItemSprite->getParent()->convertToWorldSpace(cocos2d::Vec2(RSpriteLocal.getMinX(),RSpriteLocal.getMinY()));
    ///Convert Rect to world space
    //fixme.Bounding box has problem with resizing
    cocos2d::Rect RSpriteWorldPosition = cocos2d::Rect(V2LeftBottomWorldPoint.x,V2LeftBottomWorldPoint.y,this->SPItemSprite->getContentSize().width,this->SPItemSprite->getContentSize().height/2);
//    cocos2d::log("Scale X:%f Scale Y:%f",this->getScaleX(),this->getScaleY());
//    cocos2d::log("Mouse X:%f Mouse Y:%f",V2MouseLocation.x,V2MouseLocation.y);
//    cocos2d::log("Item Xmin:%f Item Ymin:%f Item Xmax:%f Item Ymax:%f",RSpriteWorldPosition.getMinX(),RSpriteWorldPosition.getMinY(),RSpriteWorldPosition.getMaxX(),RSpriteWorldPosition.getMaxY());
    return RSpriteWorldPosition.containsPoint(V2MouseLocation);
}

void Item::addEvents() {
    auto listener = cocos2d::EventListenerMouse::create();
    listener->onMouseDown = [this](cocos2d::Event* event){
        cocos2d::EventMouse* EM = (cocos2d::EventMouse*)event;
        if(this->BIsHit(EM) && EM->getMouseButton()==MOUSE_BUTTON_LEFT){
            cocos2d::log("Item cost: %f", this->FItemCost);
            this->BIsGrabByUser = true;
            InventoryScene::IPMovedItem = this;
        }
    };
    listener->onMouseMove = [this](cocos2d::Event* event){
        cocos2d::EventMouse* EM = (cocos2d::EventMouse*)event;
        cocos2d::Vec2 V2MouseLocation = EM->getLocation();
        ///Converting mouse location to global world location(Y)
        V2MouseLocation.y=cocos2d::Director::getInstance()->getWinSize().height-V2MouseLocation.y;
        if(this->BIsGrabByUser && InventoryScene::IPMovedItem == this){
            this->setPosition(V2MouseLocation);
        }
    };
    listener->onMouseUp = [this](cocos2d::Event* event){
        this->BIsGrabByUser = false;
    };

    cocos2d::Director::getInstance()->getEventDispatcher()->addEventListenerWithFixedPriority(listener,30);
}