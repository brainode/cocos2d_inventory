#ifndef __HELLOWORLD_SCENE_H__
#define __HELLOWORLD_SCENE_H__

#include "cocos2d.h"
#include "InventoryContainer.h"
//#include "Actors/Hero.h"
#include "Items/Equipment.h"
#include "Items/Consumable.h"
#include "Items/Trash.h"

class InventoryScene : public cocos2d::Layer
{
public:
    static cocos2d::Scene* createScene();

    virtual bool init();

    cocos2d::Sprite* Cursor;

    Hero* HeroActor;

    InventoryContainer* PlayerInventory;

    static Item* IPMovedItem;
    
    // a selector callback
    void menuCloseCallback(cocos2d::Ref* pSender);

    struct mousePosition{
        float x;
        float y;
    }mousePos;

    void onMouseMove(cocos2d::Event *event);

    void onMouseDown(cocos2d::Event *event);

    void update(float) override;

    //Get actions on pressing keys
    void keyPressed(cocos2d::EventKeyboard::KeyCode keyCode, cocos2d::Event *event);
    // implement the "static create()" method manually
    CREATE_FUNC(InventoryScene);
};

#endif // __HELLOWORLD_SCENE_H__
