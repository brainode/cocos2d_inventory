//
// Created by rusbaron on 10/6/16.
//

#include "Trash.h"


Trash::Trash(ExactItem EInputItemType,
             bool BIsStackableInput,
             cocos2d::Sprite* SPItemSpriteInput,
             float FItemCostInput,
             int IQuestIDInput
):Item(EInputItemType,BIsStackableInput,SPItemSpriteInput,FItemCostInput,IQuestIDInput){

}

Trash::~Trash(){}