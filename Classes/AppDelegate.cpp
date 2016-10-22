#include "AppDelegate.h"
#include "InventoryScene.h"

USING_NS_CC;

static cocos2d::Size mediumResolutionSize = cocos2d::Size(1024, 768);

AppDelegate::AppDelegate()
{
}

AppDelegate::~AppDelegate() 
{
}

// if you want a different context, modify the value of glContextAttrs
// it will affect all platforms
void AppDelegate::initGLContextAttrs()
{
    // set OpenGL context attributes: red,green,blue,alpha,depth,stencil
    GLContextAttrs glContextAttrs = {8, 8, 8, 8, 24, 8};

    GLView::setGLContextAttrs(glContextAttrs);
}

// if you want to use the package manager to install more packages,  
// don't modify or remove this function
static int register_all_packages()
{
    return 0; //flag for packages manager
}

bool AppDelegate::applicationDidFinishLaunching() {
    // initialize director
    auto director = cocos2d::Director::getInstance();
    auto glview = director->getOpenGLView();
    if(!glview) {
#if (CC_TARGET_PLATFORM == CC_PLATFORM_WIN32) || (CC_TARGET_PLATFORM == CC_PLATFORM_LINUX)
        glview = cocos2d::GLViewImpl::createWithRect("InventoryTask", cocos2d::Rect(0, 0, mediumResolutionSize.width, mediumResolutionSize.height));
#else
        glview = GLViewImpl::create("InventoryTask");
#endif
        director->setOpenGLView(glview);
    }
    // Hide standart cursor
    glview->setCursorVisible(true);
    // turn on display FPS
    director->setDisplayStats(true);

    // set FPS. the default value is 1.0/60 if you don't call this
    director->setAnimationInterval(1.0f / 60);

    ///Add folder with resource files
    cocos2d::FileUtils::getInstance()->addSearchPath("res");

    ///Load the Sprite sheet
    auto SSpritecache = cocos2d::SpriteFrameCache::getInstance();
    ///Add sprites sheets
    SSpritecache->addSpriteFramesWithFile("Resources.plist");


    /*I have only one design resolution
    * Commented due bag,when can't create SpriteWithFrameName,becouse it reference on illegal points
    * fixme
    * // Set the design resolution*/
    glview->setDesignResolutionSize(mediumResolutionSize.width, mediumResolutionSize.height, ResolutionPolicy::NO_BORDER);
   /* auto frameSize = glview->getFrameSize();
    // if the frame's height is larger than the height of medium size.
    if (frameSize.height > mediumResolutionSize.height)
    {        
        director->setContentScaleFactor(MIN(largeResolutionSize.height/designResolutionSize.height, largeResolutionSize.width/designResolutionSize.width));
    }
    // if the frame's height is larger than the height of small size.
    else if (frameSize.height > smallResolutionSize.height)
    {        
        director->setContentScaleFactor(MIN(mediumResolutionSize.height/designResolutionSize.height, mediumResolutionSize.width/designResolutionSize.width));
    }
    // if the frame's height is smaller than the height of medium size.
    else
    {        
        director->setContentScaleFactor(MIN(smallResolutionSize.height/designResolutionSize.height, smallResolutionSize.width/designResolutionSize.width));
    }*/

    register_all_packages();

    // create a scene. it's an autorelease object
    auto scene = InventoryScene::createScene();

    // run
    director->runWithScene(scene);

    return true;
}

// This function will be called when the app is inactive. Note, when receiving a phone call it is invoked.
void AppDelegate::applicationDidEnterBackground() {
    cocos2d::Director::getInstance()->stopAnimation();

    // if you use SimpleAudioEngine, it must be paused
    // SimpleAudioEngine::getInstance()->pauseBackgroundMusic();
}

// this function will be called when the app is active again
void AppDelegate::applicationWillEnterForeground() {
    cocos2d::Director::getInstance()->startAnimation();

    // if you use SimpleAudioEngine, it must resume here
    // SimpleAudioEngine::getInstance()->resumeBackgroundMusic();
}
