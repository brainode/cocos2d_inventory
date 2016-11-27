//
// Created by rusbaron on 10/6/16.
//

#ifndef MYGAME_HERO_H
#define MYGAME_HERO_H

#include "InventoryCell.h"
#include "Items/Item.h"
//fixme.Change file position
#include <proj.win32/Parameters.h>


class Hero : public cocos2d::Node {
private:
    Parameters StHeroParameters;

    InventoryCell ItCLeftArm, ItCRightArm;

    cocos2d::Sprite* SPHeroSprite;

    cocos2d::Label *LPPurse, *LPHeroHealth, *LPHeroSpeed;

    void updateLabelParameters()const;

public:
    Hero();
    ~Hero();

    void UseConsumable(Item* ItPConsumable);

    void addMoneyToPurse(unsigned int UIMoneyToAdd);
};


#endif //MYGAME_HERO_H
