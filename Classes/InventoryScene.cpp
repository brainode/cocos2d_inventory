#include <Items/Consumable.h>
#include <Items/Trash.h>
#include "InventoryScene.h"
#include "SimpleAudioEngine.h"

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

// on "init" you need to initialize your instance
bool InventoryScene::init()
{
    //////////////////////////////
    // 1. super init first
    if ( !Layer::init() )
    {
        return false;
    }

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
    HeroActor = new Hero();
    addChild(HeroActor);


    PlayerInventory = new InventoryContainer();
    ///Set position at center
    PlayerInventory->setPosition(getContentSize().width/2,getContentSize().height/2);
    addChild(PlayerInventory);

    ///Test code for checking corners
    cocos2d::Sprite* test1 = cocos2d::Sprite::create("left_top.png");
    test1->setPosition(0,768);
    cocos2d::Sprite* test2 = cocos2d::Sprite::create("left_bottom.png");
    test2->setPosition(0,0);
    cocos2d::Sprite* test3 = cocos2d::Sprite::create("right_top.png");
    test3->setPosition(1024,768);
    cocos2d::Sprite* test4 = cocos2d::Sprite::create("right_bottom.png");
    test4->setPosition(1024,0);

    addChild(test1);
    addChild(test2);
    addChild(test3);
    addChild(test4);
    /////

    Item* Sword = new Equipment(1,false,cocos2d::Sprite::createWithSpriteFrameName("sword"),100);
    Sword->setPosition(getContentSize().width/2-150,getContentSize().height/2);
    addChild(Sword);

    Item* Torch = new Equipment(1,false,cocos2d::Sprite::createWithSpriteFrameName("torch"),80,0,0);
    Torch->setPosition(getContentSize().width/2-250,getContentSize().height/2);
    addChild(Torch);

    Item* HealtPotion = new Consumable(1,true,cocos2d::Sprite::createWithSpriteFrameName("health_potion"),35);
    HealtPotion->setPosition(getContentSize().width/2-150,getContentSize().height/2-150);
    addChild(HealtPotion);

    Item* HealtPotion2 = new Consumable(1,true,cocos2d::Sprite::createWithSpriteFrameName("health_potion"),35);
    HealtPotion2->setPosition(getContentSize().width/2-250,getContentSize().height/2-150);
    addChild(HealtPotion2);

    Item* HealtPotion3 = new Consumable(1,true,cocos2d::Sprite::createWithSpriteFrameName("health_potion"),35);
    HealtPotion3->setPosition(getContentSize().width/2-350,getContentSize().height/2-150);
    addChild(HealtPotion3);

    Item* HealtPotion4 = new Consumable(1,true,cocos2d::Sprite::createWithSpriteFrameName("health_potion"),35);
    HealtPotion4->setPosition(getContentSize().width/2-350,getContentSize().height/2-150);
    addChild(HealtPotion4);

    ///Custom quest number 5
    Item* Key = new Trash(1,false,cocos2d::Sprite::createWithSpriteFrameName("key"),20,5);
    Key->setPosition(getContentSize().width/2-150,getContentSize().height/2-250);
    addChild(Key);
    ///Custom quest number 5
    Item* Key2 = new Trash(1,false,cocos2d::Sprite::createWithSpriteFrameName("key"),20,5);
    Key2->setPosition(getContentSize().width/2-150,getContentSize().height/2-350);
    addChild(Key2);

    ///Custom quest number 5
    Item* HornAndHooves = new Trash(2,true,cocos2d::Sprite::createWithSpriteFrameName("horn_and_hooves"),500,5);
    HornAndHooves->setPosition(getContentSize().width/2-150,getContentSize().height/2+150);
    addChild(HornAndHooves);

    ///Custom quest number 5
    Item* HornAndHooves2 = new Trash(2,true,cocos2d::Sprite::createWithSpriteFrameName("horn_and_hooves"),500,5);
    HornAndHooves2->setPosition(getContentSize().width/2-250,getContentSize().height/2+150);
    addChild(HornAndHooves2);

    Item* SpeedPotion = new Consumable(2,true,cocos2d::Sprite::createWithSpriteFrameName("speed_potion"),35);
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
