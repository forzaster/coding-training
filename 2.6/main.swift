func searchSame(_ item: Item) -> Item? {
  var next = item.next()
  while next != nil {
    if item.isEqual(next!) {
      return next
    }
    next = next!.next()
  }
  return next
}

let list = Item.loadFromStdIn()
var item: Item? = list
var ret: Item? = nil
while item != nil {
  ret = searchSame(item!)
  if ret != nil {
    break;
  }
  item = item!.next()
}

if ret != nil {
  print(String(ret!.getValue()))
} else {
  print("Not found")
}
