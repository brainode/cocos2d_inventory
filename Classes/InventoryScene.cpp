#include <Items/Consumable.h>
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

    Item* Sword = new Equipment(true,false,cocos2d::Sprite::createWithSpriteFrameName("sword"),100,5);
    Sword->setPosition(getContentSize().width/2-150,getContentSize().height/2);
    addChild(Sword);

    Item* Sword2 = new Equipment(true,false,cocos2d::Sprite::createWithSpriteFrameName("sword"),100,5);
    Sword2->setPosition(getContentSize().width/2-150,getContentSize().height/2-200);
    addChild(Sword2);

    Item* HealtPotion = new Consumable(true,false,cocos2d::Sprite::createWithSpriteFrameName("health_potion"),100);
    HealtPotion->setPosition(getContentSize().width/2-150,getContentSize().height/2-300);
    addChild(HealtPotion);

   /* /////////////////////////////
    // 2. add a menu item with "X" image, which is clicked to quit the program
    //    you may modify it.

    // add a "close" icon to exit the progress. it's an autorelease object
    auto closeItem = MenuItemImage::create(
                                           "CloseNormal.png",
                                           "CloseSelected.png",
                                           CC_CALLBACK_1(InventoryScene::menuCloseCallback, this));
    
    closeItem->setPosition(Vec2(origin.x + visibleSize.width - closeItem->getContentSize().width/2 ,
                                origin.y + closeItem->getContentSize().height/2));

    // create menu, it's an autorelease object
    auto menu = Menu::create(closeItem, NULL);
    menu->setPosition(Vec2::ZERO);
    this->addChild(menu, 1);

    /////////////////////////////
    // 3. add your codes below...

    // add a label shows "Hello World"
    // create and initialize a label
    
    auto label = Label::createWithTTF("Hello World", "fonts/Marker Felt.ttf", 24);
    
    // position the label on the center of the screen
    label->setPosition(Vec2(origin.x + visibleSize.width/2,
                            origin.y + visibleSize.height - label->getContentSize().height));

    // add the label as a child to this layer
    this->addChild(label, 1);

    // add "HelloWorld" splash screen"
    auto sprite = Sprite::create("HelloWorld.png");

    // position the sprite on the center of the screen
    sprite->setPosition(Vec2(visibleSize.width/2 + origin.x, visibleSize.height/2 + origin.y));

    // add the sprite as a child to this layer
    this->addChild(sprite, 0);*/
    this->scheduleUpdate();
    
    return true;
}

/*
 * Update at every frame
 */
void InventoryScene::update(float delta) {
    Cursor->setPosition(mousePos.x,mousePos.y);
//    log("X:%f | Y:%f",mousePos.x,mousePos.y);
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
