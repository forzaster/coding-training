//let items: [Item] = [Item(5), Item(2), Item(1), Item(3), Item(2), Item(8)]
var item : Item? = Item.loadFromStdIn()
if (item != nil) {
  var ret: Item? = checkDuplication(item!)
  Item.dumpList(ret)
}
