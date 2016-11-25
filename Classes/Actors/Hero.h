//
// Created by rusbaron on 10/6/16.
//

#ifndef MYGAME_HERO_H
#define MYGAME_HERO_H

#include "InventoryCell.h"
#include "Items/Consumable.h"

class Hero : public cocos2d::Node {
private:
    int IHealth;
    unsigned int UISpeed,UIPurse;
    int IAttackValue;

    InventoryCell ItCLeftArm, ItCRightArm;

    cocos2d::Sprite* SPHeroSprite;

    cocos2d::Label *LPPurse, *LPHeroHealth, *LPHeroSpeed;

    void updateLabelHealth()const;
    void updateLabelSpeed()const;
    void updateLabelPurse()const;

public:
    Hero();
    ~Hero();

    void Heal(Consumable* CoPPotion);
};


#endif //MYGAME_HERO_H
