//
// Created by rusbaron on 10/6/16.
//

#ifndef MYGAME_HERO_H
#define MYGAME_HERO_H

#include "ArmCell.h"
#include "Items/Item.h"
//fixme.Change file position
#include <proj.win32/Parameters.h>

class Hero : public cocos2d::Node {
private:
    Parameters StHeroParameters;

    ArmCell ArCLeftArm, ArCRightArm;
    
    //Pointer for inventory
    void* IcPHeroInventory;

    cocos2d::Sprite* SPHeroSprite;

    cocos2d::Label *LPPurse, *LPHeroHealth, *LPHeroSpeed;

    void updateLabelParameters()const;

public:

    Hero();
    ~Hero();

    void setInventory(void* pInventory);

    void useConsumable(Item* ItPConsumable);
    
    void useEquipment(Item* ItPEquipment);

    void unUseEquipment(Item* ItPEquipment);

    void putItemAtInventory(Item* ItPEquipment);

    void addMoneyToPurse(unsigned int UIMoneyToAdd);
};


#endif //MYGAME_HERO_H
