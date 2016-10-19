//
// Created by rusbaron on 10/6/16.
//

#include "Trash.h"


Trash::Trash(int IItemIdInput,
             bool BIsStackableInput,
             cocos2d::Sprite* SPItemSpriteInput,
             float FItemCostInput,
             int IQuestIDInput
):Item(IItemIdInput,BIsStackableInput,SPItemSpriteInput,FItemCostInput,IQuestIDInput){
	this->EItemType = ItemType::TrashType;
}

Trash::~Trash(){}