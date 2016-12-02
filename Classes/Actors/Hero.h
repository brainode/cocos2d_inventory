//
// Created by rusbaron on 10/6/16.
//

#ifndef MYGAME_HERO_H
#define MYGAME_HERO_H

#include "ArmCell.h"
#include "Items/Item.h"
//fixme.Change file position
#include <Parameters.h>

class Hero : public cocos2d::Node {
private:
    Parameters StHeroParameters;

    ArmCell ArCLeftArm, ArCRightArm;

    cocos2d::Sprite* SPHeroSprite;

    cocos2d::Label *LPPurse, *LPHeroHealth, *LPHeroSpeed;

    void updateLabelParameters()const;

public:
    //Pointer for inventory
    void* IcPHeroInventory;

    Hero();
    ~Hero();

    void setInventory(void* pInventory);

    void useConsumable(Item* ItPConsumable);
    
    void useEquipment(Item* ItPEquipment);

    void unUseEquipment(Item* ItPEquipment);

    void putItemAtInventory(Item* ItPEquipment);

    void addMoneyToPurse(unsigned int UIMoneyToAdd);

    bool bIsArmHitted(cocos2d::Event* event);
};


#endif //MYGAME_HERO_H
