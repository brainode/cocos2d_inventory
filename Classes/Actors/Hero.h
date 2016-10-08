//
// Created by rusbaron on 10/6/16.
//

#ifndef MYGAME_HERO_H
#define MYGAME_HERO_H


#include <Items/Equipment.h>
#include <InventoryContainer.h>

class Hero : public cocos2d::Node {
private:
    unsigned int UIVitality,
                UIStrenght,
                UIAgility,
//                UIMana,
                UISpeed;
public:
    cocos2d::Sprite* HeroSprite;

//    const Equipment* EHead;
//    const Equipment* EBody;
    const Equipment* ELeftArm;
    const Equipment* ERightArm;
//    const Equipment* ELegs;
//    const Equipment* EFoot;

    Hero();
    ~Hero();
};


#endif //MYGAME_HERO_H
