//
// Created by rusbaron on 10/3/16.
//

#ifndef MYGAME_ITEM_H
#define MYGAME_ITEM_H


#include "cocos2d.h"

enum ItemType{EquipmentType=6,ConsumableType=4,TrashType=2};

class Item : public cocos2d::Node {

public:
    bool BIsStackable;
    int IQuestID;
	int IItemID;

    cocos2d::Sprite* SPItemSprite;
	///Test var
	cocos2d::Label* Grubbed;
	///End of test
    float FItemCost;

    Item(int IItemID,bool BIsStackableInput,cocos2d::Sprite* SPItemSpriteInput,float FItemCostInput,int IQuestIDInput);
    Item(const Item& ItemInput);
    ~Item();

    bool BIsGrabByUser;

    ItemType EItemType;

    /*
     * Mouse events for moving Items
     */
    void addEvents();

    bool BIsHit(cocos2d::EventMouse* EInput);
};


#endif //MYGAME_ITEM_H
