#pragma once

#include "Items/Consumable.h"

class ConsumableFactory
{
public:
    static Consumable* coPCreateHealtPotion()
    {
        /*
        *1.Health parameter(int)
        *2.Speed parameter(unsigned int)
        *3.Purse parameter(unsigned int)
        *4.Attacj parameter(int)
        */
        Parameters StEffectUsage = {
            30,
            0,
            0,
            0
        };
        /*
        *1.Item Id(int)
        *2.Is stackable(bool)
        *3.Object sprite(cocos2d::Sprite::createWithSpriteFrameName)
        *4.Object price(int)
        *5.Usage effect(Parameters)
        *6.Effect duration(float)
        *7.Quest id(int),not mandatory parameter
        */
        Consumable* CoPHealthPotion = new Consumable(1, true, cocos2d::Sprite::createWithSpriteFrameName("health_potion"), 35, StEffectUsage, 0);
        return CoPHealthPotion;
    }
    static Consumable* coPCreateSpeedPotion()
    {
        Parameters StEffectUsage = {
            0,
            10,
            0,
            0
        };
        Consumable* CoPHealthPotion = new Consumable(1, true, cocos2d::Sprite::createWithSpriteFrameName("speed_potion"), 35, StEffectUsage, 3);
        return CoPHealthPotion;
    }
};


