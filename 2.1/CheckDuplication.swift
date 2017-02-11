func checkDuplication(_ i: Item) -> Item {
  var item: Item? = i
  while item != nil {
    var prev: Item? = item
    var item2 = item!.next()
    while item2 != nil {
      if item!.isEqual(item2!) {
        let n: Item? = item2!.next()
        let _ = prev!.setNext(n)
        item2 = n
      } else {
        prev = item2
        item2 = item2!.next()
      }
    }
    item = item!.next()
  }
  return i
}
