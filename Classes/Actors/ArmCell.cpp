//
// Created by rusbaron on 11/10/16.
//

#include "ArmCell.h"
#include "InventoryScene.h"

ArmCell::ArmCell() :Cell() {
    this->setName("ArmCell");

    this->addEvents();

    this->BGrabbedFromCell = false;
}

ArmCell::ArmCell(ArmCell& CellToCopy) {
    if (this != &CellToCopy) {
        ///Copy need for swapping throw tmp cell,so no need to create new copy of item,just link to the same address in memory
        this->IPItemInCell = CellToCopy.IPItemInCell;
        this->IItemCount = CellToCopy.IItemCount;

        this->ICellNumber = CellToCopy.ICellNumber;
        this->SCellBg = cocos2d::Sprite::createWithSpriteFrameName("cellbg");
        addChild(this->SCellBg);

        ///Label,that present ItemCount in cell to player
        int FontSize = 16;
        this->LItemCount = cocos2d::Label::createWithTTF("", "fonts/Marker Felt.ttf", FontSize);
        this->LItemCount->setString(CellToCopy.LItemCount->getString());
        this->LItemCount->setPosition(this->SCellBg->getContentSize().width / 2 - FontSize, this->SCellBg->getContentSize().height / 2 - FontSize);
        addChild(this->LItemCount, 50);

        this->setName("ArmCell");
    }
}

ArmCell& ArmCell::operator=(const ArmCell& CellToCopy) {
    if (this != &CellToCopy) {
        ///Copy need for swapping throw tmp cell,so no need to create new copy of item,just link to the same address in memory
        this->IPItemInCell = CellToCopy.IPItemInCell;
        this->IItemCount = CellToCopy.IItemCount;
        
        this->LItemCount->setString(CellToCopy.LItemCount->getString());

        if (this->IPItemInCell != nullptr && this->getParent() != nullptr) {
            this->IPItemInCell->setPosition(this->getParent()->convertToWorldSpace(this->getPosition()));
        }
    }
    return *this;
}


ArmCell::~ArmCell() {
    this->removeAllChildrenWithCleanup(true);
}

void ArmCell::updateLabels() {
    if (this->IPItemInCell != nullptr) {
        if (this->IPItemInCell->BIsStackable) {
            this->LItemCount->setString(std::to_string(this->IItemCount));
        }
        else {
            this->LItemCount->setString("");
        }   
    }
    else {
        this->LItemCount->setString("");
    }
}

void ArmCell::addEvents(){
    auto listener = cocos2d::EventListenerMouse::create();
    listener->onMouseDown = [this](cocos2d::Event* event) {
        cocos2d::EventMouse* EM = static_cast<cocos2d::EventMouse*>(event);
        if (EM->getMouseButton() == MOUSE_BUTTON_LEFT) {
            if(this->bCellIsHit(EM) && !this->bIsCellEmpty())
            {
                this->BGrabbedFromCell = true;
                Hero* HePHero = static_cast<Hero*>(this->getParent());
                HePHero->unUseEquipment(this->IPItemInCell);
                this->clearCell();
            }
        }
        else if (EM->getMouseButton() == MOUSE_BUTTON_RIGHT)
        {
            //if(this->bCellIsHit(EM);
        }
    };
    listener->onMouseUp = [this](cocos2d::Event* event) {
        cocos2d::EventMouse* EM = static_cast<cocos2d::EventMouse*>(event);
        if (EM->getMouseButton() == MOUSE_BUTTON_LEFT)
        {
            Hero* HePHero = static_cast<Hero*>(this->getParent());
            InventoryContainer* IcPInventory = static_cast<InventoryContainer*>(HePHero->IcPHeroInventory);
            if(this->bCellIsHit(EM) && InventoryScene::IPMovedItem && InventoryScene::IPMovedItem->EItemType == ItemType::EquipmentType && this->bIsCellEmpty())
            {
                HePHero->useEquipment(InventoryScene::IPMovedItem);
            }
            else if (this->bCellIsHit(EM) && this->BGrabbedFromCell )
            {
                HePHero->useEquipment(InventoryScene::IPMovedItem);
                //todo.Refactor static variable for grubbed items,it must contain count,quest attribute.Also inventory cell must clear immediatly after item was grubbed.
            //}
            //else if (this->bCellIsHit(EM) && InventoryScene::IPMovedItem)
            //{
            //    HePHero->putItemAtInventory(InventoryScene::IPMovedItem);
            //    //this->putItemAtInventory(InventoryScene::IPMovedItem);
            }
            else if(this->BGrabbedFromCell && InventoryScene::IPMovedItem && InventoryScene::IPMovedItem->IQuestID>=0 && InventoryScene::IPMovedItem->EItemType == ItemType::EquipmentType && IcPInventory && IcPInventory->iCellIsHit(EM) < 0 && !HePHero->bIsArmHitted(EM))
            {
                HePHero->putItemAtInventory(InventoryScene::IPMovedItem);
            }
            this->BGrabbedFromCell = false;
        }
    };
    cocos2d::Director::getInstance()->getEventDispatcher()->addEventListenerWithFixedPriority(listener, 30);
}
//bug.Resizing not affect on BoundingBox
bool ArmCell::bCellIsHit(cocos2d::EventMouse* EInput){
    
    cocos2d::Vec2 V2MouseLocation = EInput->getLocation();
    ///Converting mouse location to global world location(Y)
    V2MouseLocation.y = cocos2d::Director::getInstance()->getWinSize().height - V2MouseLocation.y;
    
    cocos2d::Rect RNodeLocal = this->SCellBg->getBoundingBox();
    cocos2d::Vec2 V2LeftBottomWorldPoint = this->SCellBg->getParent()->convertToWorldSpace(cocos2d::Vec2(RNodeLocal.getMinX(), RNodeLocal.getMinY()));

    ///Convert Rect to world space
    cocos2d::Rect RNodeWorldPosition = cocos2d::Rect(V2LeftBottomWorldPoint.x, V2LeftBottomWorldPoint.y, this->SCellBg->getContentSize().width, this->SCellBg->getContentSize().height);
    if (RNodeWorldPosition.containsPoint(V2MouseLocation)) {
        return true;
    }
    return false;
}

void ArmCell::putItemAtCell(Item* ItPItemToPut, unsigned int UIItemCount) {
    this->IPItemInCell = ItPItemToPut;
    this->IItemCount += UIItemCount;

    this->IPItemInCell->setPosition(this->getParent()->convertToWorldSpace(this->getPosition()));
}

void ArmCell::deleteItemFromCell(int ICountItemToDelete){
    int ICountToDelete = ICountItemToDelete > this->IItemCount ? this->IItemCount : ICountItemToDelete;
    this->IItemCount -= ICountToDelete;
    if (!this->IItemCount)
    {
        this->IPItemInCell->removeFromParentAndCleanup(true);
        this->IPItemInCell = nullptr;
    }
    this->updateLabels();
}

void ArmCell::clearCell() {
    this->IPItemInCell = nullptr;
    this->IItemCount -= 1;
}

