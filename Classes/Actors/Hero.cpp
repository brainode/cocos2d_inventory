//
// Created by rusbaron on 10/6/16.
//

#include "Hero.h"
#include "Items/Consumable.h"

Hero::Hero(){
    unsigned short USFontSize = 80;

    this->StHeroParameters.IHealth = 30;
    this->StHeroParameters.IAttackValue = 5;
    this->StHeroParameters.UIPurse = 0;
    this->StHeroParameters.UISpeed = 5;

    this->SPHeroSprite = cocos2d::Sprite::create("hero.png");
    addChild(this->SPHeroSprite);
    
    this->setScaleX(0.25);
    this->setScaleY(0.25);

    this->ItCLeftArm.setScale(2.5);
    this->ItCLeftArm.setPosition(-this->ItCLeftArm.SCellBg->getContentSize().width*2, -50);
    this->ItCLeftArm.SCellBg->setOpacity(150);
    addChild(&this->ItCLeftArm);

    this->ItCRightArm.setScale(2.5);
    this->ItCRightArm.setPosition(this->ItCLeftArm.SCellBg->getContentSize().width*2, -50);
    this->ItCRightArm.SCellBg->setOpacity(150);
    addChild(&this->ItCRightArm);

    this->LPHeroHealth = cocos2d::Label::createWithTTF("Health:"+std::to_string(this->StHeroParameters.IHealth), "fonts/Marker Felt.ttf", USFontSize);
    this->LPHeroHealth->setPosition(-(this->SPHeroSprite->getContentSize().width / 2), -(this->SPHeroSprite->getContentSize().height / 2) - USFontSize * 1);
    addChild(this->LPHeroHealth);
    this->LPHeroSpeed = cocos2d::Label::createWithTTF("Speed:"+std::to_string(this->StHeroParameters.UISpeed), "fonts/Marker Felt.ttf", USFontSize);
    this->LPHeroSpeed->setPosition(-(this->SPHeroSprite->getContentSize().width / 2), -(this->SPHeroSprite->getContentSize().height / 2) - USFontSize * 2);
    addChild(this->LPHeroSpeed);
    this->LPPurse = cocos2d::Label::createWithTTF("Money:"+std::to_string(this->StHeroParameters.UIPurse), "fonts/Marker Felt.ttf", USFontSize);
    this->LPPurse->setPosition(-(this->SPHeroSprite->getContentSize().width / 2), -(this->SPHeroSprite->getContentSize().height / 2) - USFontSize * 3);
    addChild(this->LPPurse);
}

void Hero::updateLabelParameters()const
{
    this->LPHeroHealth->setString("Health:"+std::to_string(this->StHeroParameters.IHealth));
    this->LPHeroSpeed->setString("Speed:" + std::to_string(this->StHeroParameters.UISpeed));
    this->LPPurse->setString("Money:" + std::to_string(this->StHeroParameters.UIPurse));
}

void Hero::UseConsumable(Item* ItPConsumable){
    auto CoPConsumable = static_cast<Consumable*>(ItPConsumable);
    if(CoPConsumable)
    {
        auto Use = cocos2d::CallFunc::create([this, CoPConsumable]()
        {
            this->StHeroParameters += CoPConsumable->StEffectUsage;
            this->updateLabelParameters();
        });
        auto unUse = cocos2d::CallFunc::create([this, CoPConsumable]()
        {
            this->StHeroParameters -= CoPConsumable->StEffectUsage;
            this->updateLabelParameters();
        });
        if(CoPConsumable->FEffectDuration>0)
        {
            auto delay = cocos2d::DelayTime::create(CoPConsumable->FEffectDuration);
            this->runAction(cocos2d::Sequence::create(Use,delay,unUse, nullptr));
        }else
        {
            this->runAction(cocos2d::Sequence::create(Use, nullptr));
        }
        //cocos2d::Spawn duplicate actions...Maybe bug. ITSaber-22 closed
    }
}

void Hero::addMoneyToPurse(unsigned int UIMoneyToAdd){
    this->StHeroParameters.UIPurse += UIMoneyToAdd;
    this->updateLabelParameters();
}

Hero::~Hero(){
    this->removeAllChildrenWithCleanup(true);
}