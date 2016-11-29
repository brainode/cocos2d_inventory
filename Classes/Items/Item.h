//
// Created by rusbaron on 10/3/16.
//

#ifndef MYGAME_ITEM_H
#define MYGAME_ITEM_H
#define _DEBUG 1


#include "cocos2d.h"


enum ItemType{EquipmentType=6,ConsumableType=4,TrashType=2,NONE=0};

class Item : public cocos2d::Node {

public:
    bool BIsStackable;

    int IQuestID;
	int IItemID;

    cocos2d::Sprite* SPItemSprite;
#if _DEBUG==1
	cocos2d::Label* Grubbed;
#endif // DEBUG
    float FItemCost;

    bool BIsGrabByUser;

    ItemType EItemType;

    Item(int IItemID,bool BIsStackableInput,cocos2d::Sprite* SPItemSpriteInput,float FItemCostInput,int IQuestIDInput);

    Item(const Item& ItemInput);

    ~Item();

	bool operator==(const Item& ItemRight);
    /*
     * Virtual compare
     */
	virtual bool doCompare(const Item& ItemRight)=0;

    virtual void useItem(void* pUser)=0;

    /*
     * Mouse events for moving Items
     */
    void addEvents();

    bool BIsHit(cocos2d::EventMouse* EInput);

    virtual cocos2d::Node* showAvailableActions()=0;

//    void hideAvailableActions()const;
};


#endif //MYGAME_ITEM_H
