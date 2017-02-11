func checkDuplication(_ i: Item) -> Item {
  var item: Item? = i
  while item != nil {
    var prev: Item? = item
    var item2 = item!.next()
    while item2 != nil {
      if item!.isEqual(item2!) {
        let _ = prev!.setNext(item2!.next())
      }
      prev = item2
      item2 = item2!.next()
    }
    item = item!.next()
  }
  return i
}

func dumpList(_ i: Item?)
{
  print("dumpList-----")
  var item = i
  repeat {
    item?.dump()
    item = item?.next()
  } while item != nil
  print("-------------")
}
