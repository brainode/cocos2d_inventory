#include "InventoryScene.h"
#include "proj.win32/ConsumableFactory.h"
#include "proj.win32/EquipmentFactory.h"
#include "SimpleAudioEngine.h"
#include <proj.win32/TrashFactory.h>

USING_NS_CC;

Scene* InventoryScene::createScene()
{
    // 'scene' is an autorelease object
    auto scene = Scene::create();
    
    // 'layer' is an autorelease object
    auto layer = InventoryScene::create();

    // add layer as a child to scene
    scene->addChild(layer);

    // return the scene
    return scene;
}

Item* InventoryScene::IPMovedItem = nullptr;

void InventoryScene::onMouseMove(cocos2d::Event *event){
    cocos2d::EventMouse* e = (cocos2d::EventMouse*)event;
    mousePos.x=e->getCursorX();
    mousePos.y=e->getCursorY();
//    log("X:%f | Y:%f",mousePos.x,mousePos.y);
}

void InventoryScene::onMouseDown(cocos2d::Event *event){
    cocos2d::EventMouse* e = (cocos2d::EventMouse*)event;
    log("X:%f | Y:%f",e->getCurrentTarget()->getAnchorPoint().x,e->getCurrentTarget()->getAnchorPoint().y);
}

void InventoryScene::keyPressed(EventKeyboard::KeyCode keyCode, Event *event) {
    switch (keyCode) {
        case(EventKeyboard::KeyCode::KEY_ESCAPE):
            exit(0);
            break;
    }
}

// on "init" you need to initialize your instance
bool InventoryScene::init()
{
    //////////////////////////////
    // 1. super init first
    if ( !Layer::init() )
    {
        return false;
    }

    auto keyEvents = EventListenerKeyboard::create();

    keyEvents->onKeyPressed = CC_CALLBACK_2(InventoryScene::keyPressed, this);

    Director::getInstance()->getEventDispatcher()->addEventListenerWithSceneGraphPriority(keyEvents, this);

    Cursor = cocos2d::Sprite::createWithSpriteFrameName("cursor");
    Cursor->setAnchorPoint(cocos2d::Vec2(0 , 1));
    addChild(Cursor,1000);


    auto mouseListener = EventListenerMouse::create();
    mouseListener->onMouseMove = CC_CALLBACK_1(InventoryScene::onMouseMove,this);

    _eventDispatcher->addEventListenerWithSceneGraphPriority(mouseListener,this);

    auto visibleSize = Director::getInstance()->getVisibleSize();
    Vec2 origin = Director::getInstance()->getVisibleOrigin();

    /*
     * Adding hero for testing purporses(Eqip items)
     */
    Hero* HeroActor = new Hero();
    addChild(HeroActor);
    HeroActor->setPosition(getContentSize().width / 2 + 150, getContentSize().height / 2 - 200);


    PlayerInventory = new InventoryContainer(HeroActor);
    ///Set position at center
    PlayerInventory->setPosition(getContentSize().width/2,getContentSize().height/2);
    addChild(PlayerInventory);

    Item* Sword = EquipmentFactory::eqPCreateSword();
    Sword->setPosition(getContentSize().width/2-150,getContentSize().height/2);
    addChild(Sword);

    Item* Torch = EquipmentFactory::eqPCreateTorch();
    Torch->setPosition(getContentSize().width/2-250,getContentSize().height/2);
    addChild(Torch);

    Item* HealtPotion = ConsumableFactory::coPCreateHealtPotion();
    HealtPotion->setPosition(getContentSize().width/2-150,getContentSize().height/2-150);
    addChild(HealtPotion);

    Item* HealtPotion2 = ConsumableFactory::coPCreateHealtPotion();
    HealtPotion2->setPosition(getContentSize().width/2-250,getContentSize().height/2-150);
    addChild(HealtPotion2);

    Item* HealtPotion3 = ConsumableFactory::coPCreateHealtPotion();
    HealtPotion3->setPosition(getContentSize().width/2-350,getContentSize().height/2-150);
    addChild(HealtPotion3);

    Item* HealtPotion4 = ConsumableFactory::coPCreateHealtPotion();
    HealtPotion4->setPosition(getContentSize().width/2-350,getContentSize().height/2-150);
    addChild(HealtPotion4);

    ///Custom quest number 5
    Item* Key = TrashFactory::trPCreateKey();
    Key->setPosition(getContentSize().width/2-150,getContentSize().height/2-250);
    addChild(Key);
    ///Custom quest number 5
    Item* Key2 = TrashFactory::trPCreateKey();
    Key2->setPosition(getContentSize().width/2-150,getContentSize().height/2-250);
    addChild(Key2);

    ///Custom quest number 5
    Item* HornAndHooves = TrashFactory::eqPCreateHornAndHooves();
    HornAndHooves->setPosition(getContentSize().width/2-150,getContentSize().height/2+150);
    addChild(HornAndHooves);

    ///Custom quest number 5
    Item* HornAndHooves2 = TrashFactory::eqPCreateHornAndHooves();
    HornAndHooves2->setPosition(getContentSize().width/2-250,getContentSize().height/2+150);
    addChild(HornAndHooves2);

    Item* SpeedPotion = ConsumableFactory::coPCreateSpeedPotion();
    SpeedPotion->setPosition(getContentSize().width/2-150,getContentSize().height/2+250);
    addChild(SpeedPotion);


    this->scheduleUpdate();
    
    return true;
}

/*
 * Update at every frame
 */
void InventoryScene::update(float delta) {
    Cursor->setPosition(mousePos.x,mousePos.y);
}


void InventoryScene::menuCloseCallback(Ref* pSender)
{
    //Close the cocos2d-x game scene and quit the application
    Director::getInstance()->end();

    #if (CC_TARGET_PLATFORM == CC_PLATFORM_IOS)
    exit(0);
#endif
    
    /*To navigate back to native iOS screen(if present) without quitting the application  ,do not use Director::getInstance()->end() and exit(0) as given above,instead trigger a custom event created in RootViewController.mm as below*/
    
    //EventCustom customEndEvent("game_scene_close_event");
    //_eventDispatcher->dispatchEvent(&customEndEvent);
    
    
}
