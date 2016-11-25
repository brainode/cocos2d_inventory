//
// Created by rusbaron on 10/6/16.
//

#include "Hero.h"


Hero::Hero(){
    unsigned short USFontSize = 80;

    this->IAttackValue = 5;
    this->IHealth = 30;
    this->UIPurse = 0;
    this->UISpeed = 5;

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

    this->LPHeroHealth = cocos2d::Label::createWithTTF("Health:"+std::to_string(this->IHealth), "fonts/Marker Felt.ttf", USFontSize);
    this->LPHeroHealth->setPosition(-(this->SPHeroSprite->getContentSize().width / 2), -(this->SPHeroSprite->getContentSize().height / 2) - USFontSize * 1);
    addChild(this->LPHeroHealth);
    this->LPHeroSpeed = cocos2d::Label::createWithTTF("Speed:"+std::to_string(this->UISpeed), "fonts/Marker Felt.ttf", USFontSize);
    this->LPHeroSpeed->setPosition(-(this->SPHeroSprite->getContentSize().width / 2), -(this->SPHeroSprite->getContentSize().height / 2) - USFontSize * 2);
    addChild(this->LPHeroSpeed);
    this->LPPurse = cocos2d::Label::createWithTTF("Money:"+std::to_string(this->UIPurse), "fonts/Marker Felt.ttf", USFontSize);
    this->LPPurse->setPosition(-(this->SPHeroSprite->getContentSize().width / 2), -(this->SPHeroSprite->getContentSize().height / 2) - USFontSize * 3);
    addChild(this->LPPurse);
}

void Hero::updateLabelHealth()const
{
    this->LPHeroHealth->setString("Health:"+std::to_string(this->IHealth));
}
void Hero::updateLabelSpeed()const
{
    this->LPHeroSpeed->setString("Speed:" + std::to_string(this->UISpeed));
}
void Hero::updateLabelPurse()const
{
    this->LPPurse->setString("Money:" + std::to_string(this->UIPurse));
}

void Hero::Heal(Consumable* CoPPotion){
    
    auto Healing = cocos2d::CallFunc::create([this,CoPPotion]()
    {
        this->IHealth += CoPPotion->IValue;
        this->updateLabelHealth();
    });
    this->runAction(cocos2d::Spawn::create(Healing,nullptr));
}

Hero::~Hero(){
    this->removeAllChildrenWithCleanup(true);
}