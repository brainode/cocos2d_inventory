#include "PriceMenu.h"
#include "ui/CocosGUI.h"


PriceMenu::PriceMenu(){
    this->setName("PriceMenu");

    this->SpPBackground = cocos2d::Sprite::create("menubg.png");
    addChild(this->SpPBackground);

    unsigned int UIFontSize = 24;
    unsigned int UIInputFontSize = 15;
    float FScale = 0.5;

    cocos2d::Size EditBoxSize = cocos2d::Size(200, 50);

    this->EbPPriceInput = cocos2d::ui::EditBox::create(EditBoxSize, cocos2d::ui::Scale9Sprite::create(std::string("countinputfon.png")));
    this->EbPPriceInput->setPosition(cocos2d::Vec2(
        0, 0
    ));
    this->EbPPriceInput->setInputMode(cocos2d::ui::EditBox::InputMode::NUMERIC);
    this->EbPPriceInput->setFontSize(UIInputFontSize);
    this->EbPPriceInput->setPlaceholderFontSize(UIInputFontSize);
    addChild(this->EbPPriceInput);

    auto title = cocos2d::Label::createWithTTF("Type your price", "fonts/Marker Felt.ttf", UIFontSize);
    addChild(title);
    title->setPosition(0, EditBoxSize.height);

    auto BuPSellButton = cocos2d::ui::Button::create("menubutton.png", "menubutton_pressed.png");
    BuPSellButton->setTitleText("Sell");
    BuPSellButton->setName("SellButton");
    BuPSellButton->setScale(FScale);
    BuPSellButton->setTitleColor(cocos2d::Color3B::BLACK); //WTF?Doesn't work
    BuPSellButton->setTitleFontSize(UIFontSize);
    BuPSellButton->setPosition(cocos2d::Vec2(
        -BuPSellButton->getContentSize().width/2*FScale,
        -this->SpPBackground->getContentSize().height/2 + BuPSellButton->getContentSize().height/2        
    ));
    BuPSellButton->addClickEventListener([this](cocos2d::Ref* sender) {
        if (std::strlen(this->EbPPriceInput->getText()) != 0)
        {
            this->HePHero->addMoneyToPurse(std::stoi(this->EbPPriceInput->getText()));
            this->IcPInventory->deleteAllItems(this->UIFrom);
            this->hidePriceMenu();
        }else
        {
            this->HePHero->addMoneyToPurse(this->IcPInventory->Inventory[this->UIFrom].ICellCost);
            this->IcPInventory->deleteAllItems(this->UIFrom);
            this->hidePriceMenu();
        }
    });
    addChild(BuPSellButton);

    auto BuPCancelButton = cocos2d::ui::Button::create("menubutton.png", "menubutton_pressed.png");
    BuPCancelButton->setTitleText("Cancel");
    BuPSellButton->setName("CancelButton");
    BuPCancelButton->setScale(FScale);
    BuPCancelButton->setTitleColor(cocos2d::Color3B::BLACK); //Doesn't work on linux(Maybe when sprite and label debug set to 1)
    BuPCancelButton->setTitleFontSize(UIFontSize);
    BuPCancelButton->setPosition(cocos2d::Vec2(
        BuPCancelButton->getContentSize().width/2 * FScale,
        -this->SpPBackground->getContentSize().height / 2 + BuPCancelButton->getContentSize().height / 2
    ));
    BuPCancelButton->addClickEventListener([this](cocos2d::Ref* sender) {
        this->hidePriceMenu();
    });
    addChild(BuPCancelButton);


    this->addEvents();
}

PriceMenu::~PriceMenu(){
    this->removeAllChildrenWithCleanup(true);
}


void PriceMenu::hidePriceMenu(){
    this->setVisible(false);
    this->EbPPriceInput->setText("");
}

void PriceMenu::showPriceMenu(unsigned int UIFromInput, InventoryContainer* IcPInventoryInput, Hero* HePHeroInput){
    this->UIFrom = UIFromInput;
    this->IcPInventory = IcPInventoryInput;
    this->HePHero = HePHeroInput;
    auto stringValue = std::to_string(this->IcPInventory->Inventory[this->UIFrom].ICellCost);
    this->EbPPriceInput->setText(stringValue.c_str());
    this->setVisible(true);
}

void PriceMenu::addEvents(){
    auto listener = cocos2d::EventListenerMouse::create();
    listener->onMouseDown = [this](cocos2d::Event* event) {
        cocos2d::EventMouse* EM = static_cast<cocos2d::EventMouse*>(event);
        if(!bIsHit(EM))
        {
            this->hidePriceMenu();
        }
    };
    cocos2d::Director::getInstance()->getEventDispatcher()->addEventListenerWithFixedPriority(listener, 30);
}

bool PriceMenu::bIsHit(cocos2d::EventMouse* EInput) {

    cocos2d::Vec2 V2MouseLocation = EInput->getLocation();
    ///Converting mouse location to global world location(Y)
    V2MouseLocation.y = cocos2d::Director::getInstance()->getWinSize().height - V2MouseLocation.y;

    cocos2d::Rect RNodeLocal = this->SpPBackground->getBoundingBox();
    cocos2d::Vec2 V2LeftBottomWorldPoint = this->SpPBackground->getParent()->convertToWorldSpace(cocos2d::Vec2(RNodeLocal.getMinX(), RNodeLocal.getMinY()));

    ///Convert Rect to world space
    cocos2d::Rect RNodeWorldPosition = cocos2d::Rect(V2LeftBottomWorldPoint.x, V2LeftBottomWorldPoint.y, this->SpPBackground->getContentSize().width, this->SpPBackground->getContentSize().height);
    if (RNodeWorldPosition.containsPoint(V2MouseLocation)) {
        return true;
    }
    return false;
}