//
// Created by rusbaron on 10/3/16.
//

#ifndef MYGAME_ITEM_H
#define MYGAME_ITEM_H


#include "cocos2d.h"

enum ExactItem{SWORD,HEALTH_POTION,SPEED_POTION,TORCH,HORN_AND_HOOVIES,KEY};

class Item : public cocos2d::Node {

public:
    bool BIsStackable;
    int IQuestID;

    cocos2d::Sprite* SPItemSprite;

    float FItemCost;

    Item(ExactItem ItemType,bool BIsStackableInput,cocos2d::Sprite* SPItemSpriteInput,float FItemCostInput,int IQuestIDInput);
    ~Item();

    bool BIsGrabByUser;

    ExactItem EItemType;

    /*
     * Mouse events for moving Items
     */
    void addEvents();

    bool BIsHit(cocos2d::EventMouse* EInput);
};


#endif //MYGAME_ITEM_H
