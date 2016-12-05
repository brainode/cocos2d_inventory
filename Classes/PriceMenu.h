#pragma once
#ifndef MYGAME_PRICEMENU_H
#define MYGAME_PRICEMENU_H
#include "cocos2d.h"
#include <ui/UIEditBox/UIEditBox.h>
#include "InventoryContainer.h"


class PriceMenu : public cocos2d::Node
{
private:
    cocos2d::Sprite* SpPBackground;
    cocos2d::ui::EditBox *EbPPriceInput;

    unsigned int UIFrom;
    InventoryContainer* IcPInventory;
    Hero* HePHero;
public:
    PriceMenu();
    ~PriceMenu();

    /*
     * Hide menu and clear edit box
     */
    void hidePriceMenu();
    /*
     * Show menu, get all dependings, set edit box to currient value
     */
    void showPriceMenu(unsigned int UIFromInput, InventoryContainer* IcPInventory, Hero* HePHeroInput);

    void addEvents();

    bool PriceMenu::bIsHit(cocos2d::EventMouse* EInput);
    
};

#endif //MYGAME_PRICEMENU_H