//
// Created by rusbaron on 10/3/16.
//

#ifndef MYGAME_ITEM_H
#define MYGAME_ITEM_H


#include <2d/CCSprite.h>

class Item : public cocos2d::Node {

public:
    bool BIsStackable;
    bool BIsUsedInQuest;

    cocos2d::Sprite* SPItemSprite;

    float FItemCost;

//    virtual void Use(void *AffectedObject) = 0;

    Item(bool BIsStackableInput,bool BIsUsedInQuestInput,cocos2d::Sprite* SPItemSpriteInput,float FItemCostInput);
    ~Item();
};


#endif //MYGAME_ITEM_H
