//
// Created by rusbaron on 10/3/16.
//

#ifndef MYGAME_ITEM_H
#define MYGAME_ITEM_H


#include "cocos2d.h"

class Item : public cocos2d::Node {

public:
    bool BIsStackable;
    bool BIsUsedInQuest;

    cocos2d::Sprite* SPItemSprite;

    float FItemCost;

    Item(bool BIsStackableInput,bool BIsUsedInQuestInput,cocos2d::Sprite* SPItemSpriteInput,float FItemCostInput);
    ~Item();

    bool BIsGrabByUser;

    /*
     * Mouse events for moving Items
     */
    void addEvents();

    bool BIsHit(cocos2d::EventMouse* EInput);
};


#endif //MYGAME_ITEM_H
