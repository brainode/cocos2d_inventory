#Inventory Task

This is implementation of test task.

![Screenshot of inventory](http://i.imgur.com/bYeNNBL.png)

###Iventory task
1. Inventory properties
  * Has 16 cells
  * Each cell can contain one type of item
  * Cells can contain many stackable item
  * Cells can contain only 1 item if it not stackable
  * Each item has price for 1 unit
  * Items can be separated on several types:consumable,equipment,trash
  * Each item can be quest item, not depends on type
  * Using consumable item decrease counts on 1
  * Using equipment item wears it on a hero
  * Trash items can't be used
  * Inventory can't contain 2 equal,quest and not stackable items.
2. Implements actions
  * Adding item
  * Deleting item
    * Specify cell 
    * Specify type and quantity
    * Specify cell and quantity
  * Move item from one cell to another
  * Sort inventory
    * By cell cost
    * By type: equipment,consumable,quest,trash
  * Get list of actions for item
    * Use (not trash)
    * Sell (not quest)
    * Drop (not quest)


##Release items
* Health potion - consumable
![Health potion](http://i.imgur.com/Z3aJYAb.png)
* Speed potion - consumable
![Speed potion](http://i.imgur.com/z2Z19w1.png)
* Sword - equipment
![Sword](http://i.imgur.com/IpHz966.png)
* Horn and Hoovies - trash
![Horn and Hoovies](http://i.imgur.com/A9T6liV.png)
* Key - quest trash
![Key](http://i.imgur.com/NDhIzAA.png)
* Torch - quest equipment
![Torch](http://i.imgur.com/FMIUIAA.png)