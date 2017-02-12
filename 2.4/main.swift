func addToHead(head: Item?, item: Item) -> Item {
  let _ = item.setNext(head)
  return item
}

func addToTail(tail: Item?, item: Item) -> Item {
  if tail != nil {
    let _ = tail!.setNext(item)
  }
  let _ = item.setNext(nil)
  return item
}

let items = Item.loadFromStdIn()
print("Input x>", terminator:"")
if let inStr = readLine() {
  if let idx = Int(inStr) {
    var small: Item? = nil
    var large: Item? = nil
    var item: Item? = items
    var first: Item? = nil
    while item != nil {
      var next = item!.next()
      if item!.getValue() >= idx {
        large = addToHead(head: large, item: item!)
      } else {
        small = addToTail(tail: small, item: item!)
        if first == nil {
          first = small
        }
      }
      item = next
    }
    if small != nil {
      let _ = small!.setNext(large)
    }
    if first == nil {
      first = large
    }

    Item.dumpList(first)
  }
}
