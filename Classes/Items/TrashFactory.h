#pragma once

#include "Items/Trash.h"

class TrashFactory
{
public:
    static Trash* eqPCreateHornAndHooves()
    {
        /*
        *1.Item Id(int)
        *2.Is stackable(bool)
        *3.Object sprite(cocos2d::Sprite::createWithSpriteFrameName)
        *4.Object price(int)
        *5.Quest id(int),not mandatory parameter
        */
        Trash* eqPSword = new Trash(2, true, cocos2d::Sprite::createWithSpriteFrameName("horn_and_hooves"), 500);
        return eqPSword;
    }
    static Trash* trPCreateKey()
    {
        Trash* EqPKey = new Trash(1, false, cocos2d::Sprite::createWithSpriteFrameName("key"), 20, 5);
        return EqPKey;
    }
};
