#pragma once

#include "Items/Equipment.h"

class EquipmentFactory
{
public:
    static Equipment* eqPCreateSword()
    {
        /*
        *1.Health parameter(int)
        *2.Speed parameter(unsigned int)
        *3.Purse parameter(unsigned int)
        *4.Attack parameter(int)
        */
        Parameters StEffectEquip = {
            5,
            0,
            0,
            7
        };
        /*
        *1.Item Id(int)
        *2.Is stackable(bool)
        *3.Object sprite(cocos2d::Sprite::createWithSpriteFrameName)
        *4.Object price(int)
        *5.Usage effect(Parameters)
        *6.Quest id(int),not mandatory parameter
        */
        Equipment* eqPSword = new Equipment(1, false, cocos2d::Sprite::createWithSpriteFrameName("sword"), 35, StEffectEquip);
        return eqPSword;
    }
    static Equipment* eqPCreateTorch()
    {
        Parameters StEffectEquip = {
            15,
            0,
            0,
            0
        };
        Equipment* EqPTorch = new Equipment(2, false, cocos2d::Sprite::createWithSpriteFrameName("torch"), 35, StEffectEquip, 0);
        return EqPTorch;
    }
};
